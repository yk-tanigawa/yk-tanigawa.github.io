---
title: 'Using LaTeX equations in Adobe Illustrator'
date: 2024-06-04
permalink: /posts/2024/06/latex-in-illustrator
tags:
  - tips
---

Adobe Illustrator and similar vector graphics software allows you to prepare figures for scientific publication. As a computational researcher working on statistical methods, you may want to use LaTeX equations in figures.

## Exporting `eps` files from LaTeX

You can export an `.eps` file with LaTeX.

```{bash}
$ latex eqs.tex && dvips -Ppdf -E eqs -o eqs.eps
```

## LaTeX fonts are missing in your MacOS

When you open a `.eps` file with Adobe Illustrator, you may see an error message saying the fonts in the equations are not available.

![Adobe Illustrator may say the LaTeX fonts are missing](/files/2024/20240604_Illustrator_missing_fonts.png)

## You may install missing fonts with `fontforge`

On mac, we may able to install fonts using `texlive` and `fontforge`.

First, you may want to install `fontforge` (and `texlive` if you don't have one already) using `homebrew`.

```{bash}
$ brew install fontforge
```

Second, you may write a wrapper script, [`convert_install_font.sh`](https://gist.github.com/yk-tanigawa/4f7236db3f6ba8779c3e4023eb8d3dfc), for `fontforge`. You may find [an example wrapper script here](https://gist.github.com/yk-tanigawa/4f7236db3f6ba8779c3e4023eb8d3dfc).

Third, you may install missing fonts using the wrapper script.

```{bash}
$ bash convert_install_font.sh cmbx12
```

If you have multiple fonts missing, you may want to run the wrapper script until you install all the missing fonts.

```{bash}
$ for font in cmsy10 cmmib7 cmr5 cmmi7 cmmib10 cmr7 cmmi10 cmex10 cmr10 cmbx12 ; do bash convert_install_font.sh $font ; done
```
