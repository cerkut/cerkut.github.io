---
title: "Differentiable All-pass Filters for Phase Response Estimation and Automatic Signal Alignment"
collection: publications
permalink: /publication/2023-DAFx-Allpass
excerpt: '*learnable allpass filters optimized via an overparameterized BiasNet network without input audio.* ...'
date: 2023-06-01
venue: 'Proc DAFx 2023, Copenhagen, Denmark'
paperurl: 'https://arxiv.org/abs/2306.00860'
citation: 'Anders Bargum, Stefania Serafin, Cumhur Erkut, and Julian D Parker. 2023. “Differentiable All-pass Filters for Phase Response Estimation and Automatic Signal Alignment.” in Proc DAFx 2023, Copenhagen, Denmark'
---
- [https://arxiv.org/abs/2306.00860](https://arxiv.org/abs/2306.00860 "IEEEExplore") (preprint)
- Sound Examples: [https://abargum.github.io/](https://abargum.github.io/ "🔊")

Virtual analog (VA) audio effects are increasingly based on neural networks and deep learning frameworks. Due to the underlying black-box methodology, a successful model will learn to approximate the data it is presented, including potential errors such as latency and audio dropouts as well as non-linear characteristics and frequency-dependent phase shifts produced by the hardware. The latter is of particular interest as the learned phase-response might cause unwanted audible artifacts when the effect is used for creative processing techniques such as dry-wet mixing or parallel compression.

To overcome these artifacts we propose differentiable signal processing tools and deep optimization structures for automatically tuning all-pass filters to predict the phase response of different VA simulations, and align processed signals that are out of phase. The approaches are assessed using objective metrics while listening tests evaluate their ability to enhance the quality of parallel path processing techniques. Ultimately, an over-parameterized, **[BiasNet-based](https://arxiv.org/abs/2110.02077)**, all-pass model is proposed for the optimization problem under consideration, resulting in models that can estimate all-pass filter coefficients to align a dry signal with its affected, wet, equivalent.
