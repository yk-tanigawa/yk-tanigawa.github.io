---
title: "Multi-trait modeling in polygenic scores"
excerpt: "I was invited to give a presentation at Journal Club meeting at Debora Marks's lab"
excerpt_image: ''
collection: talks
type: "Talk"
permalink: /talks/2022-01-28-jclub-Marks-lab
venue: "Journal club, Debora Marks lab, Harvard Medical School"
date: 2022-01-28
location: "Zoom"
paperurl: ''
citation: ''
tags:
---

I was invited to give a presentation at [Journal Club meeting at Debora Marks's lab](https://www.deboramarkslab.com/journal-club).

## Title

Multi-trait modeling in polygenic scores

## Slides

<iframe src="//www.slideshare.net/slideshow/embed_code/key/jnCfAXrRhxekDj" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen></iframe> <div style="margin-bottom:5px">
<a href="//www.slideshare.net/YosukeTanigawa/20220128-multitrait-modeling-in-polygenic-scores-journal-club-talk-at-debora-marks-lab" title="2022.01.28 Multi-trait modeling in polygenic scores, journal club talk at Debora Marks lab" target="_blank">2022.01.28 Multi-trait modeling in polygenic scores, journal club talk at Debora Marks lab</a>
</div>

## Abstract

Polygenic risk score (PRS), an estimate of an individual’s genetic liability to a trait or disease, has been proposed for disease risk prediction with potential clinical relevance for some traits. While there are still challenges that need to be addressed for the clinical application of PRS models, there have been advancements in the PRS modeling techniques as well as the predictive performance of the models. Here, I will present our recent work on the multi-trait analyses in polygenic score models. First, we developed Batch Screening Iterative Lasso (BASIL) and used its R implementation in the snpnet package to fit PRS models via penalized regression on individual-level data[1]. Compared with other PRS approaches with Bayesian regression, we find BASIL/snpnet selects much fewer active variants in PRS while maintaining comparative predictive performance. We applied snpnet across 35 blood and urine biomarker traits in UK Biobank[2]. We further demonstrated that ‘multi-PRS’ models, which linearly combine disease PRS models with that of biomarkers, can improve the predictive performance. To enhance the interpretability of PRS models, we consider the classification of genetic variants based on their phenome-wide association profile. By extending our previous work on the decomposition of genetic associations (DeGAs)[3], we developed DeGAs-PRS, where we represent PRS of a trait as a mixture of PRSs computed for latent trait-related components of genetic associations[4]. Lastly, combining multi-PRS and DeGAs-PRS, we developed sparse reduced-rank regression (SRRR), a multivariate multi-response sparse regression model, and implemented it as R multiSnpnet package[5]. I will conclude the presentation with a discussion on the lessons we learned from the multi-trait PRS models and the future directions.

## References

- [1] Qian, Tanigawa, et al. PLoS Gen. (2020). (PMID: 33095761)
- [2] Sinnott-Armstrong*, Tanigawa*, et al. Nat Gen. (2021). (PMID: 33462484)
- [3] Tanigawa, Li, et al. Nat Comm (2019). (PMID: 31492854)
- [4] Aguirre, Tanigawa, et al. Eur J Hum Genet. (2021). (PMID: 33558700)
- [5] Qian, Tanigawa, et al. Ann Appl Stat. (in press). (doi: 10.1101/2020.05.30.125252)
