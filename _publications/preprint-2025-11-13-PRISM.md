---
title: "[Preprint] PRISM: ancestry-aware integration of tissue-specific genomic annotations enhances the transferability of polygenic scores."
collection: publications
permalink: /publication/preprint-2025-11-13-PRISM
excerpt_image: ''
excerpt: "In this study, led by Xiaohe (Lucy) Tian, we showed that ancestry-aware integration of tissue-specific genomic annotations enhances the transferability of polygenic scores (PGS)."
date: 2025-11-13
venue: 'bioRxiv'
paperurl: 'https://doi.org/10.1101/2025.11.13.688144'
citation: 'PRISM: ancestry-aware integration of tissue-specific genomic annotations enhances the transferability of polygenic scores, X. Tian, T. Fabiha, W. F. Li, K. K. Dey, M. Kellis, Y. Tanigawa. bioRxiv, 2025.11.13.688144 (2025).'
---
<!-- ispublishedpreprint: "True" -->

In this study, led by Xiaohe (Lucy) Tian, we showed that ancestry-aware integration of tissue-specific genomic annotations enhances the transferability of polygenic scores (PGS).

## Abstract

The limited transferability of polygenic scores (PGS) across populations constrains their clinical utility and risks exacerbating health disparities, given challenges in multi-ancestry training, fine-mapping, and variant prioritization using genomic annotations, particularly when biologically relevant reference resources are sparse or unavailable for the target population. Here, we introduce PRISM, a transfer learning approach that jointly addresses these challenges to enhance PGS transferability. Applying PRISM to 7352 fine-mapped variants, 414 ENCODE annotations, and 406,659 individuals from the UK Biobank, we demonstrate that ancestry-aware integration of tissue-specific annotations yields the largest gains in predictive performance for African ancestry, with an average improvement of 13.10% (p=1.6×10−5) over annotation-agnostic multi-ancestry PGS. Notably, the best-performing model uses 102-fold fewer annotations than non-specific models, with contributions from broad categories of annotations. Overall, PRISM complements ongoing data diversification efforts by providing an immediately applicable strategy based on the integration of biologically aligned, best-available resources to address genomic health equity.

![PRISM: ancestry-aware integration of tissue-specific genomic annotations enhances the transferability of polygenic scores](/files/2025/TianTanigawa_PRISM_01.jpg)

## Highlights

Accurate genetic prediction of complex traits has the potential to substantially reduce the disease burden, but the limited transferability of polygenic score (PGS) across genetic ancestry groups remains a major challenge.

![Polygenic score (PGS) aggregates the genetic effects across many variants into one score](/files/2025/TianTanigawa_PRISM_02.jpg)

Here we propose to integrate three major approaches to address the PGS transferability. We develop PRISM and apply it to 7352 fine-mapped variants from MVP, 414 ENCODE annotations, and 406,659 individuals from the UK Biobank.

![PRISM integrates 3 major approaches to address PGS transferability](/files/2025/TianTanigawa_PRISM_03.jpg)

Using PRISM, we evaluated the effects of ancestry and tissue-specific integration of genomic annotations. We also compared our approach with existing methods and investigated which genomic annotation would be the most informative.

![Ancestry- and tissue-specific PRISM models](/files/2025/TianTanigawa_PRISM_04.jpg)

We found that tissue-matched genomic annotations (from ENCODE) are most effective for enhancing PGS transferability, even though the tissue-agnostic strategy can leverage a ~18-fold larger number of genomic annotation datasets.

![Tissue-matched training improves PGS transferability](/files/2025/TianTanigawa_PRISM_05.jpg)

Similarly, the use of genetic ancestry-specific fine-mapped variants is most effective, despite the power difference.
Our approach offers a pragmatic solution for working with data with uneven coverage across contexts.

![Biological alignment outweighs >100-fold differences in annotation data](/files/2025/TianTanigawa_PRISM_06.jpg)

Our benchmarking analysis shows PRISM benefits from three different strategies for enhancing PGS transferability.

![PRISM demonstrates outperforming and competitive predictive performance](/files/2025/TianTanigawa_PRISM_07.jpg)

We showed, through feature importance analysis, that having one reference genomic annotation is not sufficient, highlighting the advantage of systematic integration with our approach.

![No single feature alone is sufficient to enhance PGS predictive performance in PRISM](/files/2025/TianTanigawa_PRISM_08.jpg)

We confirm that the genetic variants selected from our approach are supported by various genomic annotations compared to other variants in LD.

![PRISM enables biological interpretation of selected variants](/files/2025/TianTanigawa_PRISM_09.jpg)

I am grateful to Lucy and the team for making this work possible.

![PRISM: transfer-learning for integrating biological knowledge in PGS](/files/2025/TianTanigawa_PRISM_10.jpg)

## Links

- [📜 Preprint](https://doi.org/10.1101/2025.11.13.688144)
- [📺 Presentation video](https://sites.uci.edu/scs2025/symposium-schedule/)

<a name="jp"></a>
