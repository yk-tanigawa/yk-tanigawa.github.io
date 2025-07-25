---
title: "[Preprint] Initial Review and Analysis of COVID-19 Host Genetics and Associated Phenotypes"
collection: publications
permalink: /publication/preprint-2020-03-24-covid19
excerpt:
date: 2020-03-24
venue: 'Preprints.org'
paperurl: 'https://doi.org/10.20944/preprints202003.0356.v1'
citation: 'Y. Tanigawa, M. Rivas, Initial Review and Analysis of COVID-19 Host Genetics and Associated Phenotypes (2020).'
---
<!-- ispublishedpreprint: "True" -->

As part of [the COVID-19 Host Genetics Initiative](https://covid19hg.netlify.com/), we performed the following set of analyses to better understand the genetic basis of COVID-19 susceptibility and severity.

- Polygenic prediction of blood measurements
- Global catalogue of HLA allelotype diversities
- Global frequency catalogue of ABO blood types

This preprint is a brief description of our activities. We demonstrate the relevance of our genetic resources for the analysis of the host genetics of COVID-19.

## FAQ

### Q1. How can I find p-values for each variant in PRS models

### A1. Our PRS is constructed via multivariate model

Unlike GWAS, our PRS model does not explicitly perform univariate testing, rather, we fit multivariate models.
The genetic variants with non-zero BETAs are selected using our validation dataset.
This means that each variant does not come with a p-value. Please check our preprint[1] for more details of our snpnet PRS procedure.

Another caveat is that our procedure does not contain any computation equivalent to fine-mapping. Still, one can interpret the genetic variants with non-zero BETAs (or their LD proxies) as the informative ones for polygenic prediction.

- 1. J. Qian, W. Du, Y. Tanigawa, M. Aguirre, R. Tibshirani, M. A. Rivas, T. Hastie, A Fast and Flexible Algorithm for Solving the Lasso in Large-scale and Ultrahigh-dimensional Problems. bioRxiv, 630079 (2019). https://doi.org/10.1101/630079

## Related page

Yosuke also wrote [a brief summary of this COVID-19 related research activities in Japanese](/posts/2020/04/COVID-19-hg-jp/).

この研究に関して，[日本語での簡単な紹介記事](/posts/2020/04/COVID-19-hg-jp/)を書きました。
