---
title: 'Notes on Apache Columnar format'
date: 2020-11-10
permalink: /posts/2020/11/apache-columnar
tags:
  - computing
---

There are several column-oriented data formats. To store and query large table files, we explor those modern technologies. Here, I have some snippets.

## File format conversion

### Convert csv to Apache Parquet

Here is a sample code to convert a csv file to a Apache Parquet format.

```{python}
import pandas as pd


import pyarrow
from pyarrow import csv, parquet


def csv_to_parquet(in_f, out_f, delimiter='\t', dtype=None):
    '''
    Read a csv file as a stream and save it as Apache Parquet file
    '''
    pa_reader = pyarrow.csv.open_csv(
        in_f,
        read_options = pyarrow.csv.ReadOptions(use_threads=True),
        parse_options=pyarrow.csv.ParseOptions(delimiter=delimiter),
        convert_options=pyarrow.csv.ConvertOptions(column_types=dtype)
    )
    # when the header line in the input line starts with '#',
    # we can specify the following read_options:
    #   pyarrow.csv.ReadOptions(
    #       use_threads=True,
    #       skip_rows=1, # here we provide `skip_rows` and `column_names` to get rid of '#'
    #       column_names=[x.replace('#', '') for x in pd.read_csv(in_f, sep='\t', nrows=0).columns]
    #   )

    pa_writer = pyarrow.parquet.ParquetWriter(
        out_f, pa_reader.schema, compression='zstd'
    )

    nrow=0
    for batch in pa_reader:
        batch_df=batch.to_pandas()
        nrow += batch_df.shape[0]
        pa_writer.write_table(pyarrow.Table.from_pandas(batch_df))
        # in principle, it should be possible to directly save it without converting to/from pandas df
        # however, when I try
        #   pa_writer.write_table(pyarrow.Table.from_batches(batch))
        # I got and error:
        #   TypeError: Cannot convert pyarrow.lib.StringArray to pyarrow.lib.RecordBatch
    return nrow

csv_to_parquet(
    in_f, out_f, delimiter='\t',
    dtype=dtype = {
        '#CHROM'           : 'str',
        'POS'              : 'int64',
        'Variant_ID'       : 'str',
    }
)
```

It is possible to read batch one-by-one with `read_next_batch()` function (`pa_reader.read_next_batch().to_pandas()` etc).

## Convert csv to Apache Feather (v2)

```{python}
import pandas as pd


import pyarrow
from pyarrow import csv, parquet


def csv_to_feather(in_f, out_f, delimiter='\t', dtype=None):
    '''
    Read a csv file as a stream and save it as Apache Feather file
    It seems like the stream writer has not implemented yet
    '''
    pa_reader = pyarrow.csv.open_csv(
        in_f,
        read_options = pyarrow.csv.ReadOptions(use_threads=True),
        parse_options=pyarrow.csv.ParseOptions(delimiter=delimiter),
        convert_options=pyarrow.csv.ConvertOptions(column_types=dtype)
    )
    df = pa_reader.read_pandas()
#     df = pd.read_csv(
#         in_f, sep=delimiter, dtype=dtype, engine='c'
# #     ).rename(
# #         columns = {'#CHROM' : 'CHROM'}
#     )
    pyarrow.feather.write_feather(
        df,
        out_f,
        compression='zstd'
    )
    return df.shape[0]

csv_to_feather(
    in_f, out_f, delimiter='\t',
    dtype=dtype = {
        '#CHROM'           : 'str',
        'POS'              : 'int64',
        'Variant_ID'       : 'str',
    }
)
```

## Apache Drill to read Apache Parquet file(s)

```{bash}
drill-embedded
Apache Drill 1.17.0
"Got Drill?"
apache drill> SELECT * FROM dfs.`/path/to/parquet` LIMIT 10 ;
```

## `pyarrow` to read files

### Parquet file

```{python}
import pyarrow
from pyarrow import parquet


in_f='/path/to/your/file.parquet'

ds = pyarrow.parquet.ParquetFile(in_f)

ds.num_row_groups

df = ds.read_row_group(1).to_pandas()

df = ds.read().to_pandas()
```

### Feather file

```{python}
import pyarrow
from pyarrow import feather


in_f='/path/to/your/file.feather'

df = pyarrow.feather.read_feather(in_f)
```

## Reference

- [Drill in 10 Minutes](https://drill.apache.org/docs/drill-in-10-minutes/)
  - Quick tutorial on Apache Drill
- [Apache Arrow - Frequently Asked Questions](https://arrow.apache.org/faq/)
- [Working with Arrow Datasets and dplyr](https://arrow.apache.org/docs/r/articles/dataset.html)
  - Example usage of `R` `arrow` package to read & process Apache packet dataset
- [the documentation of the Python API of Apache Arrow.](https://arrow.apache.org/docs/python/index.html)
  - [Pandas integration](https://arrow.apache.org/docs/python/pandas.html)
  - [API Reference >> Tabular File Formats](https://arrow.apache.org/docs/python/api/formats.html)
  - [Streaming, Serialization, and IPC](https://arrow.apache.org/docs/python/ipc.html#)
- [Apache Parquet](https://parquet.apache.org/)
- ["Quickly reading very large tables as dataframes", stackoverflow](https://stackoverflow.com/questions/1727772/quickly-reading-very-large-tables-as-dataframes)
