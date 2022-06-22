---
title: 'Working with very small values in R'
date: 2020-07-02
permalink: /posts/2020/07/small-values-in-R/
tags:
  - computing
---

When you're working on extremely small floating numbers in R (such as when you have strong p-values), there are a few options.

1. [Rmpfr package](https://cran.r-project.org/web/packages/Rmpfr/index.html)
2. Parse the string of values in scientific notation. Let's say you have small values in `P` column in a dataframe `df` and those numbers are represented as `1e-400` etc. Then, you can run something like this to parse and compute the `log10(P)` value.

```{R}
df %>%
separate(
    p_value, c("P_base", "P_exp"),
    sep = "e", remove = F, fill = "right"
) %>%
replace_na(list(P_exp = "0")) %>%
mutate(log10P = log10(as.numeric(P_base)) + as.numeric(P_exp))
```
