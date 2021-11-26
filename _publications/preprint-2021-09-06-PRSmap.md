---
title: "Significant Sparse Polygenic Risk Scores across 813 traits in UK Biobank"
collection: publications
permalink: /publication/preprint-2021-09-06-PRSmap
excerpt: 'We performed a systematic assessment of the predictive performance of PRS models across >1,500 traits in UK Biobank and report 813 PRS models with significant predictive performance.'
date: 2021-09-06
venue: 'medRxiv'
excerpt_image: '/files/2021/PRSmap_Fig4.png'
paperurl: 'https://doi.org/10.1101/2021.09.02.21262942'
citation: 'Y. Tanigawa, J. Qian, G. R. Venkataraman, J. M. Justesen, R. Li, R. Tibshirani, T. Hastie, M. A. Rivas, Significant Sparse Polygenic Risk Scores across 813 traits in UK Biobank. medRxiv 2021.09.02.21262942 (2021).'
---

Using the dense phenotypic information in UK Biobank, we systematically characterized polygenic risk score (or PRS) across more than 1,500 traits. We evaluated the predictive performance of the models and compared that with the baseline models that only consider covariates, which are age, sex, and top 10 genotype principal components. We then assessed the statistical significance of the PRS in improving the predictive performance. When we look at the incremental R2 or incremental AUC, we find 813 traits have significant incremental predictive performance, after accounting for multiple hypothesis testing.

![PRSmap Fig. 1](/files/2021/PRSmap_Fig1_v4.jpg)

Across 813 traits with significant PRS, we asked whether the number of genetic variants in the sparse PRS models is correlated with the incremental predictive performance. We found those two quantities are significantly correlated only in the quantitative traits but not in binary traits, including disease outcomes.

![PRSmap Fig. 5](/files/2021/PRSmap_Fig5.jpg)

We assessed the trans-ethnic predictive performance using the additional test sets of different ancestry groups in UK Biobank.

![PRSmap Fig. 6](/files/2021/PRSmap_Fig6.jpg)

If you're interested, please look at [our PRS map page at the Global Biobank Engine](https://biobankengine.stanford.edu/prs). If you're interested in the BASIL algorithm and the R `snpnet` package that we used in this application, please also look at [our paper (J. Qian, Tanigawa, et al, 2020)](/publication/2020-10-23-snpnet)

Note: (2021.11.26) we have updated the manuscript based on the feedback from the colleagues. The major changes in this revision are the following six points.

1. We reported the significant polygenic risk score (PRS) models for 428 traits in the original manuscript. We realized that there was a critical mistake when evaluating the significance of the PRS models (specifically, the coefficients of covariates were mistakenly estimated on the test set individuals, not on the score development set). We fixed this issue and now present 813 significant PRS models in the latest version of the manuscript.
2. Following the feedback from colleagues, we included the types of genotyping array in the covariates when evaluating the predictive performance of PRS models. We updated the predictive performance metrics.
3. We added Table 1 and Supplementary Table 3 and described the effects of prioritization of medically relevant alleles.
4. We added a new figure (Fig 2) comparing the estimated SNP-based heritability vs. the predictive performance of PRS models.
5. We deposit the significant PRS models on the [PGS catalog](https://www.pgscatalog.org/). We list the score IDs in Supplementary Table 1.
6. We improved the clarity of the methods section and added a few additional analyses (Supplementary Figure 1 - Supplementary Figure 3).


## Data and Code availability

- The sparse PRS model weights generated from this study are available on the Global Biobank Engine (https://biobankengine.stanford.edu/prs).
- The significant PRS models are also available at the PGS catalog (https://www.pgscatalog.org/publication/PGP000244/ and https://www.pgscatalog.org/publication/PGP000128/, score IDs are listed in S1 Table).
- The BASIL algorithm implemented in the R snpnet package was used in the PRS analysis, which is available at https://github.com/rivas-lab/snpnet.
- The analyses presented in this study were based on data accessed through the UK Biobank: https://www.ukbiobank.ac.uk.
