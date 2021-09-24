---
title: "Significant Sparse Polygenic Risk Scores across 428 traits in UK Biobank"
collection: publications
permalink: /publication/preprint-2021-09-06-PRSmap
excerpt: 'We performed a systematic assessment of the predictive performance of PRS models across >1,600 traits in UK Biobank and report 428 PRS models with significant predictive performance.'
date: 2021-09-06
venue: 'medRxiv'
excerpt_image: '/files/2021/PRSmap_Fig4.png'
paperurl: 'https://doi.org/10.1101/2021.09.02.21262942'
fulltext: 'https://doi.org/10.1101/2021.09.02.21262942'
citation: 'Y. Tanigawa, J. Qian, G. R. Venkataraman, J. M. Justesen, R. Li, R. Tibshirani, T. Hastie, M. A. Rivas, Significant Sparse Polygenic Risk Scores across 428 traits in UK Biobank. medRxiv 2021.09.02.21262942 (2021).'
---

Using the dense phenotypic information in UK Biobank, we systematically characterized polygenic risk score (or PRS) across more than 1,600 traits. We evaluated the predictive performance of the models and compared that with the baseline models that only consider covariates, which are age, sex, and top 10 genotype principal components. We then assessed the statistical significance of the PRS in improving the predictive performance. When we look at the incremental R2 or incremental AUC, we find 428 traits have significant incremental predictive performance, after accounting for multiple hypothesis testing.

![PRSmap Fig. 1](/files/2021/PRSmap_Fig1_v3.png)

Across 428 traits with significant PRS, we asked whether the number of genetic variants in the sparse PRS models is correlated with the incremental predictive performance. We found those two quantities are significantly correlated only in the quantitative traits but not in binary traits, including disease outcomes.

![PRSmap Fig. 4](/files/2021/PRSmap_Fig4.png)

We assessed the trans-ethnic predictive performance using the additional test sets of different ancestry groups in UK Biobank.

![PRSmap Fig. 5](/files/2021/PRSmap_Fig5.png)

If you're interested, please look at [our PRS map page at the Global Biobank Engine](https://biobankengine.stanford.edu/prs). If you're interested in the BASIL algorithm and the R `snpnet` package that we used in this application, please also look at [our paper (J. Qian, Tanigawa, et al, 2020)](/publication/2020-10-23-snpnet)
