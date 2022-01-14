---
title: "Genetics of 35 blood and urine biomarkers in the UK Biobank"
collection: publications
permalink: /publication/2021-01-18-biomarkers
highlight: true
excerpt: "We characterized the genetics of 35 biomarkers in UK Biobank. We performed the association and fine-mapping analysis to prioritize the causal variants, constructed the polygenic risk score (PRS) models, and evaluated their medical relevance with causal inference and PRS-PheWAS. We demonstrate a new approach, called multi-PRS, to improve PRS by combining PRSs across traits."
excerpt_image: '/files/2021/Biomarkers-Fig2.jpg'
date: 2021-01-18
venue: 'Nature Genetics'
paperurl: 'https://doi.org/10.1038/s41588-020-00757-z'
fulltext: 'https://rdcu.be/cdMmM'
citation: 'N. Sinnott-Armstrong*, Y. Tanigawa*, D. Amar, N. J. Mars, C. Benner, M. Aguirre, G. R. Venkataraman, M. Wainberg, H. M. Ollila, T. Kiiskinen, A. S. Havulinna, J. P. Pirruccello, J. Qian, A. Shcherbina, FinnGen, F. Rodriguez, T. L. Assimes, V. Agarwala, R. Tibshirani, T. Hastie, S. Ripatti, J. K. Pritchard, M. J. Daly, M. A. Rivas, Genetics of 35 blood and urine biomarkers in the UK Biobank. Nat Gen. 53(2), 185-194 (2021).'
---
<!-- ispublishedpreprint: "True" -->

## Highlights

![biomarkers highlights 1](/files/2021/Biomarkers-Fig1.jpg)

Clinical lab tests are often used in clinical practice to guide diagnoses and treatment plans. Thanks to UK Biobank, we have a fortunate to analyze the genetic basis of those biomarkers and investigate their influence on diseases.

![biomarkers highlights 2](/files/2021/Biomarkers-Fig2.jpg)

Through UK Biobank-wide GWAS meta-analysis, we report > 10,000 GWAS associations (p < 5e-9) across 35 biomarkers and >5,700 loci. This includes > 450 large-effect (>0.1 s.d.) associations on protein-altering variants, which we highlight in a Fuji plot (gene symbols).

![biomarkers highlights 3](/files/2021/Biomarkers-Fig3.jpg)

With FINEMAP, we identified >27,000 distinct signals in >5,000 regions across the 35 traits, of which >2,500 signals were fine-mapped to a single variant. We also trained sparse polygenic risk score (PRS) models with Lasso L1- penalized regression using the snpnet package.

![biomarkers highlights 4](/files/2021/Biomarkers-Fig4.jpg)

To investigate the influence of the identified genetic basis on diseases, we performed single-variant PheWAS, PRS-PheWAS, and causal inference. Motivated by those results, we developed multi-PRS by combining a single-trait PRS model of disease with that of 35 biomarkers.

![biomarkers highlights 5](/files/2021/Biomarkers-Fig5.jpg)

When we compare the predictive performance, multi-PRS showed improvements over single-trait snpnet PRS across many diseases, which we also replicated in FinnGen, suggesting both large case numbers and multi-trait modeling might complementary contribute to improving the power.

This work was led by Nasa Sinnott-Armstrong, myself, and Dr. Manuel A. Rivas, with many contributions from colleagues.
We thank UK Biobank, FinnGen, their participants, amazing collaborators, and colleagues, as well as funding.

## Resources

- [Supplementary Data (500GB+)](/resources/2020-biomarkers-data) is available at [NIH's archive instance of figshare](https://doi.org/10.35092/yhjc.c.5043872.v1)
- [Analysis and visualization scripts](/resources/2020-biomarkers-code) used in this manuscript is available at [GitHub repo](https://github.com/rivas-lab/biomarkers/)
- [Full text](https://rdcu.be/cdMmM)


## Coverage

- [Research highlights in Nature Reviews Nephrology](https://doi.org/10.1038/s41581-021-00400-y)
  - Allison, S.J. Biomarker genetics. Nat Rev Nephrol (2021). [https://doi.org/10.1038/s41581-021-00400-y](https://doi.org/10.1038/s41581-021-00400-y)
- [Genome web news article](https://www.genomeweb.com/microarrays-multiplexing/blood-urine-biomarker-study-leads-linked-loci-disease-related-risk-scores)
