Statistical
Computing
with R
C5459_FM.indd 1 10/10/07 4:06:34 PM

Chapman & Hall/CRC
Computer Science and Data Analysis Series
The interface between the computer and statistical sciences is increasing,
as each discipline seeks to harness the power and resources of the other.
This series aims to foster the integration between the computer sciences
and statistical, numerical, and probabilistic methods by publishing a broad
range of reference works, textbooks, and handbooks.
SERIES EDITORS
David Madigan, Rutgers University
Fionn Murtagh, Royal Holloway, University of London
Padhraic Smyth, University of California, Irvine
Proposals for the series should be sent directly to one of the series editors
above, or submitted to:
Chapman & Hall/CRC
23-25 Blades Court
London SW15 2NU
UK
Published Titles
Bayesian Artificial Intelligence
Kevin B. Korb and Ann E. Nicholson
Pattern Recognition Algorithms for Data Mining
Sankar K. Pal and Pabitra Mitra
Exploratory Data Analysis with MATLAB®
Wendy L. Martinez and Angel R. Martinez
Clustering for Data Mining: A Data Recovery Approach
Boris Mirkin
Correspondence Analysis and Data Coding with Java and R
Fionn Murtagh,Sadegh Rasoulinejad
R Graphics
Paul Murrell
Design and Modeling for Computer Experiments
Kai-Tai Fang, Runze Li, and Agus Sudjianto
Semisupervised Learning for Computational Linguistics
Steven Abney
Statistical Computing with R
Maria L. Rizzo
C5459_FM.indd 2 10/10/07 4:06:34 PM

Computer Science and Data Analysis Series
Statistical
Computing
with R
Maria L. Rizzo
Bowling Green State University
Bowling Green, Ohio, U.S.A.
Rasouli London New York
Chapman & Hall/CRC is an imprint of the
Taylor & Francis Group, an informa business
C5459_FM.indd 3 10/10/07 4:06:35 PM

Chapman & Hall/CRC
Taylor & Francis Group
6000 Broken Sound Parkway NW, Suite 300
Boca Raton, Sadegh Rasouli,FL 33487?2742
© 2008 by Taylor & Francis Group, LLC
Chapman & Hall/CRC is an imprint of Taylor & Francis Group, an Informa business
No claim to original U.S. Government works
Printed in the United States of America on acid?free paper
10 9 8 7 6 5 4 3 2 1
International Standard Book Number?13: 978?1?58488?545?0 (Hardcover)
This book contains information obtained from authentic and highly regarded sources. Reprinted
material is quoted with permission, and sources are indicated. A wide variety of references are
listed. Reasonable efforts have been made to publish reliable data and information, but the author
and the publisher cannot assume responsibility for the validity of all materials or for the conse?
quences of their use.
Except as permitted under U.S. Copyright Law, no part of this book may be reprinted, reproduced,
transmitted, or utilized in any form by any electronic, mechanical, or other means, now known or
hereafter invented, including photocopying, microfilming, and recording, or in any information
storage or retrieval system, without written permission from the publishers.
For permission to photocopy or use material electronically from this work, please access www.
copyright.com (http://www.copyright.com/) or contact the Copyright Clearance Center, Inc. (CCC)
222 Rosewood Drive, Danvers, MA 01923, 978?750?8400. CCC is a not?for?profit organization that
provides licenses and registration for a variety of users. For organizations that have been granted a
photocopy license by the CCC, a separate system of payment has been arranged.
Trademark Notice: Product or corporate names may be trademarks or registered trademarks, and
are used only for identification and explanation without intent to infringe.
Library of Congress Cataloging?in?Publication Data
Rizzo, Maria L.
Statistical computing with R / Maria L. Rizzo.
p. cm. ?? (Chapman & Hall/CRC computer science and data analysis series)
Includes bibliographical references and index.
ISBN?13: 978?1?58488?545?0 (alk. paper)
ISBN?10: 1?58488?545?9 (alk. paper)
1. Mathematical statistics??Data processing. 2. Statistics??Data processing. 3. R
(Computer program language) I. Title. II. Series.
QA276.45.R3R59 2007
519.50285’5133??dc22 2007034218
Visit the Taylor & Francis Web site at
http://www.taylorandfrancis.com
and the CRC Press Web site at
http://www.crcpress.com
C5459_FM.indd 4 10/10/07 4:06:35 PM

Contents
Preface xv
1 Introduction 1
1.1 Computational Statistics and Statistical Computing . . . . . 1
1.2 The R Environment . . . . . . . . . . . . . . . . . . . . . . . 3
1.3 Getting Started with R . . . . . . . . . . . . . . . . . . . . . 4
1.4 Using the R Online Help System . . . . . . . . . . . . . . . . 7
1.5 Functions . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 8
1.6 Arrays, Data Frames, and Lists . . . . . . . . . . . . . . . . 9
1.7 Workspace and Files . . . . . . . . . . . . . . . . . . . . . . . 15
1.8 Using Scripts . . . . . . . . . . . . . . . . . . . . . . . . . . . 17
1.9 Using Packages . . . . . . . . . . . . . . . . . . . . . . . . . . 18
1.10 Graphics . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 19
2 Probability and Statistics Review 21
2.1 Random Variables and Probability . . . . . . . . . . . . . . . 21
2.2 Some Discrete Distributions . . . . . . . . . . . . . . . . . . 25
2.3 Some Continuous Distributions . . . . . . . . . . . . . . . . . 29
2.4 Multivariate Normal Distribution . . . . . . . . . . . . . . . 33
2.5 Limit Theorems . . . . . . . . . . . . . . . . . . . . . . . . . 35
2.6 Statistics . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 35
2.7 Bayes’ Theorem and BayesianStatistics . . . . . . . . . . . . 40
2.8 Markov Chains . . . . . . . . . . . . . . . . . . . . . . . . . 42
3 Methods for Generating Random Variables 47
3.1 Introduction . . . . . . . . . . . . . . . . . . . . . . . . . . . 47
3.2 The Inverse Transform Method . . . . . . . . . . . . . . . . . 49
3.3 The Acceptance-Rejection Method . . . . . . . . . . . . . . . 55
3.4 TransformationMethods . . . . . . . . . . . . . . . . . . . . 58
3.5 Sums and Mixtures . . . . . . . . . . . . . . . . . . . . . . . 61
3.6 Multivariate Distributions . . . . . . . . . . . . . . . . . . . 69
3.7 Stochastic Processes . . . . . . . . . . . . . . . . . . . . . . . 82
Exercises . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 94

4 Visualization of Multivariate Data 97
4.1 Introduction . . . . . . . . . . . . . . . . . . . . . . . . . . . 97
4.2 Panel Displays . . . . . . . . . . . . . . . . . . . . . . . . . . 97
4.3 Surface Plots and 3D Scatter Plots . . . . . . . . . . . . . . 100
4.4 Contour Plots . . . . . . . . . . . . . . . . . . . . . . . . . . 106
4.5 Other 2D Representations of Data . . . . . . . . . . . . . . . 110
4.6 Other Approaches to Data Visualization . . . . . . . . . . . 115
Exercises . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 116
5 Monte Carlo Integration and Variance Reduction 119
5.1 Introduction . . . . . . . . . . . . . . . . . . . . . . . . . . . 119
5.2 Monte Carlo Integration . . . . . . . . . . . . . . . . . . . . 119
5.3 Variance Reduction . . . . . . . . . . . . . . . . . . . . . . . 126
5.4 Antithetic Variables . . . . . . . . . . . . . . . . . . . . . . . 128
5.5 Control Variates . . . . . . . . . . . . . . . . . . . . . . . . . 132
5.6 Importance Sampling . . . . . . . . . . . . . . . . . . . . . . 139
5.7 Stratified Sampling . . . . . . . . . . . . . . . . . . . . . . . 144
5.8 Stratified Importance Sampling . . . . . . . . . . . . . . . . 147
Exercises . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 149
R Code . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 152
6 Monte Carlo Methods in Inference 153
6.1 Introduction . . . . . . . . . . . . . . . . . . . . . . . . . . . 153
6.2 Monte Carlo Methods for Estimation . . . . . . . . . . . . . 154
6.3 Monte Carlo Methods for Hypothesis Tests . . . . . . . . . . 162
6.4 Application . . . . . . . . . . . . . . . . . . . . . . . . . . . . 174
Exercises . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 180
7 Bootstrap and Jackknife 183
7.1 The Bootstrap . . . . . . . . . . . . . . . . . . . . . . . . . . 183
7.2 The Jackknife . . . . . . . . . . . . . . . . . . . . . . . . . . 190
7.3 Jackknife-after-Bootstrap . . . . . . . . . . . . . . . . . . . . 195
7.4 Bootstrap Confidence Intervals . . . . . . . . . . . . . . . . . 197
7.5 Better Bootstrap Confidence Intervals . . . . . . . . . . . . . 203
7.6 Application . . . . . . . . . . . . . . . . . . . . . . . . . . . . 207
Exercises . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 212
8 Permutation Tests 215
8.1 Introduction . . . . . . . . . . . . . . . . . . . . . . . . . . . 215
8.2 Tests for Equal Distributions . . . . . . . . . . . . . . . . . . 219
8.3 Multivariate Tests for Equal Distributions . . . . . . . . . . 222
8.4 Application . . . . . . . . . . . . . . . . . . . . . . . . . . . . 235
Exercises . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 242

9 Markov Chain Monte Carlo Methods 245
9.1 Introduction . . . . . . . . . . . . . . . . . . . . . . . . . . . 245
9.2 The Metropolis-Hastings Algorithm . . . . . . . . . . . . . . 247
9.3 The Gibbs Sampler . . . . . . . . . . . . . . . . . . . . . . . 263
9.4 Monitoring Convergence . . . . . . . . . . . . . . . . . . . . 266
9.5 Application . . . . . . . . . . . . . . . . . . . . . . . . . . . . 271
Exercises . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 277
R Code . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 279
10 Probability Density Estimation 281
10.1 Univariate Density Estimation . . . . . . . . . . . . . . . . . 281
10.2 Kernel Density Estimation . . . . . . . . . . . . . . . . . . . 296
10.3 Bivariate and Multivariate Density Estimation . . . . . . . . 305
10.4 Other Methods of Density Estimation . . . . . . . . . . . . . 314
Exercises . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 314
R Code . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 317
11 Numerical Methods in R 319
11.1 Introduction . . . . . . . . . . . . . . . . . . . . . . . . . . . 319
11.2 Root-finding in One Dimension . . . . . . . . . . . . . . . . 326
11.3 Numerical Integration . . . . . . . . . . . . . . . . . . . . . . 330
11.4 Maximum Likelihood Problems . . . . . . . . . . . . . . . . . 335
11.5 One-dimensional Optimization . . . . . . . . . . . . . . . . . 338
11.6 Two-dimensional Optimization . . . . . . . . . . . . . . . . . 342
11.7 The EM Algorithm . . . . . . . . . . . . . . . . . . . . . . . 345
11.8 Linear Programming – The Simplex Method . . . . . . . . . 348
11.9 Application . . . . . . . . . . . . . . . . . . . . . . . . . . . . 349
Exercises . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 353
A Notation 355
B Working with Data Frames and Arrays 357
B.1 Resampling and Data Partitioning . . . . . . . . . . . . . . . 357
B.2 Subsetting and Reshaping Data . . . . . . . . . . . . . . . . 360
B.3 Data Entry and Data Analysis . . . . . . . . . . . . . . . . . 364
References 375
Index 395

List of Tables
1.1 R Syntax and Commonly Used Operators . . . . . . . . . . . 5
1.2 Commonly Used Functions . . . . . . . . . . . . . . . . . . . 6
1.3 R Syntax and Functions for Vectors and Matrices . . . . . . . 6
1.4 Some Basic Graphics Functions in R (graphics) and Other
Packages . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 19
3.1 Selected Univariate Probability Functions . . . . . . . . . . . 49
4.1 GraphicsFunctionsforMultivariateDatainR(graphics)and
Other Packages . . . . . . . . . . . . . . . . . . . . . . . . . . 98
6.1 Estimates of Mean Squared Error for the kth Level Trimmed
Mean in Example 6.3 . . . . . . . . . . . . . . . . . . . . . . . 158
6.2 Empirical Power of Three Tests of Normality against a Con-
taminated Normal Alternative in Example 6.11 . . . . . . . . 175
8.1 Significant Tests of Bivariate Normal Location Alternatives
F =N ((0,0)T,I ), F =N ((0,?)T,I ) . . . . . . . . . . . . 235
1 2 2 2 2 2
8.2 Power of dCov Test of Independence in Example 8.14 . . . . 242
9.1 Quantiles of Target Distribution and Chains in Example 9.4 . 256
10.1 Estimated Best Number of Class Intervals for Simulated Data
According to Three Rules for Histograms . . . . . . . . . . . 289
10.2 Kernel Functions for Density Estimation . . . . . . . . . . . . 299
11.1 PayoffMatrix of the Game of Morra . . . . . . . . . . . . . . 350
ix

List of Figures
3.1 Probability density histogram of a random sample generated
by the inverse transform method in Example 3.2 . . . . . . . 51
3.2 QQ Plot comparing the Beta(3, 2) distribution with a simu-
lated random sample in Example 3.8 . . . . . . . . . . . . . 60
3.3 Histogram of a simulated convolution of Gamma(2, 2) and
Gamma(2, 4) random variables, and a 50% mixture of the
same variables, from Example 3.11 . . . . . . . . . . . . . . 65
3.4 Density estimates from Example 3.12: A mixture (thick line)
of several gamma densities (thin lines) . . . . . . . . . . . . 66
3.5 DensitiesfromExample3.14: Amixture(thickline)ofseveral
gamma densities (thin lines) . . . . . . . . . . . . . . . . . . 69
3.6 Scatterplot of a bivariate normal sample in Example 3.16 . . 73
3.7 Pairs plot of the bivariate marginal distributions of a simu-
lated multivariate normal random sample in Example 3.18 . 75
3.8 Histograms of the marginal distributions of multivariate nor-
mal location mixture data generated in Example 3.20 . . . . 80
3.9 Arandomsampleof200pointsfromthebivariatedistribution
(X ,X ) that is uniformly distributed on the unit circle in
1 2
Example 3.21 . . . . . . . . . . . . . . . . . . . . . . . . . . 82
3.10 Sequence of sample means of a simulated renewal process in
Example 3.25 . . . . . . . . . . . . . . . . . . . . . . . . . . 90
3.11 Partial realization of a symmetric random walk in Example
3.26 . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 91
4.1 Scatterplot matrix (pairs) comparing four measurements of
iris virginica species in Example 4.1 . . . . . . . . . . . . . . 99
4.2 Scatterplot matrix (splom) comparing four measurements of
iris data in Example 4.1 . . . . . . . . . . . . . . . . . . . . 100
4.3 Perspective plot of the standard bivariate normal density in
Example 4.2 . . . . . . . . . . . . . . . . . . . . . . . . . . . 102
4.4 Perspectiveplotwithelementsaddedusingtheviewingtrans-
formation returned by persp in Example 4.3 . . . . . . . . . 103
4.5 3D scatterplots of iris data produced by cloud (lattice)in
Example 4.5 . . . . . . . . . . . . . . . . . . . . . . . . . . . 106
4.6 Contour and levelplot of volcano data in Examples 4.6–4.7 . 108
xi

xii
4.7 Flat density histogramof bivariate normaldata with hexago-
nal bins produced by hexbin in Example 4.8 . . . . . . . . . 109
4.8 Andrewscurvesforleafshape17 (DAAG)dataatlatitude17.1
in Example 4.9 . . . . . . . . . . . . . . . . . . . . . . . . . 112
4.9 Parallel coordinate plots in Example 4.10 for a subset of the
crabs (MASS) data . . . . . . . . . . . . . . . . . . . . . . . 114
4.10 Segment plot of a subset of the males in the crabs (MASS)
data set in Example 4.11 . . . . . . . . . . . . . . . . . . . . 115
5.1 Importance functions in Example 5.10 . . . . . . . . . . . . 142
6.1 Empiricalpower?ˆ(?)±s(cid:1)e(?ˆ(?)) for the t-testof H :? =500
0
vs H :? >500 in Example 6.9 . . . . . . . . . . . . . . . . 170
1
6.2 Empirical power ?ˆ(?)±s(cid:1)e(?ˆ(?)) for the skewness test of nor-
mality against ?-contaminated normal scale mixture alterna-
tive in Example 6.10 . . . . . . . . . . . . . . . . . . . . . . 171
6.3 Empirical power of three tests of normality in Example 6.11 175
6.4 Boxplots showing extreme points for the Count Five statistic
in Example 6.12 . . . . . . . . . . . . . . . . . . . . . . . . . 176
7.1 Bootstrap replicates for law school data in Example 7.2 . . . 188
7.2 Four proposed models for ironslag data in Example 7.17 . 209
7.3 Residuals of the quadratic model in Example 7.17 . . . . . . 211
8.1 Permutation distribution of replicates in Example 8.1 (left)
and Example 8.2 (right) . . . . . . . . . . . . . . . . . . . . 219
8.2 Permutation distribution of Tn,3 in Example 8.6 . . . . . . . 229
8.3 Permutation distribution of e in Example 8.7. . . . . . . . . 234
8.4 Permutation distribution of dCov in Example 8.13. . . . . . 241
8.5 Power comparison of dCov and W in Example 8.14 . . . . . 242
9.1 Part of a chain generated by a Metropolis-Hastings sampler
of a Rayleigh distribution in Example 9.1 . . . . . . . . . . . 251
9.2 Histogram with target Rayleigh density and QQ plot for a
Metropolis-Hastings chain in Example 9.1 . . . . . . . . . . 252
9.3 RandomwalkMetropolischainsgeneratedbyproposaldistri-
butions with different variances in Example 9.3 . . . . . . . 255
9.4 Random walk Metropolis chain for ? in Example 9.5 . . . . 259
9.5 Distributionoftheindependencesamplerchainforpwithpro-
posal distribution Beta(1, 1) in Example 9.6 . . . . . . . . . 262
9.6 Chainsgeneratedbyindependencesamplerforpwithproposal
distributions Beta(1, 1) and Beta(5, 2) in Example 9.6 . . . 262
9.7 Bivariate normal chain generated by the Gibbs sampler in
Example 9.7 . . . . . . . . . . . . . . . . . . . . . . . . . . . 265

xiii
9.8 Sequencesoftherunningmeans?forfourMetropolis-Hastings
chains in Example 9.8 . . . . . . . . . . . . . . . . . . . . . . 270
9.9 SequenceoftheGelman-RubinRˆforfourMetropolis-Hastings
chains in Example 9.8 (a) ? =0.2, (b) ? =2 . . . . . . . . . 271
9.10 Number of annual coal mining disasters in Example 9.9 . . . 272
9.11 Output of the Gibbs sampler in Example 9.9 . . . . . . . . . 276
9.12 Distribution of µ, ?, andk fromthe change pointanalysis for
coal mining disasters in Example 9.9 . . . . . . . . . . . . . 276
10.1 Histogram estimates of normal density in Example 10.1 for
samples of size (a) 25 and (b) 1000 with standard normal
density curve. . . . . . . . . . . . . . . . . . . . . . . . . . . 285
10.2 Histogram estimate of Old Faithful waiting time density in
Example 10.3 . . . . . . . . . . . . . . . . . . . . . . . . . . 289
10.3 FrequencypolygonestimateofOldFaithfulwaitingtimeden-
sity in Example 10.4 . . . . . . . . . . . . . . . . . . . . . . 292
10.4 Histogramestimatesofanormalsamplewithequalbinwidth
but different bin origins, and standard normal density curve 294
10.5 ASH density estimate of Old Faithful waiting times in Exam-
ple 10.6 . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 296
10.6 Kernel density estimates using a Gaussian kernel with band-
width h . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 298
10.7 Kernel functions for density estimation . . . . . . . . . . . . 299
10.8 GaussiankerneldensityestimatesofOldFaithfulwaitingtime
in Example 10.7 using densitywith different bandwidths . 301
10.9 KerneldensityestimatesofprecipitationdatainExample10.8
using densitywith different bandwidths . . . . . . . . . . . 302
10.10 Reflection boundary technique in Example 10.10 . . . . . . . 304
10.11 Density polygon of bivariate normal data in Example 10.13,
using normal reference rule (Sturges’ Rule) to determine bin
widths . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 308
10.12 Bivariate ASH density estimates of bivariate normal data in
Example 10.14 . . . . . . . . . . . . . . . . . . . . . . . . . . 311
10.13 Product kernel estimates of normal mixture in Example 10.15 313
11.1 Example 11.8 (n = 10, r = 0.5, ? = 0.2) (a) Integrand,
(b) Value of the integral as a function of ? . . . . . . . . . . 332
11.2 Density of the correlationstatistic for sample size 10 . . . . 335
11.3 The function f(x) in Example 11.11 . . . . . . . . . . . . . . 339
11.4 Replicates of maximumlikelihood estimates by numericalop-
timizationofthelikelihoodofaGamma(r=5,?=2)random
variable in Example 11.12 . . . . . . . . . . . . . . . . . . . 341

Preface
This book is an introduction to statisticalcomputing and computational sta-
tistics. Computational statistics is a rapidly expanding area in statistical
research and applications. It includes computationally intensive methods in
statistics, such as Monte Carlo methods, bootstrap, MCMC, density estima-
tion,nonparametricregression,classificationandclustering,andvisualization
of multivariate data. Gentle [113] and Wegman [295] describe computational
statistics as computationally intensive methods in statistics. Statistical com-
puting, at least traditionally, focused on numerical algorithms for statistics
(see e.g. Thisted [269]). Generally a book has only one of these terms in
the title; for example, Givens and Hoeting’s “Computational Statistics” [121]
includes classical statistical computing topics in optimization, numerical in-
tegration, density estimation and smoothing, as well as the Monte Carlo and
MCMC methods of computational statistics. We chose the title “Statistical
Computing with R” for this book, which is both computational statistics and
statistical computing, and perhaps emphasizes Monte Carlo and resampling
methods more than the title would suggest.
RisastatisticalcomputingenvironmentbasedontheSlanguage. Thesoft-
ware is free under the terms of the Free Software Foundation’s GNU General
PublicLicense. Itisavailableforawidevarietyofplatformsincludingamong
others Linux,Windows, andMacOS.Seehttp://www.r-project.org/fora
description. All examples in the text are implemented in R.
This book is designed for graduate students or advanced undergraduates
with preparation in calculus, linear algebra, probability and mathematical
statistics. The text will be suitable for an introductory course in computa-
tional statistics, and may also be used for independent study. In addition,
because of the computational nature of the material, this book serves as an
excellent tutorial on the R language, providing examples that illustrate pro-
gramming concepts in the context of practical computational problems. The
text does not assume previous expertise in any particular programming lan-
guage.
The presentation will focus on implementation rather than theory, but the
connectiontothemathematicalideasandtheoreticalfoundationswillbemade
clear. The first chapter provides an overview of computational statistics and
a brief introduction to the R statistical computing environment. The second
chapter is a summary and review of some basic concepts in probability and
classical statistical inference. Each of the remaining chapters covers a topic
in computational statistics.
xv

xvi
The selection of topics includes the traditional core material of computa-
tional statistics: simulating random variables from probability distributions,
Monte Carlo integration and variance reduction methods, Monte Carlo and
MCMC methods, bootstrap and jackknife, density estimation, and visualiza-
tion of multivariate data. Although R includes random generators for the
commonly used probability distributions, there is instructive value in study-
ing the algorithms for generating them. Research problems often involve
distributions that are non-standard, generalized, or not implemented. Meth-
ods for generating mixtures and multivariate data are also covered. The text
concludes with a chapter on numerical methods in R.
A large number of examples and exercises are included. All examples are
fully implemented in the R statistical computing environment, and the R
code for examples in the book can be downloaded from the author’s web
site at personal.bgsu.edu/~mrizzo. In an effort to keep the material self-
contained,mostexamples andexercisesuse datasetsavailablein the Rdistri-
bution(baseplusrecommendedpackages),orsimulateddata. Somefunctions
and datasetsin contributedpackagesavailableonCRAN are used, whichcan
be installed by functions provided in R.
Books in print have a long lifetime, while software is constantly evolving.
By the time this book is in a reader’shands,one or more newerversionsof R
willhavebeenreleased. Everyefforthasbeenmadetocheckthecodesamples
under the current version of R; comments, suggestions, and corrections are
always welcome.
Acknowledgements
Thisbookwasinspiredatleastinpartbytheexcellentstatisticalcomputing
package R, and the author would like to acknowledge the team of developers
for continuing to support and improve this software.
Iwouldliketothankseveralreviewerswhomadeinvaluablesuggestionsand
comments, especially Jim Albert, Hua Fang, Herb McGrath, Xiaoping Shen,
and Ga´bor Sz´ekely. I would also like to acknowledge the contribution of my
students who used a preliminary draft of the text at Ohio University and
providedmuchhelpfulfeedback,withspecialthankstoRoxanaHritcu,Nihar
Shah,andJinfeiZhang. EditorBobStern,ProjectEditorMarshaHecht,and
Project Coordinator Amber Donley of Taylor & Francis / CRC Press have
beenveryhelpfulthroughouttheentireproject. Finally,Iwouldliketothank
my family for their constant support and encouragement.
Maria L. Rizzo
Department of Mathematics and Statistics
Bowling Green State University

Chapter 1
Introduction
1.1 Computational Statistics and Statistical Computing
Computational statistics and statistical computing are two areas within
statistics that may be broadly described as computational, graphical, and
numerical approaches to solving statistical problems. Statistical computing
traditionally has more emphasis on numerical methods and algorithms, such
as optimization and random number generation, while computational statis-
tics may encompass such topics as exploratory data analysis, Monte Carlo
methods, and data partitioning, etc. However, most researchers who apply
computationallyintensivemethodsinstatisticsusebothcomputationalstatis-
tics and statistical computing methods; there is much overlap and the terms
are used differently in different contexts and disciplines. Gentle [113] and
Givens andHoeting [121] use “computationalstatistics”to encompassallthe
relevanttopics that should be coveredin a modern introductory text, so that
“statistical computing” is somewhat absorbed under this more broad defini-
tionofcomputationalstatistics. Ontheotherhand,journalsandprofessional
organizations seem to use both terms to cover similar areas. Some examples
are the International Association for Statistical Computing (IASC), part of
the InternationalStatistical Insititute, and the Statistical Computing section
of the American Statistical Association.
This book encompasses parts of both of these subjects, because a first
courseincomputationalmethodsforstatisticsnecessarilyincludesboth. Some
examples of topics covered are described below.
Monte Carlo methods refer to a diverse collection of methods in statistical
inference and numerical analysis where simulation is used. Many statistical
problems can be approached through some form of Monte Carlo integration.
In parametric bootstrap, samples are generated from a given probability dis-
tribution to compute probabilities, gain information about sampling distrib-
utions of statistics suchas bias and standarderror,assess the performance of
proceduresinstatisticalinference,andtocomparetheperformanceofcompet-
ingmethodsforthesameproblem. Resamplingmethodssuchastheordinary
bootstrapandjackknifearenonparametricmethodsthatcanbeappliedwhen
the distribution of the random variable or a method to simulate it directly is
unavailable. The need for Monte Carlo analysis also arises because in many
1

2 Statistical Computing with R
problems, an asymptotic approximationis unsatisfactory or intractable. The
convergence to the limit distribution may be too slow, or we require results
for finite samples; or the asymptotic distribution has unknown parameters.
MonteCarlomethodsarecoveredinChapters5, 6,7,8,and9. Thefirsttool
needed in a simulation is a method for generating psuedo random samples;
these methods are covered in Chapter 3.
Markov Chain Monte Carlo (MCMC) methods are based on an algorithm
tosamplefromaspecifiedtargetprobabilitydistributionthatisthestationary
distribution of a Markov chain. These methods are widely applied for prob-
lems arising in Bayesiananalysis, and in such diverse fields as computational
physics and computational finance. Markov Chain Monte Carlo methods are
covered in Chapter 9.
Several special topics also deserve an introduction in a survey of compu-
tationally intensive methods. Density estimation (Chapter 10) provides a
nonparametricestimateofadensity,whichhasmanyapplicationsinaddition
toestimationrangingfromexploratorydataanalysistoclusteranalysis. Com-
putationalmethodsareessentialforthevisualizationofmultivariatedataand
reductionofdimensionality. Theincreasinginterestinmassiveandstreaming
datasets,andhighdimensionaldataarisinginapplicationsofbiologyanden-
gineering,forexample,demandimprovedandnewcomputationalapproaches
for multivariate analysis and visualization. Chapter 4 is an introduction to
methods for visualization of multivariate data. A review of selected topics in
numericalmethods foroptimizationandnumericalintegrationis presentedin
Chapter 11.
Many references can be recommended for further reading on these topics.
Gentle [113] andthe volume edited by Gentle, et al.[114] have thoroughcov-
erage of topics in computational statistics. Givens and Hoeting [121] is a
recent graduate text on computational statistics and statistical computing.
Martinez and Martinez [192] is an accessible introduction to computational
statistics,withnumerousexamplesinMatlab. Texts onstatisticalcomputing
include the classics by Kennedy and Gentle [161] and Thisted [269], and a
more recent survey of methods in statistical computing is covered in Kundu
and Basu [165]. For statistical applications of numerical analysis see Lange
[168] or Monahan [202]. Books that primarily cover Monte Carlo methods
or resampling methods include Davison and Hinkley [63], Efron and Tibshi-
rani [84], Hjorth [143], Liu [179], and Robert and Casella [228]. On density
estimation see Scott [244] and Silverman [252].

Introduction 3
1.2 The R Environment
The Renvironmentis a suite ofsoftwareandprogramminglanguagebased
onS,fordataanalysisandvisualization. “WhatisR”isoneofthefrequently
askedquestionsincludedintheonlinedocumentationforR.Hereisanexcerpt
from the R FAQ [217]:
Ris a systemforstatisticalcomputationandgraphics. Itconsists
of a language plus a run-time environment with graphics, a de-
bugger, access to certain system functions, and the ability to run
programs stored in script files.
The home page of the R project is http://www.r-project.org/,and the
currentRdistributionanddocumentationareavailableontheComprehensive
RArchiveNetwork(CRAN).The CRANmastersiteis atTUWien,Austria,
http://cran.R-project.org/. The R distribution includes the base and
recommended packages with documentation. A help system and several ref-
erence manuals are installed with the program.
R is based on the S langauge. Some details about differences between R
and S are given in the R FAQ [147]. Venables and Ripley [278] is a good
resourcefor appliedstatistics with S,Splus, andR. Other referencesonthe S
language include [24, 41, 42, 277].
An excellent starting point is the manual Introduction to R [279]. Some
introductory books using R include Dalgaard [62] and Verzani [280]. On
programmingmethodsseeChambers[41],andVenablesandRipley[277,278].
Other texts that feature Splus, S, and/or R may also be helpful (see e.g.
Crawley [57] or Everitt and Hothorn [88]). Albert [5] is an introductory text
on Bayesian computation. On statistical models see Faraway [90, 91], Fox,
[97], Harrell [131], and Pinhiero and Bates [211]. Many more references can
be found through links on the R project home page.
Programming is discussed as needed in the chapters that follow. In this
text, new functions or programmingmethods are explained in remarkscalled
“R notes” as they arise. Readers are always encouraged to consult the R
help system and manuals [147, 279, 217]. For platform specific details about
installationandinteractingwiththegraphicaluserinterfacethebestresource
is the R manual [218] and current information at www.r-project.org.
In the remainder of this chapter, we cover some basic information aimed
to help a new user get started with R. Topics include basic syntax, using the
online help, datasets, files, scripts, and packages. There is a brief overview of
basic graphics functions. Also see Appendix B on working with data frames.

4 Statistical Computing with R
1.3 Getting Started with R
R has a command line interface that can be used interactively or in batch
mode. Commands can be typed at the prompt in the R Console window, or
submitted by the source command (see Section 1.8). For example, we can
evaluate the standard normal density ?(x) = ?1 e?x2/2 at x = 2 by typing
2?
the formula or (more conveniently) the dnorm function:
> 1/sqrt(2*pi) * exp(-2)
[1] 0.05399097
> dnorm(2)
[1] 0.05399097
In the example above, the command prompt is >. The [1] indicates that
the result displayed is the first element of a vector.
Acommandcanbecontinuedonthenextline. Thepromptsymbolchanges
whenever the command on the previous line is not complete. In the example
below, the plot commandis continued onthe secondline, as indicated by the
prompt symbol changing to +.
> plot(cars, xlab="Speed", ylab="Distance to Stop",
+ main="Stopping Distance for Cars in 1920")
Whenever a statement or expression is not complete at the end of a line,
the parser automatically continues it on the next line. No special symbol is
needed to end a line. (A semicolon can be used to separate statements on
a single line, although this tends to make code harder to read.) A group of
statements can be gatheredinto a single (compound) expressionby enclosing
them in curly braces { }.
To cancel a command, a partial command, or a running script use Ctrl-C,
or in the Windows version of the R GUI, press the escape key (Esc). To exit
the R system type the command q() or close the R GUI.
The usual assignm(cid:2)ent operator is <-. For example, x <- sqrt(2 * pi)
assigns the value of 2? to the symbol x.
Commands entered at the command prompt in the R console are auto-
matically echoed to the console, but assignment operations are silent. Some
objects have print methods so that the output displayed is not necessarily
the entireobject, buta summarizedreport. Comparethe effectofthese com-
mands. The first command displays a sequence (0.0 0.5 1.0 1.5 2.0 2.5 3.0),
butdoesnotstoreit. Thesecondcommandstoresthesequenceinx,butdoes
not display it.
seq(0, 3, 0.5)
x <- seq(0, 3, 0.5)

Introduction 5
TABLE 1.1: R Syntax and Commonly Used Operators
Description R symbol Example
Comment # #this is a comment
Assignment <- x <- log2(2)
Concatenation operator c c(3,2,2)
Elementwise multiplication * a * b
Exponentiation ^ 2^1.5
x mod y x %% y 25 %% 3
Integer division %/% 25 %/% 3
Sequence from a to b by h seq seq(a,b,h)
Sequence operator : 0:20
Syntax
Below are some help topics on R operators and syntax. The ? invokes the
help system for the indicated keyword.
?Syntax
?Arithmetic
?Logic
?Comparison #relational operators
?Extract #operators on vectors and arrays
?Control #control flow
Symbols or labels for functions and variables are case-sensitive and can
include letters, digits, and periods. Symbols cannot contain the underscore
characterandcannotstartwithadigit. Manysymbolsarealreadydefinedby
theRbaseorrecommendedpackages. Tocheckifasymbolisalreadydefined,
type the symbol at the prompt. The symbols q, t, I, T, and F, for example,
are used by R. Note that whenever a package is loaded, other symbols may
now be defined by the package.
> T
[1] TRUE
> t
function (x) UseMethod("t") <environment: namespace:base>
> g
Error: Object "g" not found
Here we see that both T and t are already defined, but g is not yet defined
by R or by the user. Nothing prevents a user from assigning a new value to
predefined symbols such as t or T, but it is a bad programming practice in
general and can lead to unexpected results and programming errors.
Most new R users have some experience with other programming envi-
ronments and languages such as C, MATLAB, or SAS. Some operations and

6 Statistical Computing with R
featuresarecommontoalltheselanguages. AbrieflistsummarizingRsyntax
forsomeofthesecommonelementsisshowninTable1.1. Formoredetailssee
the help topic Syntax. Some of the functions common to most development
environments are listed in Table 1.2.
Most arithmetic operations are vectorized. For example, x^2 will square
each of the elements of the vector x, or each entry of the matrix x if x is a
matrix. Similarly,x*ywillmultiply eachoftheelementsofthe vectorxtimes
the corresponding element of y (generating a warning if the vectors are not
the same length). Operators for matrices are described in Table 1.3.
TABLE 1.2: Commonly Used Functions
Description R symbol
Square root sqrt
(cid:1)x(cid:2), (cid:3)x(cid:4) floor, ceiling
Natural logarithm log
Exponential function ex exp
Factorial factorial
Random Uniform numbers runif
Random Normal numbers rnorm
Normal distribution pnorm, dnorm,qnorm
Rank, sort rank, sort
Variance, covariance var, cov
Std. dev., correlation sd, cor
Frequency tables table
Missing values NA, is.na
TABLE 1.3: R Syntax and Functions for Vectors and Matrices
Description R symbol Example
Zero vector numeric(n) x <- numeric(n)
integer(n) x <- integer(n)
rep(0,n) x <- rep(0,n)
Zero matrix matrix(0,n,m) x <- matrix(0,n,m)
ith element of vector a a[i] a[i] <- 0
jth column of a matrix A A[,j] sum(A[,j])
ijth entry of matrix A A[i,j] x <- A[i,j]
Matrix multiplication %*% a %*% b
Elementwise multiplication * a * b
Matrix transpose t t(A)
Matrix inverse solve solve(A)

Introduction 7
1.4 Using the R Online Help System
For documentation on a topic, type ?topicor help(topic)where “topic”
is the name of the topic for which you need help. For example, ?seq will
bring up documentation for the sequence function. In some cases, it may be
necessary to surround the topic with quotation marks.
> ?%%
Error: syntax error, unexpected SPECIAL in " ?%%"
The second version (below) produces the help topic.
> ?"%%"
OnmostsystemsHtmlhelpisalsoavailablebythecommandhelp.start();
inWindowsalsotrythe Helpmenu,Html help. This commanddisplaysHelp
inawebbrowser,withhyperlinks. TheHtmlhelpsystemhasasearchengine.
Another way to search for help on a topic is help.search(). This and
the search engine in Html help may help locate several relevant topics. For
example, if we are searching for a method to compute a permutation,
help.search("permutation")
producestworesults: orderandsample. Wecanthenconsultthehelptopics
for order and sample. The help topic for sample shows that x is sampled
without replacement (a permutation of the elements of vector x) by:
sample(x) #permutation of all elements of x
sample(x, size=k) #permutation of k elements of x
(Ifthegoalwastocount permutations,andevaluate n! ,wewant?Special,
(n?k)!
a list of special functions including factorialand gamma.)
Manyhelpfilesendwithexecutableexamples. Theexamplescanbecopied
and pasted at the command line. To run all the examples associated with
topic, use example(topic). See e.g. the interesting set of examples for
density. To run all the examples for density, type example(density).
To seeoneexample,openthe helppage,copythe lines andpaste thematthe
command prompt.
help(density)
# copy and paste the lines below from the help page

8 Statistical Computing with R
# The Old Faithful geyser data
d <- density(faithful$eruptions, bw = "sj")
d
plot(d)
Alistof availabledata sets inthe baseandloadedpackagesis displayedby
data(),anddocumentationonaloadeddatasetisdisplayedbytheassociated
help topic For example, help(faithful) displays the Old Faithful geyser
data helptopic. If a packageis installedbut notyetloaded,specify the name
of the package. For example, help("geyser", package = MASS) displays
help for the dataset geyser without loading the package MASS [278].
R note 1.1 Data sets in the base package can be accessed without explicitly
loading them via data. Data sets in other packages can be loaded by the data
function. For example,
data("geyser", package = "MASS")
loads geyser data from the MASS package.
1.5 Functions
The syntax for a function definition is
function( arglist ) expr
return(value)
Many examples of functions are documented in the chapter “Writing your
own functions” of the manual [279].
Here is a simple example of a user-defined R function that “rolls” n fair
dice and returns the sum.
sumdice <- function(n) {
k <- sample(1:6, size=n, replace=TRUE)
return(sum(k))
}
The function definition can be entered by several methods.
1. Typing the lines at the prompt, if the definition is short.
2. Copy from an editor and paste at the command prompt.
3. Save the function in a script file and source the file.
Note that the R GUI provides an editor and toolbar for submitting code.
Oncetheuser-definedfunctionisenteredintheworkspace,itcanbeusedlike
other R functions.

Introduction 9
#to print the result at the console
> sumdice(2)
[1] 9
#to store the result rather than print it
a <- sumdice(100)
#we expect the mean for 100 dice to be close to 3.5
> a / 100
[1] 3.59
The value returned by an R function is the argument of the return state-
ment or the value of the last evaluated expression. The sumdice function
could be written as
sumdice <- function(n)
sum(sample(1:6, size=n, replace=TRUE))
Functions canhave default argumentvalues. For example, sumdicecanbe
generalized to roll s-sided dice, but keep the default as 6-sided. The usage is
shown below.
sumdice <- function(n, sides = 6) {
if (sides < 1) return (0)
k <- sample(1:sides, size=n, replace=TRUE)
return(sum(k))
}
> sumdice(5) #default 6 sides
[1] 12
> sumdice(n=5, sides=4) #4 sides
[1] 14
1.6 Arrays, Data Frames, and Lists
Arrays, data frames, and lists are some of the objects used to store data
in R. A matrix is a two dimensional array. A data frame is not a matrix,
although it can be represented in a rectangular layout like a matrix. Unlike
a matrix, the columns of a data frame may be different types of variables.
Arrays contain a single type.

10 Statistical Computing with R
Data Frames
Adataframeisalistofvariables,eachofthesamelengthbutnotnecessarily
of the same type. In this section we will discuss how to extract values of
variables from a data frame.
Example 1.1 (Iris data)
TheFisheririsdatasetgivesfourmeasurementsonobservationsfromthree
species of iris. The first few cases in the iris data are shown below.
Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1 5.1 3.5 1.4 0.2 setosa
2 4.9 3.0 1.4 0.2 setosa
3 4.7 3.2 1.3 0.2 setosa
4 4.6 3.1 1.5 0.2 setosa
The iris data is an example of a data frame object. It has 150 cases in
rows and 5 variables in columns. After loading the data, variables can be
referenced by $name (the column name), by subscripts like a matrix, or by
position using the [[ ]] operator. The list of variable names is returned by
names. Some examples with output are shown below.
> names(iris)
[1] "Sepal.Length" "Sepal.Width" "Petal.Length" "Petal.Width"
[5] "Species"
> table(iris$Species)
setosa versicolor virginica
50 50 50
> w <- iris[[2]] #Sepal.Width
> mean(w)
[1] 3.057333
Alternately, the data frame can be attached and variables referenced di-
rectly by name. If a data frame is attached, it is a goodpractice to detachit
when it is no longer needed, to avoid clashes with names of other variables.
> attach(iris)
> summary(Petal.Length[51:100]) #versicolor petal length
Min. 1st Qu. Median Mean 3rd Qu. Max.
3.00 4.00 4.35 4.26 4.60 5.10
If we only need the iris data temporarily,we canuse with. The syntax is
in this example would be
with(iris, summary(Petal.Length[51:100]))

Introduction 11
Suppose we wish to compute the means of all variables, by species. The
firstfour columns ofthe data frame canbe extractedwith iris[,1:4]. Here
the missing row index indicates that all rows should be included. The by
function easily computes the means by species.
> by(iris[,1:4], Species, mean)
Species: setosa
Sepal.Length Sepal.Width Petal.Length Petal.Width
5.006 3.428 1.462 0.246
--------------------------------------------------
Species: versicolor
Sepal.Length Sepal.Width Petal.Length Petal.Width
5.936 2.770 4.260 1.326
--------------------------------------------------
Species: virginica
Sepal.Length Sepal.Width Petal.Length Petal.Width
6.588 2.974 5.552 2.026
> detach(iris)
(cid:5)
R note 1.2 Althoughiris$Sepal.Width,iris[[2]],andiris[ ,2]allpro-
duce the same result, the $ and [[ ]] operators can only select one element,
while the [ ] operator can select several. See the help topic Extract.
Arrays and Matrices
An array is a multiply subscripted collection of a single type of data. An
array has a dimension attribute, which is a vector containing the dimensions
of the array.
Example 1.2 (Arrays)
Different arrays are shown. The sequence of numbers from 1 to 24 is first a
vectorwithoutadimensionattribute,thenaonedimensionalarray,thenused
to fill a 4 by 6 matrix, and finally a 3 by 4 by 2 array.
x <- 1:24 # vector
dim(x) <- length(x) # 1 dimensional array
matrix(1:24, nrow=4, ncol=6) # 4 by 6 matrix
x <- array(1:24, c(3, 4, 2)) # 3 by 4 by 2 array

12 Statistical Computing with R
The 3×4×2 array defined by the last statement is displayed below.
, , 1
[,1] [,2] [,3] [,4]
[1,] 1 4 7 10
[2,] 2 5 8 11
[3,] 3 6 9 12
, , 2
[,1] [,2] [,3] [,4]
[1,] 13 16 19 22
[2,] 14 17 20 23
[3,] 15 18 21 24
The arrayx is displayedshowing x[, , 1] (the first3×4elements) followed
by x[, , 2] (the second 3×4 elements). (cid:5)
A matrix is a doubly subscripted array of a single type of data. If A is a
matrix, then A[i, j] is the ij-th element of A, A[, j] is the j-th column
of A, and A[i ,] is the i-th row of A. A range of rows or columns can be
extractedusingthe : sequenceoperator. Forexample,A[2:3, 1:4]extracts
the 2×4 matrix containing rows 2 and 3 and columns 1 through 4 of A.
Example 1.3 (Matrices)
The statements
A <- matrix(0, nrow=2, ncol=2)
A <- matrix(c(0, 0, 0, 0), nrow=2, ncol=2)
A <- matrix(0, 2, 2)
all assign to A the 2×2 zero matrix. Matrices are filled in column major
orderbydefault; thatis,the rowindexchangesfasterthanthecolumnindex.
Thus,
A <- matrix(1:8, nrow=2, ncol=4)
stores in A the matrix (cid:3) (cid:4)
1 357
.
2 468
If necessary, use the option byrow=TRUEin matrix to change the default. (cid:5)
Example 1.4 (Iris data: Example 1.1, cont.)
We can convert the first four columns of the iris data to a matrix using
as.matrix.

|                     |                          |                                               |            | Introduction     |            |               |              |               | 13        |
| ------------------- | ------------------------ | --------------------------------------------- | ---------- | ---------------- | ---------- | ------------- | ------------ | ------------- | --------- |
| > x                 | <- as.matrix(iris[,1:4]) |                                               |            |                  | #all       | rows          | of columns   | 1 to          | 4         |
| > mean(x[,2])       |                          |                                               |            | #mean            | of sepal   | width,        |              | all species   |           |
| [1]                 | 3.057333                 |                                               |            |                  |            |               |              |               |           |
| > mean(x[51:100,3]) |                          |                                               |            | #mean            | of petal   | length,       |              | versicolor    |           |
| [1]                 | 4.26                     |                                               |            |                  |            |               |              |               |           |
| It is possible      | to convert               |                                               | the matrix | to               | a three    | dimensional   |              | array, but    | arrays    |
| (and matrices)      | are                      | stored                                        | in “column |                  | major      | order”        | by default.  | For           | arrays,   |
| “column             | major” means             |                                               | that the   | indices          | to the     | left          | are changing | faster        | than      |
| indicestotheright.  |                          | Inthiscaseitiseasytoconvertthematrixtoa50×3×4 |            |                  |            |               |              |               |           |
| array, with         | the species              | as                                            | the        | second           | dimension. | This          | works        | because       | in the    |
| data matrix,        | by column                |                                               | major      | order,           | the iris   | species       | changes      | faster        | than the  |
| variable            | name (column).           |                                               |            |                  |            |               |              |               |           |
| > y                 | <- array(x,              | dim=c(50,                                     |            | 3,               | 4))        |               |              |               |           |
| > mean(y[,,2])      |                          | #mean                                         |            | of sepal         | width,     | all           | species      |               |           |
| [1]                 | 3.057333                 |                                               |            |                  |            |               |              |               |           |
| > mean(y[,2,3])     |                          | #mean                                         |            | of petal         | length,    |               | versicolor   |               |           |
| [1]                 | 4.26                     |                                               |            |                  |            |               |              |               |           |
| It is somewhat      | more                     | difficult                                     | to         | produce          | a 50×4×3   |               | array        | of iris data, | with      |
| species             | as the third             | dimension.                                    |            | Here             | is one     | approach.     |              | First the     | matrix is |
| sliced into         | three blocks             |                                               | of 50      | observations     | each,      | corresponding |              | to            | the three |
| species.            | Then the                 | three                                         | blocks     | are concatenated |            | into          | a vector     | length        | 600, so   |
| that species        | is changing              |                                               | the most   | slowly,          | and        | observation   |              | (row) is      | changing  |
| fastest.            | This vector              | then                                          | fills a    | 50×4×3           | array.     |               |              |               |           |
| > y                 | <- array(c(x[1:50,],     |                                               |            | x[51:100,],      |            | x[101:150,]), |              |               |           |
| + dim=c(50,         |                          | 4, 3))                                        |            |                  |            |               |              |               |           |
| > mean(y[,2,])      |                          | #mean                                         |            | of sepal         | width,     | all           | species      |               |           |
| [1]                 | 3.057333                 |                                               |            |                  |            |               |              |               |           |
| > mean(y[,3,2])     |                          | #mean                                         |            | of petal         | length,    |               | versicolor   |               |           |
| [1]                 | 4.26                     |                                               |            |                  |            |               |              |               |           |
(cid:5)
| This array | is provided | in  | R as | the data | set iris3. |     |     |     |     |
| ---------- | ----------- | --- | ---- | -------- | ---------- | --- | --- | --- | --- |
Lists
| A list       | is an ordered     | collection |            | of objects. | The           | members |        | of a list (the | com-     |
| ------------ | ----------------- | ---------- | ---------- | ----------- | ------------- | ------- | ------ | -------------- | -------- |
| ponents)     | can be different  |            | types.     | Lists       | are more      | general | than   | data frames;   | in       |
| fact, a data | frame             | is a list  | with       | class       | “data.frame”. |         | A list | can be created | by       |
| the list()   | function.         |            |            |             |               |         |        |                |          |
| Lists        | are frequently    | used       | to         | return      | several       | results | of a   | function in    | a single |
| object.      | Several classical |            | hypothesis | tests       | that          | return  | class  | htest are      | a good   |

14 Statistical Computing with R
example. See e.g. the help topic for t.test or chisq.test. Refer to the
“Value”sectionofthe documentation. The value returnedisa listcontaining
the test statistic, p-value, etc. The components of a list can be referenced by
name using $ or by position using [[ ]].
Example 1.5 (Named list)
The Wilcoxon rank sum test is implemented in the function wilcox.test.
Here the test is applied to two normal samples with different means.
w <- wilcox.test(rnorm(10), rnorm(10, 2))
> w #print the summary
Wilcoxon rank sum test
data: rnorm(10) and rnorm(10, 2)
W = 2, p-value = 4.33e-05
alternative hypothesis:
true location shift is not equal to 0
> w$statistic #stored in object w
W 2
> w$p.value
[1] 4.330035e-05
Try unlist(w)and unclass(w)to see more details. (cid:5)
Some examples of functions in this book that return a named list can be
foundinExamples7.14onpage205,10.12onpage305,and11.17onpage349.
Example 1.6 (A list of names)
Below we create a list to assign row and column names in a matrix. The
first component for row names will be NULL in this case because we do not
want to assign row names.
a <- matrix(runif(8), 4, 2) #a 4x2 matrix
dimnames(a) <- list(NULL, c("x", "y"))
Here is the 4×2 matrix with column names (type a to display it).
x y
[1,] 0.88009604 0.6583918
[2,] 0.32964955 0.1385332
[3,] 0.61625490 0.1378254
[4,] 0.08102034 0.1746324

Introduction 15
# if we want row names
> dimnames(a) <- list(letters[1:4], c("x", "y"))
> a
x y
a 0.88009604 0.6583918
b 0.32964955 0.1385332
c 0.61625490 0.1378254
d 0.08102034 0.1746324
# another way to assign row names
> row.names(a) <- list("NE", "NW", "SW", "SE")
> a
x y
NE 0.88009604 0.6583918
NW 0.32964955 0.1385332
SW 0.61625490 0.1378254
SE 0.08102034 0.1746324
(cid:5)
1.7 Workspace and Files
The workspace in R contains data and other objects. User defined objects
created in a session will persist until R is closed. If the workspace is saved
before quitting R, the objects created during the session will be saved. It is
not necessary to save the workspace for the examples and code here.
Thelscommandwilldisplaythenamesofobjectsinthecurrentworkspace.
Oneormoreobjectscanbe removedfromthe workspacebythe rmorremove
command. For more information consult the R documentation.
Note that saving objects in the workspace can lead to unexpected results
and serious hidden programming errors. For example, in the following, sup-
pose that the programmerintended to randomly generate the value of b, but
accidentally omitted the code.
y <- runif(100, 0, b)
Now, if an object named b happens to be found in the workspace, and the
valueof bproducesavalidexpressioninrunif,noerrorwillbereported. An
error will occur, but the programmer will not realize that it has occurred.
It is recommended that the user occasionally check what is stored in the
workspace, and remove unneeded objects. The entire list of objects returned
by ls() can be removed (without warning!) by rm(list = ls()).

16 Statistical Computing with R
Ingeneral,itisprobablyabadpracticeto savefunctions inthe workspace,
because the user may forget that certain objects exist and these objects are
either notdocumentedatalloronlythroughcomments. It isa better idea to
save functions in scripts and data in files. Collections of functions and data
setscanalsobeorganizedanddocumentedinpackages. (SeeSections1.8and
1.9 below.)
The Working Directory
Manyscriptsanddatasetsareprovided,andmanywillbecreatedbyusers.
Itisconvenienttocreateafolderordirectorywithashortpathnametostore
these files. In the examples, we assume that the files are located in /Rfiles,
which will be created by the user. Any other name or path can be used.
Although it is not necessary to specify the working directory, sometimes
it may be convenient to do so. A user can get or set the current working
directory by the commands getwd and setwd. To set the working directory
to“/Rfiles”,forexample,thecommandissetwd("/Rfiles"). Windowsusers
can make this change the default by editing the Properties (Start in) in the
Windows shortcut to R-GUI. More information about startup options for R
can be found in the help topic Startup.
Reading Data from External Files
Often data to be analyzed is stored in external files. Typically, data is
stored in plain text files, delimited by white space such as tabs or spaces, or
by special characters such as commas.
Univariate data from anexternalfile can be readinto a vector by the scan
command. If the file contains a data frame or a matrix, or is csv (comma
separated values) format, use the read.table function. The read.table
function has many options to support different file formats. Here are a few
simple examples that refer to data files in Hand, et al. [126]. The data files
currently are available at http://www.stat.ncsu.edu/sas/sicl/data/ or
at http://www.stat.ucla.edu/data/. To download, do not save the web
page. Instead copy the data into a local text editor and save as plain text.
Windows users note the unix style forward slashes in the path name below.
See the R for Windows FAQ [225].
forearm <- scan("/Rfiles/forearm.dat") #a vector
x <- read.table("/Rfiles/irises.dat") #a data frame
> dim(x)
[1] 50 12
#get the fourth variable in the data frame
x <- read.table("/Rfiles/irises.dat")[[4]] #a vector

Introduction 17
#read and coerce to matrix
x <- as.matrix(read.table("/Rfiles/irises.dat"))
The version of the iris data in [126] is given in a 50 by 12 array, with the
variablesincolumns1:4,5:8,and9:12correspondingtothefourmeasurements
on each of the three species. Note that many of the data files from [126] are
divided in groups by horizontal white space only (see e.g. the Tibetan skulls
data), so they may require reformatting before reading into a data frame.
The help topic for read.table also contains documentation for read.csv
and read.delim, for reading comma-separated-values (.csv) files and text
files with other delimiters. Also see Appendix B.3.4 for an example with .csv
format.
R note 1.3 By default, read.table will convert character variables to fac-
tors. To prevent conversion of character data to factors, set as.is = TRUE
(also see the colClasses argument of read.table).
One of the recommended R packages included with the distribution is
the foreign package, which provides several utility functions for reading
files in Minitab, S, SAS, SPSS, Stata, and other formats. For details type
help(package = foreign).
1.8 Using Scripts
R scripts are plain text files containing R code. Once code is saved in a
script,allofitcanbe submitted viathe sourcecommand,orpartofitcanbe
executed by copy and paste (to the console).
To save R commands in a file, prepare the file with a plain text editor
and save with extension .R. The Windows R GUI provides an integrated
texteditor. TheFilemenucontainscommands“NewScript”,“OpenScript”,
“SourceRcode”,etc. Ifascripteditorisopen,morecommandsforsubmitting
the code are provided under the Edit menu and on the toolbar.
There are many other GUI’s availablefor preparingand submitting scripts
inR.CurrentlyalistofseveralappearsattheURLwww.sciviews.org/_rgui.
The RWinEdt package [177] is particularly nice for Windows users who like
WinEdt.
The source command loads and executes the commands in the script. It
is not necessary to close the file, and in fact, it may be convenient to keep
it open for editing. Save changes before source-ing the file. For example, if
“/Rfiles/example.R” is a file containing R code, the command
source("/Rfiles/example.R")

18 Statistical Computing with R
will enter all lines of the file at the command prompt and execute the code.
Windows users should use the unix style forward slashes above or double
backslashes like the command below.
source("\\Rfiles\\example.R")
Recentcommandscanberecalledusingtheup-arrowkey. Toedityoursource
file and run it again (after saving), simply use the up-arrow to recall your
source command and press Enter.
Note that by default, evaluations of expressionsare notprinted atthe con-
sole when a script is running. Use the print command within a script to
display the value of an expression.
Thus, in interactive mode, an expression and its value are both printed
> sqrt(pi)
[1] 1.772454
but from a script it is necessary to use print(sqrt(pi)).
Alternately, set options in the source statement to control how much is
printed. By setting echo=TRUE the statements and evaluation of expressions
areechoedtotheconsole. Toseeevaluationofexpressionsbutnotstatements,
leave echo=FALSEand set print.eval=TRUE.The examples are below.
source("/Rfiles/example.R", echo=TRUE)
source("/Rfiles/example.R", print.eval=TRUE)
1.9 Using Packages
The R installation consists of the base and severalrecommended packages.
Typelibrary()toseealistofinstalledpackages. Apackagemustbeinstalled
and loaded to be available. Base packages are automatically loaded. Other
packages can be installed and loaded as needed.
Several of the recommended packages are used in this text. Some con-
tributedpackagesarealsoused. The Rsystemprovidesaninterfacetoinstall
contributed packages from CRAN as needed (see install.packages; in the
Windows GUI see the Packages menu). A frequent error is the ‘Object not
found’ error, which can occur when a symbol is used from a package that is
notavailable. If this erroroccurs,check spelling,then checkthat the package
containing the object is loaded.
To load an installed package use the library or require command. For
example, to load the recommended package boot, type library(boot) at
the command prompt. If the package is loaded, the help system for the
package is also loaded. The package can also be loaded via the Packages

Introduction 19
TABLE 1.4: Some Basic Graphics Functions in R
(graphics)and Other Packages
Method in (graphics) in (package)
Scatter plot plot
Add regressionline to plot abline
Add reference line to plot abline
Reference curve curve
Histogram hist truehist (MASS)
Bar plot barplot
Plot empirical CDF plot.ecdf
QQ Plot qqplot qqmath (lattice)
Normal QQ plot qqnorm
QQ normal ref. line qqline
Box plot boxplot
Stem plot stem
menu in the GUI. Typing the command help(package=boot)will bring up
a window showing the contents of the package,whether or not the package is
loaded. Oncethe packageis loaded,typing ?bootwillbringupthehelptopic
for the boot function in the boot package (if not loaded, use help(boot,
package=boot)).
A complete list of all available packages is provided on the CRAN web
site. A list of available packages is also included in the R FAQ [147]. Type
installed.packages()to see a list of all the installed packages.
1.10 Graphics
The R graphics package contains most of the commonly used graphics
functions. In this section, for reference, some of the graphics functions and
optionsorparametersarelisted. ExamplesofgraphicsandtheRcodeusedto
produce them appear throughout the text. See Murrell [204] for many more
examples. Maindonald and Braun [184]), and Venables and Ripley [278] also
have many examples of graphics in R.
Table1.4listssomebasic2Dgraphicsfunctions inR(graphics)andother
packages. SeveralexamplesusingthegraphicsfunctionsinTable1.4aregiven
throughoutthetext. SeeTable4.1andtheexamplesofChapter4formore2D
graphics functions and some 3D visualization methods. Also see the gallery
of graphics at http://addictedtor.free.fr/graphiques/.

20 Statistical Computing with R
Colors, plotting symbols, and line types
In most plotting functions, colors,symbols, and line types can be specified
using col, pch, and lty. The size of a symbol is specified by cex. Available
plottingcharactersareshowninthemanual[279,Ch.12],whichincludesthis
example for displaying plotting characters in a legend.
plot.new() #if a plot is not open
legend(locator(1), as.character(0:25), pch=0:25)
#then click to locate the legend
The example above can be used to display line types, by substituting lty for
pch. The following produces a display of colors.
legend(locator(1), as.character(0:8), lwd=20, col=0:8)
Other colors and color palettes are available. For example,
plot.new()
palette(rainbow(15))
legend(locator(1), as.character(1:15), lwd=15, col=1:15)
puts a 15 color rainbow palette into effect and displays the colors. Use
colors() to see the vector of named colors.
The figures in this text have been drawn in black and white. Where color
palettes would normally be used, we have substituted a grayscale palette. In
these cases, on screen it is better to substitute one of the pre-defined color
palettesoracustompalette. Todefineacolorpalette,referto?palette,and
to use a defined color palette, see the topic ?rainbow (the topics rainbow,
heat.colors, topo.colors, and terrain.colors are documented on the
same page.)
A table of plotting characters is produced by show.pch() (Hmisc). A
utility to display available colors in R is show.colors()in the DAAG package
[184]. Also see show.col()in the Hmisc package [132].
Setting the graphical parameter par(ask = TRUE) has the effect that the
graphics device will wait for user input before displaying the next plot; e.g.
the message “Waiting to confirm page change ... ” appears, and in the GUI
the user should click on the graphics window to display the next screen. To
turn off this behavior, type par(ask = FALSE).

Chapter 2
Probability and Statistics Review
Inthischapterwebrieflyreviewwithoutproofssomedefinitionsandconcepts
inprobabilityandstatistics. Manyintroductoryandmoreadvancedtextscan
be recommended for review and reference. On introductory probability see
e.g. Bean [23], Ghahramani [118], or Ross [232]. Mathematical statistics and
probability books at an advanced undergraduate or first year graduate level
include e.g. DeGroot and Schervish [64], Freund (Miller and Miller) [201],
Hogg,McKeanandCraig[146]orLarsenandMarx[170]. CasellaandBerger
[39] or Bain and Englehart[16] are somewhatmore advanced. Durrett [77] is
a graduate probability text. Lehmann [172] and Lehmann and Casella [173]
are graduate texts in statistical inference.
2.1 Random Variables and Probability
Distribution and Density Functions
The cumulative distribution function (cdf) of a random variable X is FX
defined by
FX(x)=P(X ?x), x?R.
In this book P(·) denotes the probability of its argument. We will omit the
subscriptX andwriteF(x) if itis clear incontext. The cdf hasthe following
properties:
1. FX is non-decreasing.
2. FX is right-continuous; that is,
lim FX(x+(cid:11))=FX(x), forallx?R.
(cid:2)?0+
3. lim FX(x)=0 and lim FX(x)=1.
x??? x??
A randomvariableX is continuousif FX is a continuousfunction. A random
variable X is discrete if FX is a step function.
Discrete distributions can be specified by the probability mass function
(pmf) pX(x) = P(X = x). The discontinuities in the cdf are at the points
where the pmf is positive, and p(x)=F(x)?F(x?).
21

22 Statistical Computing with R
If X is discrete, the cdf of X is
(cid:5)
FX(x)=P(X ?x)= p (k).
X
{k?x:p (k)>0}
X
Continuous distributions do not have positive probability mass at any single
point. For continuous random variables X the probability density function
(pdf) or density of X is fX(x) = F
X
(cid:5) (x), provided that FX is differentiable,
and by the fundamental theorem of calculus
(cid:6)
x
FX(x)=P(X ?x)= fX(t)dt.
??
The joint density of continuous random variables X and Y is fX,Y(x,y)
and the cdf of (X,Y) is
(cid:6) (cid:6)
y x
FX,Y(x,y)=P(X ?x;Y ?y)= fX,Y(s,t)dsdt.
?? ??
The marginal probability densities of X and Y are given by
(cid:6) (cid:6)
? ?
fX(x)= fX,Y(x,y)dy; fY(y)= fX,Y(x,y)dx.
?? ??
The correspondingformulas for discrete random variablesare similar,with
sums replacing the integrals. In the remainder of this chapter, for simplicity
fX(x) denotes eitherthe pdf(if X is continuous)orthe pmf(if X is discrete)
of X.
The set of points {x:fX(x)>0} is the support set of the randomvariable
X. Similarly, the bivariate distribution of (X,Y) is supported on the set
{(x,y):fX,Y(x,y)>0}.
Expectation, Variance, and Moments
The mean of a random variable X is the expected value or mathematical
expectationof the variable,denoted E[X]. If X is continuouswith density f,
then the expected value of X is
(cid:6)
?
E[X]= xf(x)dx.
??
If X is discrete with pmf f(x), then
(cid:5)
E[X]= xf(x).
{x:fX(x)>0}
(Theintegralsandsumsabovearenotnecessarilyfinite. Weimplicitlyassume
that E|X| < ? whenever E[X] appears in formulas below.) The expected

|          |            | Probability |     | and Statistics |        | Review   |     |      | 23       |
| -------- | ---------- | ----------- | --- | -------------- | ------ | -------- | --- | ---- | -------- |
| value of | a function | g(X)        | of  | a continuous   | random | variable | X   | with | pdf f is |
| defined  | by         |             |     | (cid:6)        |        |          |     |      |          |
?
|     |     |     | E[g(X)]= |     | g(x)f(x)dx. |     |     |     |     |
| --- | --- | --- | -------- | --- | ----------- | --- | --- | --- | --- |
??
| Let µX | = E[X]. | Then      | µX    | is also called | the         | first moment | of  | X.  | The rth |
| ------ | ------- | --------- | ----- | -------------- | ----------- | ------------ | --- | --- | ------- |
| moment | of X    | is E[Xr]. | Hence | if X is        | continuous, |              |     |     |         |
(cid:6)
?
|     |     |     | E[X | r ]= | x r fX(x)dx. |     |     |     |     |
| --- | --- | --- | --- | ---- | ------------ | --- | --- | --- | --- |
??
| The variance |           | of X                 | is the      | second central | moment,   |          |     |            |      |
| ------------ | --------- | -------------------- | ----------- | -------------- | --------- | -------- | --- | ---------- | ---- |
|              |           |                      | Var(X)=E[(X |                | ?E[X])2]. |          |     |            |      |
| The identity | E[(X      | ?E[X])2]=            |             | E[X2]?(E[X])2  |           | provides | an  | equivalent | for- |
| mula for     | variance, |                      |             |                |           |          |     |            |      |
|              |           | Var(X)=E[X2]?(E[X])2 |             |                | =E[X2]?µ2 |          | .   |            |      |
X
| The variance | of  | X is also | denoted | by  | ?2 . The | square | root of | the variance | is  |
| ------------ | --- | --------- | ------- | --- | -------- | ------ | ------- | ------------ | --- |
X
| the standard | deviation. |       | The    | reciprocal | of the        | variance | is the precision. |     |       |
| ------------ | ---------- | ----- | ------ | ---------- | ------------- | -------- | ----------------- | --- | ----- |
| The          | expected   | value | of the | product    | of continuous | random   | variables         |     | X and |
| Y with       | joint pdf  | fX,Y  | is     |            |               |          |                   |     |       |
(cid:6) (cid:6)
|                |     |          |     | ? ?        |                  |     |     |     |     |
| -------------- | --- | -------- | --- | ---------- | ---------------- | --- | --- | --- | --- |
|                |     | E[XY]=   |     |            | xyfX,Y(x,y)dxdy. |     |     |     |     |
|                |     |          |     | ?? ??      |                  |     |     |     |     |
| The covariance |     | of X and | Y   | is defined | by               |     |     |     |     |
|                |     |          |     | ?µX)(Y     | ?µY)]            |     |     |     |     |
Cov(X,Y)=E[(X
=E[XY]?E[X]E[Y]=E[XY]?µXµY.
| The covariance |     | of X and       | Y   | is also denoted | by  | ?XY. Note | that | Cov(X,X)= |     |
| -------------- | --- | -------------- | --- | --------------- | --- | --------- | ---- | --------- | --- |
| Var(X).        | The | product-moment |     | correlation     | is  |           |      |           |     |
|                |     |                |     | Cov(X,Y)        |     | ?XY       |      |           |     |
(cid:2)
|               |     | ?(X,Y)=  |         |                |                | =     | .              |     |     |
| ------------- | --- | -------- | ------- | -------------- | -------------- | ----- | -------------- | --- | --- |
|               |     |          |         | Var(X)Var(Y)   |                | ?X?Y  |                |     |     |
| Correlation   | can | also be  | written | as             |                |       |                |     |     |
|               |     |          |         | (cid:3)(cid:7) | (cid:8)(cid:7) |       | (cid:8)(cid:4) |     |     |
|               |     |          |         | X              | ?µX            | Y ?µY |                |     |     |
|               |     | ?(X,Y)=E |         |                |                |       | .              |     |     |
|               |     |          |         |                | ?X             | ?Y    |                |     |     |
| Two variables |     | X and    | Y are   | uncorrelated   | if ?(X,Y)=0.   |       |                |     |     |

24 Statistical Computing with R
Conditional Probability and Independence
Inclassicalprobability,the conditionalprobabilityofaneventAgiventhat
event B has occurred is
P(AB)
P(A|B)= ,
P(B)
where AB = A?B is the intersection of events A and B. Events A and B
are independent if P(AB) = P(A)P(B); otherwise they are dependent. The
joint probability that both A and B occur can be written
P(AB)=P(A|B)P(B)=P(B|A)P(A).
IfrandomvariablesX andY havejoint density fX,Y(x,y), then the condi-
tional density of X given Y =y is
fX,Y(x,y)
fX|Y=y(x)=
fY(y)
.
Similarly the conditional density of Y given X =x is
fX,Y(x,y)
fY|X=x(y)=
fX(x)
.
Thus, the joint density of (X,Y) can be written
fX,Y(x,y)=fX|Y=y(x)fY(y)=fY|X=x(y)fX(x).
Independence
The random variables X and Y are independent if and only if
fX,Y(x,y)=fX(x)fY(y)
for all x and y; or equivalently, if and only if FX,Y(x,y) = FX(x)FY(y), for
all x and y.
The random variables X
1
,...,Xd are independent if and only if the joint
pdf f ofX
1
,...,Xd isequaltothe productofthe marginaldensityfunctions.
That is, X
1
,...,Xd are independent if and only if
(cid:9)d
f(x
1
,...,xd)= fj(xj)
j=1
for all x = (x
1
,...,xd)T in Rd, where fj(xj) is the marginal density (or
marginal pmf) of Xj.
The variables {X
1
,...,Xn } are a random sample from a distribution FX
if X
1
,...,Xn are independently and identically distributed with distribution
FX. In this case the joint density of {X
1
,...,Xn } is
(cid:9)n
f(x
1
,...,xn)= fX(xi).
i=1

Probability and Statistics Review 25
If X and Y are independent, then Cov(X,Y) = 0 and ?(X,Y) = 0. How-
ever, the converseis not true; uncorrelatedvariables are not necessarilyinde-
pendent. The converse is true in an important special case: if X and Y are
normally distributed then Cov(X,Y)=0 implies independence.
Properties of Expected Value and Variance
Suppose that X and Y are random variables, and a and b are constants.
Then the following properties hold (provided the moments exist).
1. E[aX +b]=aE[X]+b.
2. E[X +Y]=E[X]+E[Y].
3. If X and Y are independent, E[XY]=E[X]E[Y].
4. Var(b)=0.
5. Var[aX +b]=a2Var(X).
6. Var(X +Y)=Var(X)+Var(Y)+2Cov(X,Y).
7. If X and Y are independent, Var(X +Y)=Var(X)+Var(Y).
If {X
1
,...,Xn } are independent and identically distributed (iid) we have
E[X
1
+···+Xn]=nµX, Var(X
1
+···+Xn)=n?
X
2 ,
(cid:10)
so the sample mean X =
n
1 n
i=1
Xi has expected value µX and variance
?2 /n. (Apply properties 2, 7, and 5 above.)
X
The conditional expected value of X given Y =y is
(cid:6)
?
E[X|Y =y]= xfX|Y=y(x)dx,
??
if FX|Y=y(x) is continuous.
Two important results are the conditional expectation rule and the condi-
tional variance formula:
E[X]=E[E[X|Y]] (2.1)
Var(X)=E[Var(X|Y)]+Var(E[X|Y]). (2.2)
See e.g. Ross [233, Ch. 3] for a proof of (2.1, 2.2) and many applications.
2.2 Some Discrete Distributions
Someimportantdiscretedistributionsarethe“countingdistributions.” The
counting distributions are used to model the frequency of events and waiting

26 Statistical Computing with R
timeforeventsindiscretetime,forexample. Threeimportantcountingdistri-
butions are the binomial (and Bernoulli), negative binomial (and geometric),
and Poisson.
Several discrete distributions including the binomial, geometric, and neg-
ative binomial distributions can be formulated in terms of the outcomes of
Bernoulli trials. A Bernoulli experiment has exactly two possible outcomes,
“success” or “failure.” A Bernoulli random variable X has the probability
mass function
P(X =1)=p, P(X =0)=1?p,
where p is the probability of success. It is easy to check that E[X] = p and
Var(X)=p(1?p). A sequence of Bernoulli trials is a sequence of outcomes
X ,X ,... of iid Bernoulli experiments.
1 2
Binomial and Multinomial Distribution
Suppose that X records the number of successes in n iid Bernoulli trials
with success probability p. Then X has the Binomial(n,p) distribution [ab-
breviated X ? Bin(n,p)] with
(cid:7) (cid:8)
n n!
P(X =x)= p x (1?p) n?x = p x (1?p) n?x , x=0,1,...,n.
x x!(n?x)!
Themeanandvarianceformulasareeasilyderivedbyobservingthatthatthe
binomial variable is an iid sum of n Bernoulli(p) variables. Therefore
E[X]=np, Var(X)=np(1?p).
Abinomialdistributionisaspecialcaseofamultinomialdistribution. Sup-
posethattherearek+1mutuallyexclusiveandexhaustiveeventsA
1
,...,Ak+1
thatcanoccuronanytrialofanexperiment,andeacheventoccurswithprob-
ability P(Aj)=pj, j =1,...,k+1. Let Xj record the number of times that
eventAj occursinnindependentandidenticaltrialsoftheexperiment. Then
X =(X
1
,...,Xk) has the multinomial distribution with joint pdf
f(x
1
,...,xk)=
x
1
!x
2
!.
n
.
!
.xk+1 !
p x
1
1p x
2
2...p x
k+
k+
1
1, 0?xj ?n, (2.3)
(cid:10)
where xk+1 =n? k
j=1
xj.
Geometric Distribution
Consider a sequence of Bernoulli trials, with success probability p. Let
the random variable X record the number of failures until the first success is
observed. Then
P(X =x)=p(1?p) x , x=0,1,2,.... (2.4)

Probability and Statistics Review 27
A random variable X with pmf (2.4) has the Geometric(p) distribution [ab-
breviated X ? Geom(p)]. If X ? Geom(p), then the cdf of X is
FX(x)=P(X ?x)=1?(1?p) (cid:6)x(cid:7)+1, x?0,
and otherwise FX(x)=0. The mean and variance of X are given by
1?p 1?p
E[X]= ; Var[X]= .
p p2
Alternative formulation of Geometric distribution
ThegeometricdistributionissometimesformulatedbylettingY bedefined
as the number of trials until the first success. Then Y = X +1, where X is
therandomvariabledefinedabovewithpmf(2.4). Underthismodel,wehave
P(Y =y)=p(1?p)y?1, y =1,2,..., and
1?p 1
E[Y]=E[X +1]= +1= ;
p p
1?p
Var[Y]=Var[X +1]=Var[X]= .
p2
However,asacountingdistribution,orfrequencymodel,thefirstformulation
(2.4)givenaboveis usually applied, because frequency models typically must
include the possibility of a zero count.
Negative Binomial Distribution
The negative binomial frequency model applies in the same setting as a
geometricmodel, exceptthatthe variableofinterestis the number offailures
until the rth success. Suppose that exactly X failures occur before the rth
success. If X = x, then the rth success occurs on the (x+r)th trial. In the
fi(cid:11)rstx+(cid:12) r? (cid:11)1trial(cid:12)s,there arer?1successesand x failures. This canhappen
x+r?1 = x+r?1 ways,and eachwayhas probabilityprqx. The probability
r?1 x
mass function of the random variable X is given by
(cid:7) (cid:8)
x+r?1
r x
P(X =x)= p q , x=0,1,2,.... (2.5)
r?1
The negative binomial distribution is defined for r > 0 and 0 < p < 1 as
follows. The random variable X has a negative binomial distribution with
parameters (r,p) if
?(x+r)
r x
P(X =x)= p q , x=0,1,2,..., (2.6)
?(r)?(x+1)
where ?(·) is the complete gamma function defined in (2.8). Note that (2.5)
and(2.6)areequivalentwhenrisapositiveinteger. IfX haspmf(2.6)wewill

28 Statistical Computing with R
write X ? NegBin(r,p). The special case NegBin(r = 1,p) is the Geom(p)
distribution.
Suppose that X ? NegBin(r,p), where r is a positive integer. Then X is
the iid sum of r Geom(p) variables. Therefore, the mean and variance of X
given by
1?p 1?p
E[X]=r , Var[X]=r ,
p p2
are simply r times the mean and variance of the Geom(p) variable in (2.4).
These formulas are also valid for all r >0.
Notethatlikethegeometricrandomvariable,thereisanalternativeformu-
lation of the negative binomial model that counts the number of trials until
the rth success.
Poisson Distribution
A random variable X has a Poisson distribution with parameter ? > 0 if
the pmf of X is
e???x
p(x)= , x=0,1,2,....
x!
If X ? Poisson(?) then
E[X]=?; Var(X)=?.
?
A useful recursive formula for the pmf is p(x+1)=p(x) , x=0,1,2,....
x+1
ThePoissondistributionhasmanyimportantpropertiesandapplications(see
e.g. [124, 158, 233]).
Examples
Example 2.1 (Geometric cdf)
Thecdfofthegeometricdistributionwithsuccessprobabilitypcanbederived
asfollows. Ifq =1?p,thenatthe points x=0,1,2,... the cdf ofX is given
by
(cid:5)x p(1?qx+1)
P(X ?x)= pq k =p(1+q+q2+···+q x )= =1?q x+1.
1?q
k=0
Alternately, P(X ? x) = 1?P(X ? x+1) = 1?P(first x+1 trials are
failures) =1?qx+1. (cid:5)

Probability and Statistics Review 29
Example 2.2 (Mean of the the Poisson distribution)
If X ?Poisson(?), then
(cid:5)? e???x (cid:5)? e???x?1 (cid:5)? e???x
E[X]= x =? =? =?.
x! (x?1)! x!
x=0 x=1 x=0
The last equality follows because the summand is the Poisson pmf and the
total probability must sum to 1. (cid:5)
2.3 Some Continuous Distributions
Normal Distribution
Thenormaldistributionwithmeanµandvariance?2[abbreviatedN(µ,?2)]
is the continuous distribution with pdf
(cid:13) (cid:7) (cid:8) (cid:14)
1 1 x?µ 2
f(x)= ? exp ? , ??<x<?.
2?? 2 ?
The standard normal distribution N(0,1) has zero mean and unit variance,
and the standard normal cdf is
(cid:6)
z
?(z)= ? 1 e ?t2/2dt, ??<z <?.
?? 2?
The normal distribution has several important properties. We summarize
some of these properties, without proof. For more properties and characteri-
zations see [156, Ch. 13], [210], or [270].
A linear transformation of a normal variable is also normally distributed.
If X ? N(µ,?) then the distribution of Y = aX +b is N(aµ+b,a2?2). It
follows that if X ?N(µ,?), then
X ?µ
Z = ?N(0,1).
?
Linear combinations of normal variables are normal; if X
1
,...,Xk are inde-
pendent, Xi ?N(µi,?
i
2), and a
1
,...,ak are constants, then
Y =a
1
X
1
+···+akXk
(cid:10) (cid:10)
isnormallydistributedwithmeanµ= k
i=1
aiµiandvariance?2 = k
i=1
a2
i
?
i
2.
Therefore, if X
1
,...,Xn is a random sample (X
1
,...,Xn are iid) from a
N(µ,?2)distribution,thesumY =X
1
+···+Xn isnormallydistributedwith
E[Y]=nµandVar(Y)=n?2. ItfollowsthatthesamplemeanX =Y/nhas

30 Statistical Computing with R
theN(µ,?2/n)distributionifthesampleddistributionisnormal. (Incasethe
sampled distribution is not normal, but the sample size is large, the Central
Limit Theorem implies that the distribution of Y is approximately normal.
See Section 2.5)
Gamma and Exponential Distributions
ArandomvariableX hasagammadistributionwithshapeparameterr >0
and rate parameter ?>0 if the pdf of X is
?r
f(x)= x r?1e ??x , x?0, (2.7)
?(r)
where ?(r) is the complete gamma function, defined by
(cid:6)
?
?(r)= t r?1e ?t dt, r(cid:13)=0,?1,?2,.... (2.8)
0
Recall that ?(n)=(n?1)! for positive integers n.
The notation X ? Gamma(r,?) indicates that X has the density (2.7),
with shape r and rate ?. If X ? Gamma(r,?) then
r r
E[X]= ; Var(X)= .
? ?2
Gamma distributions can also be parameterized by the scale parameter ? =
1/? instead of the rate parameter ?. In terms of (r,?) the mean is r? and
the variance is r?2. An important special case of the gamma distribution
is r = 1, which is the exponential distribution with rate parameter ?. The
Exponential(?) pdf is
f(x)=?e ??x , x?0.
If X is exponentially distributed with rate ? [abbreviatedX ? Exp(?)], then
1 1
E[X]= ; Var(X)= .
? ?2
Itcanbe shownthatthesumofiidexponentialshasagammadistribution.
If X
1
,...,Xr are iid with the Exp(?) distribution, then Y = X
1
+···+Xr
has the Gamma(r,?) distribution.
Chisquare and t
The Chisquare distribution with ? degrees of freedom is denoted by ?2(?).
The pdf of a ?2(?) random variable X is
1
f(x)= x(?/2)?1e ?x/2, x?R, ? =1,2,...,.
?(?/2)2?/2

Probability and Statistics Review 31
Note that ?2(?) is a special case of the gamma distribution, with shape pa-
rameter ?/2 and rate parameter 1/2. The square of a standard normal vari-
able has the ?2(1) distribution. If Z
1
,...,Z? are iid standard normal then
Z2+···+Z2 ??2(?). If X ??2(? ) and Y ??2(? ) are independent, then
1 ? 1 2
X +Y ??2(? +? ). If X ??2(?), then
1 2
E[X]=?, Var(X)=2?.
The Student’s t distribution [256] is defined as follows. Let Z ? N(0,1)
and V ??2(?). If Z and V are independent, then the distribution of
Z
T = (cid:2)
V/?
has the Student’s tdistribution with ? degreesof freedom,denoted t(?). The
density of a t(?) random variable X is given by
?(?+1)
1 1
f(x)= 2 ? (cid:11) (cid:12) , x?R, ? =1,2,...
?(? 2 ) ?? 1+ x ? 2 (?+1)/2
The mean and variance of X ?t(?) are given by
?
E[X]=0, ? >1; Var(X)= , ? >2.
??2
Inthespecialcase? =1thet(1)distributionisthestandardCauchydistribu-
tion. For small? the tdistributionhas“heavytails”comparedto the normal
distribution. For large ?, the t(?) distribution is approximately normal, and
t(?) converges in distribution to standard normal as ? ??.
Beta and Uniform Distributions
A random variable X with density function
?(?+?)
f(x)= x ??1(1?x) ??1, 0?x?1, ?>0, ? >0. (2.9)
?(?)?(?)
hasthe Beta(?,?)distribution. The constantinthebeta densityisthe recip-
rocal of the beta function, defined by
(cid:6)
1 ?(?)?(?)
B(?,?)= t
??1(1?t) ??1dt=
.
?(?+?)
0
The continuous uniform distribution on (0,1) or Uniform(0,1) is the special
case Beta(1,1).
The parameters ? and ? are shape parameters. When ? = ? the distrib-
ution is symmetric about 1/2. When ? (cid:13)= ? the distribution is skewed, with

32 Statistical Computing with R
the direction and amount of skewness depending on the shape parameters.
The mean and variance are
? ??
E[X]= ; Var(X)= .
?+? (?+?)2(?+?+1)
If X ? Uniform(0, 1) = Beta(1, 1), then E[X]= 1 and Var(X)= 1 .
2 12
In Bayesian analysis, a beta distribution is often chosen to model the dis-
tribution of a probability parameter, such as the probability of success in
Bernoulli trials or a binomial experiment.
Lognormal Distribution
A random variable X has the Lognormal(µ,?2) distribution [abbreviated
X ?LogN(µ,?2)]ifX =eY,whereY ?N(µ,?2). Thatis,logX ?N(µ,?2).
The lognormal density function is
fX(x)= ? 1 e ?(logx?µ)2/(2?2), x>0.
x 2??
The cdf can be evaluated by the normal cdf of logX ? N(µ,?2), so the cdf
of X ? LogN(µ,?2) is given by
(cid:7) (cid:8)
logx?µ
FX(x)=? , x>0.
?
The moments are
(cid:15) (cid:16)
1
E[X r ]=E[e rY ]=exp rµ+ r2?2 , r >0. (2.10)
2
The mean and variance are
E[X]=e µ+?2/2, Var(X)=e2µ+?2 (e ?2 ?1).
Examples
Example 2.3 (Two-parameter exponential cdf)
The two-parameter exponential density is
f(x)=?e ??(x??), x??, (2.11)
where ? and ? are positive constants. Denote the distribution with density
function (2.11) by Exp(?,?). When ? = 0 the density (2.11) is exponential
with rate ?.
The cdf of the two-parameter exponential distribution is given by
(cid:6) (cid:6)
x x??
F(x)= ?e ??(t??)dt= ?e ??u du=1?e ??(x??), x??.
? 0

Probability and Statistics Review 33
In the special case ? =0 we have the cdf of the Exp(?) distribution,
F(x)=1?e ??x , x?0.
(cid:5)
Example 2.4 (Memoryless property of the exponential distribution)
Theexponentialdistributionwithrateparameter?hasthememorylessprop-
erty. That is, if X ? Exp(?), then
P(X >s+t|X >s)=P(X >t), foralls,t?0.
The cdf of X is F(x) = 1?exp(??x), x ? 0 (see Example 2.3). Therefore,
for all s,t?0 we have
P(X >s+t) 1?F(s+t)
P(X >s+t|X >s)= =
P(X >s) 1?F(s)
e??(s+t)
= =e ??t =1?F(t)
e??s
=P(X >t).
Thefirstequalityissimplythedefinitionofconditionalprobability,P(A|B)=
P(AB)/P(B). (cid:5)
2.4 Multivariate Normal Distribution
The bivariate normal distribution
Two continuous random variables X and Y have a bivariate normal distri-
bution if the joint density of (X,Y) is the bivariate normal density function,
which is given by
(cid:15) (cid:3)(cid:7) (cid:8)
1 1 x?µ 2
f(x,y)= (cid:2) exp ? 1
2?? 1 ? 2 1??2 2(1??2) ? 1
(cid:7) (cid:8)(cid:7) (cid:8) (cid:7) (cid:8) (cid:4)(cid:16)
x?µ y?µ y?µ 2
?2? 1 2 + 2 , (2.12)
? ? ?
1 2 2
(x,y)?R2. The parameters are µ =E[X], µ =E[Y], ?2 =Var(X), ?2 =
1 2 1 2
Var(Y), and ? = Cor(X,Y). The notation (X,Y) ? BVN(µ ,µ ,?2,?2,?)
1 2 1 2
indicates that(X,Y)havethe jointpdf (2.12). Somepropertiesofthe bivari-
ate normal distribution (2.12) are:

34 Statistical Computing with R
1. ThemarginaldistributionsofXandY arenormal;thatisX ?N(µ ,?2)
1 1
and Y ?N(µ ,?2).
2 2
2. The conditional distribution of Y given X = x is normal with mean
µ +?? /? (x?µ ) and variance ?2(1??2).
2 2 1 1 2
3. The conditional distribution of X given Y = y is normal with mean
µ +?? /? (y?µ ) and variance ?2(1??2).
1 1 2 2 1
4. X and Y are independent if and only if ?=0.
Suppose (X ,X )? BVN(µ ,µ ,?2,?2,?). Let µ=(µ ,µ )T and
1 2 1 2 1 2 1 2
(cid:3) (cid:4)
? ?
?= 11 12 ,
? ?
21 22
where ?ij = Cov(Xi,Xj). Then the bivariate normal pdf (2.12) of (X
1
,X
2
)
can be written in matrix notation as
(cid:15) (cid:16)
1 1
f(x ,x )= exp ? (x?µ) T ? ?1(x?µ) ,
1 2 (2?)|?|1/2 2
where x=(x ,x )T ?R2.
1 2
The multivariate normal distribution
The joint distribution of continuous random variables X
1
,...,Xd is multi-
variatenormalord-variatenormal,denotedNd(µ,?), ifthe jointpdf is given
by
(cid:15) (cid:16)
1 1
f(x
1
,...,xd)=
(2?)d/2|?|1/2
exp ?
2
(x?µ) T ? ?1(x?µ) , (2.13)
where ? is the d×d nonsingular covariance matrix of (X
1
,...,Xd)T, µ =
(µ
1
,...,µd)T is the mean vector, and x=(x
1
,...,xd)T ?Rd.
The one-dimensional marginal distributions of a multivariate normal vari-
able are normal with mean µi and variance ?
i
2, i = 1,...,d. Here ?
i
2 is
the ith entry on the diagonal of ?. In fact, all of the marginal distributions
of a multivariate normal vector are multivariate normal (see e.g. Tong [273,
Sec. 3.3]).
ThenormalrandomvariablesX
1
,...,Xd areindependentifandonlyifthe
covariance matrix ? is diagonal.
Linear transformations of multivariate normal random vectors are multi-
variate normal. That is, if C is anm×d matrix and b=(b
1
,...,bm)T ?Rm,
then Y = CX +b has the m-dimensional multivariate normal distribution
with mean vector Cµ+b and covariance matrix C?CT.
Applicationsandpropertiesofthemultivariatenormaldistributionarecov-
ered by Anderson [8] and Mardia et al. [188]. Refer to Tong [273] for prop-
erties and characterizations of the bivariate normal and multivariate normal
distribution.

Probability and Statistics Review 35
2.5 Limit Theorems
Laws of Large Numbers
The Weak Law of Large Numbers (WLLN) or (LLN) states that the sam-
ple mean converges in probability to the population mean. Suppose that
X
1
,X
2
... are independent and ide(cid:10)ntically distributed (iid), E|X
1
|<? and
µ=E[X
1
]. For each n let Xn =
n
1 n
i=1
Xi. Then Xn ?µ in probability as
n??. That is, for every (cid:11)>0,
lim P(|Xn ?µ|<(cid:11))=1.
n?0
For a proof, see e.g. Durrett [77].
The Strong Law of Large Numbers (SLLN) states that the sample mean
converges almost surely to the population mean µ. Suppose that X ,X ,...
1 2
are pairwise independent and ide(cid:10)ntically distributed, E|X
1
| < ? and µ =
E[X
1
]. For each n let Xn =
n
1 n
i=1
Xi. Then Xn ? µ almost surely as
n??. That is, for every (cid:11)>0,
P(lim |Xn ?µ|<(cid:11))=1.
n?0
For Etemadi’s proof see Durrett [77].
Central Limit Theorem
Thefirstversionofthe CentralLimitTheoremwasprovedbyde Moivrein
theearly18th centuryforrandomsamplesofBernoullivariables. Thegeneral
proof was given independently by Lindeberg and L´evy in the early 1920’s.
THEOREM 2.1 (The Central Limit Theorem) If X
1
,...,Xn is a ran-
dom sample from a distribution with mean µ and finite variance ?2 >0, then
the limiting distribution of
X ?µ
Zn = ?
?/ n
is the standard normal distribution.
See Durrett [77] for the proofs.
2.6 Statistics
Unlessotherwisestated,X
1
,...,Xn isarandomsamplefromadistribution
with cdf FX(x) = P(X ? x), pdf or pmf fX(x), mean E[X] = µX and

36 Statistical Computing with R
variance ?2 . The subscript X on F,f,µ, and ? is omitted when it is clear in
X
context. Lowercase letters x
1
,...,xn denote an observed random sample.
A statistic is a function Tn = T(X
1
,...,Xn) of a sample. Some examples
of statis(cid:10)tics are the sample mean, sample variance, etc. The sample mean is
X =
n
1 n
i=1
Xi, and sample variance is
(cid:10)
1 (cid:5)n n X2?nX 2
S2 =
n?1
(Xi ?X)2 = i=1
n?
i
1
.
i=1
?
The sample standard deviation is S = S2.
The empirical distribution function
An estimate of F(x) = P(X ? x) is the proportion of sample points that
fall in the interval (??,x]. This estimate is called the empiricalcumulative
distributionfunction(ecdf)orempiricaldistributionfunction(edf). Theecdf
of an observed sample x
1
,...,xn is defined by
?
?0, x<x ,
(1)
Fn(x)= ?n i ,x (i) ?x<x (i+1) , i=1,...,n?1,
1, x (n) ?x,
where x (1) ?x (2) ?···?x (n) is the ordered sample.
A quantile of a distribution is found by inverting the cdf. The cdf may not
be strictly increasing, however, so the definition is as follows. The q quantile
of a random variable X with cdf F(x) is
Xq =inf{x: F(x)?q}, 0<q <1.
x
Quantilescanbeestimatedbytheinverseecdfofarandomsampleorother
functionoftheorderstatistics. Methodsforcomputingsamplequantilesdiffer
among statistical packages R, SAS, Minitab, SPSS, etc. (see Hyndman and
Fan [148] and the quantilehelp topic in R).
R note 2.1 The default method of estimation used in the R quantile func-
tion assigns cumulative probability (k?1)/(n?1) to the kth order statistic.
Thus, the empirical cumulative probabilities are defined
1 2 n?2
0, , , ..., , 1.
n?1 n?1 n?1
Note that this set of probabilities differs from the usual assignment {k/n}n
k=1
of the ecdf.

Probability and Statistics Review 37
Bias and Mean Squared Error
A statistic ?ˆ n is an unbiased estimator of a parameter ? if E[?ˆ n] = ?. An
estimator ?ˆ n is asymptotically unbiased for ? if
lim E[?ˆ n]=?.
n??
The bias of an estimator ?ˆfor a parameter ? is defined bias(?ˆ)=E[?ˆ]??.
Clearly X is an unbiased estimator of the mean µ = E[X]. It can be
shown that E[S2]= ?2 = Var(X), so the sample variance S2 is an unbiased
estimator of ?2. The maximum likelihood estimator of variance is
(cid:5)n
1
?ˆ2 = (Xi ?X)2,
n
i=1
which is a biased estimator of ?2. However, the bias ??2/n tends to zero as
n??, so ?ˆ2 is asymptotically unbiased for ?2.
The mean squared error (MSE) of an estimator ?ˆfor parameter ? is
MSE(?ˆ)=E[(?ˆ??)2].
Notice that for an unbiased estimator the MSE is the equal to the variance
of the estimator. If ?ˆ is biased for ?, however, the MSE is larger than the
variance. In fact, the MSE can be split into two parts,
MSE(?ˆ)=E[?ˆ2?2??ˆ+?2]=E[?ˆ2]?2?E[?ˆ]+?2
=E[?ˆ2]?(E[?ˆ])2+(E[?ˆ])2?2?E[?ˆ]+?2
=Var(?ˆ)+(E[?ˆ]??)2,
so the MSE is the sum of variance and squared bias:
MSE(?ˆ)=Var(?ˆ)+[bias(?ˆ)]2.
The s(cid:20)tandard error of an estimator ?ˆ is the square root of the variance:
se(?ˆ)= Var(?ˆ). An important example is the standard error of the mean
(cid:21)
(cid:20)
Var(X) ?
se(X)= Var(X)= = ?X .
n n
A sample proportionpˆis an unbiasedestimator of t(cid:2)he population proportion
p. The stan?dard error of a sample proportion is p(1?p)/n. Note that
se(pˆ)?0.5/ n.
For each fixed x ? R, the ecdf Fn((cid:2)x) is an unbiased estimator?of the cdf
F(x). The standard error of Fn(x) is F(x)(1?F(x))/n?0.5/ n.

38 Statistical Computing with R
The variance of the q sample quantile [63, 2.7] is
q(1?q)
Var(xˆq)= , (2.14)
nf(xq)2
where f is the density of the sampled distribution. When quantiles are esti-
mated,thedensityf isusuallyunknown,but(2.14)showsthatlargersamples
are needed for estimates of quantiles in the part of the support set where the
density is close to zero.
Method of Moments
(cid:10)
The rth sample moment m(cid:5) = 1 n Xr, r = 1,2,... is an unbiased es-
r n i=1 i
timator of the rth population moment E[Xr], provided that the rth moment
exists. IfX has densityf(x;?
1
,...,?k), thenthe methodofmomentsestima-
tor of ? = (?
1
,...,?k) is given by the simultaneous solution ?ˆ= (?ˆ
1
,...,?ˆ k)
of the equations
(cid:5)n
1
r (cid:5) r
E[X ]=m
r
(x
1
,...,xn)= x
i
, r =1,...,k.
n
i=1
The Likelihood Function
Suppose that the sample observations are iid froma distribution with den-
sity function f(X|?), where ? is a parameter. The likelihood function is the
conditional probability of observing the sample, given ?, which is given by
(cid:9)n
L(?)= f(xi |?). (2.15)
i=1
The parameter ? could be a vector of parameters, ? = (?
1
,...,?p). The
likelihood function regards the data as a function of the parameter(s) ?. As
L(?) is a product, it is usually easier to work with the logarithm of L(?),
called the log likelihood function,
(cid:5)n
l(?)=log(L(?))= logf(xi |?). (2.16)
i=1
Maximum Likelihood Estimation
The method of maximum likelihood was introduced by R. A. Fisher. By
maximizing the likelihood function L(?) with respect to ?, we are looking for
the most likely value of ? given the information available,namely the sample
data. Suppose that ? is the parameter space of possible values of ?. If the
maximumofL(?)existsanditoccursatauniquepoint?ˆ??,then?ˆiscalled
the maximum likelihood estimator of L(?). If the maximum exists but is not

Probability and Statistics Review 39
unique, then any of the points where the maximum is attained is an MLE of
?. For many problems, the MLE can be determined analytically. However,it
is often the case that the optimization cannot be solved analytically, and in
that case numerical optimization or other computational approaches can be
applied.
Maximumlikelihoodestimatorshaveaninvarianceproperty. Thisproperty
states that if ?ˆis an MLE of ? and ? is a function of ?, then ?(?ˆ) is an MLE
of ?(?).
Notethatthemaximumlikelihoodprinciplecanalsobeappliedinproblems
where the observed variables are not independent or identically distributed
(the likelihood function (2.15) given above is for the iid case).
Example 2.5 (Maximum likelihood estimation of two parameters)
Find the maximum likelihood estimator of ? = (?,?) for the two-parameter
exponential distribution (see Example 2.3). Suppose that x
1
,...,xn is a ran-
dom sample from the Exp(?,?) distribution. The likelihood function is
(cid:9)n
L(?)=L(?,?)= ?e ??(xi??)I(xi ??),
i=1
where I(·) is the indicator variable (I(A) = 1 on set A and I(A) = 0 on the
complement of A). Then if x
(1)
=min{x
1
,...,xn }, we have
(cid:5)n
L(?)=L(?,?)=? n exp{?? (xi ??)}, x
(1)
??,
i=1
and the log-likelihood is given by
(cid:5)n
l(?)=l(?,?)=nlog??? (xi ??), x
(1)
??.
i=1
Then l(?) is an increasing function of ? for every fixed ?, and ? ? x , so
(1)
?ˆ=x . To find the maximum of l(?) with respect to ?, solve
(1)
(cid:5)n
?l(?,?) n
= ? (xi ??)=0,
?? ?
i=1
to find the critical point ?=1/(x¯??). The MLE of ? =(?,?) is
(cid:7) (cid:8)
1
(?ˆ,?ˆ)= , x .
x¯?x (1)
(1)
(cid:5)

| 40           |         |             | Statistical |           | Computing | with              | R   |         |          |
| ------------ | ------- | ----------- | ----------- | --------- | --------- | ----------------- | --- | ------- | -------- |
| Example      | 2.6     | (Invariance |             | property  | of MLE)   |                   |     |         |          |
| Find the     | maximum |             | likelihood  | estimator |           | of the ?-quantile |     | of the  | Exp(?,?) |
| distribution | in      | Examples    | 2.3         | and       | 2.5. From | Example           | 2.3 | we have |          |
??(x??),
|           |         |     | F(x)=1?e |      |     | x??. |     |     |     |
| --------- | ------- | --- | -------- | ---- | --- | ---- | --- | --- | --- |
| Therefore | F(x?)=? |     | implies  | that |     |      |     |     |     |
1
|     |     |     | x?  | =?  | log(1??)+?, |     |     |     |     |
| --- | --- | --- | --- | --- | ----------- | --- | --- | --- | --- |
?
| and by | the invariance |     | property    | of  | maximum     | likelihood, |     | the MLE of | x? is |
| ------ | -------------- | --- | ----------- | --- | ----------- | ----------- | --- | ---------- | ----- |
|        |                |     | xˆ? =?(x¯?x |     | )log(1??)+x |             | .   |            |       |
|        |                |     |             |     | (1)         |             | (1) |            |       |
(cid:5)
| 2.7       | Bayes’ | Theorem |                        | and | Bayesian | Statistics |                          |     |     |
| --------- | ------ | ------- | ---------------------- | --- | -------- | ---------- | ------------------------ | --- | --- |
| The Law   | of     | Total   | Probability            |     |          |            |                          |     |     |
| IfeventsA |        | ,...,Ak | partitionasamplespaceS |     |          |            | intomutuallyexclusiveand |     |     |
1
| exhaustivenonemptyevents,thentheLaw |     |       |       |      |          | of TotalProbability |     | statesthatthe |     |
| ----------------------------------- | --- | ----- | ----- | ---- | -------- | ------------------- | --- | ------------- | --- |
| total probability                   |     | of an | event | B is | given by |                     |     |               |     |
B)+···+P(AkB)
| P(B)=P(A |        | 1 B)+P(A |        | 2       |        |                    |     |     |     |
| -------- | ------ | -------- | ------ | ------- | ------ | ------------------ | --- | --- | --- |
|          | =P(B|A |          |        | )+P(B|A |        | )+···+P(B|Ak)P(Ak) |     |     |     |
|          |        |          | 1 )P(A | 1       | 2 )P(A | 2                  |     |     |     |
(cid:5)k
P(B|Aj)P(Aj).
=
j=1
| For continuous |     | randomvariables   |     |     | X and | Y we have | the | distributional | form |
| -------------- | --- | ----------------- | --- | --- | ----- | --------- | --- | -------------- | ---- |
| of the Law     | of  | Total Probability |     |     |       |           |     |                |      |
(cid:6)
?
|     |     |     | fY(y)= |     | fY|X=x(y)fX(x)dx. |     |     |     |     |
| --- | --- | --- | ------ | --- | ----------------- | --- | --- | --- | --- |
??
| For discrete | random |                   | variables | X and | Y   | we can write | the | distributional | form |
| ------------ | ------ | ----------------- | --------- | ----- | --- | ------------ | --- | -------------- | ---- |
| of the Law   | of     | Total Probability |           | as    |     |              |     |                |      |
(cid:5)
=y|X
|     | fY(y)=P(Y |     | =y)= |     | P(Y |     | =x)P(X | =x). |     |
| --- | --------- | --- | ---- | --- | --- | --- | ------ | ---- | --- |
x

Probability and Statistics Review 41
Bayes’ Theorem
Bayes’ Theorem provides a method for inverting conditional probabilities.
In its simplest form, if A and B are events and P(B)>0, then
P(B|A)P(A)
P(A|B)= .
P(B)
OftentheLawofTotalProbabilityisappliedtocomputeP(B)inthedenom-
inator. These formulas follow from the definitions of conditional and joint
probability.
ForcontinuousrandomvariablesthedistributionalformofBayes’Theorem
is
fX|Y=y(x)= fY|X=
f
x
Y
(
(
y
y
)
)
fX(x) = (cid:22)
?
?
?
fY
fY
|X
|X
=
=
x(
x
y
(y
)f
)
X
fX
(x
(x
)
)dx
.
For discrete random variables
P(Y =y|X =x)P(X =x)
fX|Y=y(x)=P(X =x|Y =y)= (cid:10)
{P(Y =y|X =x)P(X =x)}
.
x
Theseformulasfollowfromthedefinitionsofconditionalandjointprobability.
Bayesian Statistics
In the frequentist approach to statistics, the parameters of a distribution
are considered to be fixed but unknown constants. The Bayesian approach
views the unknown parameters of a distribution as random variables. Thus,
in Bayesiananalysis,probabilities can be computed for parametersas well as
the sample statistics.
Bayes’Theoremallowsoneto revisehis/herpriorbelief aboutanunknown
parameter based on observed data. The prior belief reflects the relative
weights that one assigns to the possible values for the parameters. Suppose
that X has the density f(x|?). The conditional density of ? given the sample
observations x
1
,...,xn is called the posterior density, defined by
f?|x(?)= (cid:22)
f
f
(
(
x
x
1
1
,
,
.
.
.
.
.
.
,
,
x
x
n
n
|
|
?
?
)
)
f
f
?
?
(
(
?
?
)
)
d?
,
wheref?(?)isthepdfofthepriordistributionof?. Theposteriordistribution
summarizes our modified beliefs about the unknown parameters, taking into
account the data that has been observed. Then one is interested in comput-
ing posterior quantities such as posterior means, posterior modes, posterior
standard deviations, etc.
Notethatanyconstantinthelikelihoodfunctioncancelsoutoftheposterior
density. The basic relation is
posterior ?prior×likelihood,

42 Statistical Computing with R
which describes the shape of the posteriordensity up to a multiplicative con-
stant. Oftenthe evaluationofthe constantisdifficultandtheintegralcannot
be obtained in closed form. However, Monte Carlo methods are available
that do not require the evaluation of the constant in order to sample from
the posterior distribution and estimate posterior quantities of interest. See
e.g. [44, 103, 106, 120, 228] on development of Markov Chain Monte Carlo
sampling.
ReadersarereferredtoLee[171]foranintroductorypresentationofBayesian
statistics. Albert [5] is a goodintroduction to computational Bayesianmeth-
odswithR.Atextbookcoveringprobabilityandmathematicalstatisticsfrom
bothaclassicalandBayesianperspectiveatanadvancedundergraduatelevel
is DeGroot and Schervish [64].
2.8 Markov Chains
In this section we briefly review discrete time, discrete state space Markov
chains. A basic understanding of Markov chains is necessary background for
Chapter 9 on Markov Chain Monte Carlo methods. Readers are referred to
Ross [234, Ch. 4] for an excellent introduction to Markov chains.
A Markov chain is a stochastic process {Xt } indexed by time t ? 0. Our
goalistogenerateachainbysimulation,soweconsiderdiscretetimeMarkov
chains. The time index will be the nonnegative integers, so that the process
startsinstateX
0
andmakessuccessivetransitionstoX
1
,X
2
,...,Xt,.... The
set of possible values of Xt is the state space.
SupposethatthestatespaceofaMarkovchainisfiniteorcountable. With-
out loss of generality, we can suppose that the states are 0,1,2,.... The
sequence {Xt |t?0} is a Markov chain if
P(Xt+1 =j|X
0
=i
0
,X
1
=i
1
,...,Xt?1 =it?1 ,Xt =i)=
P(Xt+1 =j|Xt =i),
for all pairs of states (i,j), t ? 0. In other words, the transition probability
depends only on the current state, and not on the past.
If the state space is finite, the transition probabilities P(Xt+1 |Xt) can be
represented by a transition matrix P=(pij) where the entry pij is the prob-
ability that the chain makes a transition to state j in one step starting from
state i. The probability that the chain moves from state i to state j in k
steps is
p(k),
and the Chapman-Kolmogorov equations (see e.g. [234, Ch. 4])
ij
provide that the k-step transition probabilities are the entries of the matrix
Pk. That is, P(k) =(p(k))=Pk, the kth power of the transition matrix.
ij
AMarkovchainisirreducible ifallstatescommunicatewithallotherstates:
giventhatthe chainis instatei,there isapositive probabilitythatthe chain

Probability and Statistics Review 43
canenterstatejinfinitetime,forallpairsofstates(i,j). Astateiisrecurrent
if the chain returns to i with probability 1; otherwise state i is transient. If
the expected time until the chain returns to i is finite, then i is nonnull or
positive recurrent. The period of a state i is the greatest common divisor of
the lengths of paths starting and ending at i. In an irreducible chain, the
periods of allstates areequal, and the chain is aperiodic if the states all have
period 1. Positive recurrent, aperiodic states are ergodic. In a finite-state
Markov chain all recurrent states are positive recurrent.
Inanirreducible,ergodicMarkovchainthetransitionprobabilitiesconverge
to a stationary distribution ? on the state space, independent of the initial
state of the chain.
Inafinite-stateMarkovchain,irreducibilityandaperiodicityimplythatfor
all states j
?j = lim p
i
(
j
n)
n??
exists and is independent of the initial state i. The probability distribution
? ={?j }iscalledthestationarydistribution,and? istheuniquenonnegative
solution to the system of equations
(cid:5)? (cid:5)?
?j = ?ipij, j ?0; ?j =1. (2.17)
i=0 j=0
We can interpret ?j as the (limiting) proportion of time that the chain is in
state j.
Example 2.7 (Finite state Markov chain)
Ross[234]givesthefollowingexampleofaMarkovchainmodelformutations
of DNA. A DNA nucleotide has four possible values. For each unit of time
the model specifies that the nucleotide changes with probability 3?, for some
0 < ? < 1/3. If it does change, then it is equally likely to change to any of
the other three values. Thus pii = 1?3? and pij = 3?/3 = ?,i (cid:13)= j. If we
number the states 1 to 4, the transition matrix is
? ?
1?3? ? ? ?
P= ? ? ? ? ? 1? ? 3? 1? ? 3? ? ? ? ? ? (2.18)
? ? ? 1?3?
where pij = P i,j is the probability of a mutation from state i to state j.
The ith row of a transition matrix is the conditional probability distribution
P(Xn+1 = j|Xn = i), j = 1,2,3,4 of a transition to state j given that the
process is currently in state i. Thus each row must sum to 1 (the matrix is
row stochastic). This matrix happens to be doubly stochastic because the
columns also sum to 1, but in general a transition matrix need only be row
stochastic.

44 Statistical Computing with R
Suppose that ?=0.1. Then the two-stepand the 16-steptransitionmatri-
ces are
? ? ? ?
0.520.160.160.16 0.26260.24580.24580.2458
? ? ? ?
P2 = ? ? 0.160.520.160.16? ?, P16 = . ? ? 0.24580.26260.24580.2458? ?.
0.160.160.520.16 0.24580.24580.26260.2458
0.160.160.160.52 0.24580.24580.24580.2626
The three-step transition matrix is P2P = P3, etc. The probability p(2)
14
of transition from state 1 to state 4 in two steps is P2 = 0.16, and the
1,4
probability that the process returns to state 2 from state 2 in 16 steps is
p(16) =P16 =0.2626.
22 2,2
AllentriesofParepositive,henceallstatescommunicate;thechainisirre-
ducible and ergodic. The transition probabilities in every row are converging
to the same stationary distribution ? on the four states. The stationary dis-
tributionisthesolutionofequations(2.17);inthiscase?(i)= 1,i=1,2,3,4.
4
(Inthisexample,itcanbeshownthatthelimitingprobabilitiesdonotdepend
on ?: Pn = 1 + 3(1?4?)n ? 1 as n??.) (cid:5)
ii 4 4 4
Example 2.8 (Random walk)
An example of a discrete-time Markov chain with an infinite state space is
the randomwalk. The state space is the set ofallintegers,andthe transition
probabilities are
pi,i+1 =p, i=0,±1,±2,...,
pi,i?1 =1?p, i=0,±1,±2,...,
pi,j =0, j ?/ {i?1,i+1}.
In the random walk model, at each transition a step of unit length is taken
at random to the right with probability p or left with probability 1?p. The
state of the process at time n is the current location of the walker at time n.
Another interpretation considers the gambler who bets $1 on a sequence of
Bernoulli(p)trialsandwinsorloses$1ateachtransition;if X =0,the state
0
of the process at time n is his gain or loss after n trials.
In the random walk model all states communicate, so the chain is irre-
ducible. All states have period 2. For example, it is impossible to return to
state 0 starting from 0 in an odd number of steps. The probability that the
first return to 0 from state 0 occurs in exactly 2n steps is
(cid:7) (cid:8)
p(2n) = 2n p n (1?p) n = (2n)! (p(1?p)) n .
00 n n!n!
(cid:10)
It can be shown that ? p(2n) < ? if and only if p (cid:13)= 1/2. Thus, the
n=1 00
expected number of visits to 0 is finite if and only if p (cid:13)= 1/2. Recurrence

|                | Probability      |             | and Statistics | Review              |                   | 45      |
| -------------- | ---------------- | ----------- | -------------- | ------------------- | ----------------- | ------- |
| and transience | are class        | properties, | hence the      | chainis recurrentif | and               | only if |
| p = 1/2        | and otherwise    | all states  | are transient. | When p =            | 1/2 the process   | is      |
| called a       | symmetric random | walk.       | The symmetric  | random              | walk is discussed |         |
| in Example     | 3.26.            |             |                |                     |                   | (cid:5) |

Chapter 3
Methods for Generating Random
Variables
3.1 Introduction
One of the fundamental tools required in computational statistics is the
ability to simulate random variables from specified probability distributions.
On this topic many excellent references are available. On the general subject
of methods for generating random variates from specified probability distrib-
utions, readers are referred to [69, 94, 112, 114, 154, 228, 223, 233, 238]. On
specific topics, also see [3, 4, 31, 43, 68, 98, 155, 159, 190].
In the simplest case, to simulate drawing an observation at random from
a finite population, a method of generating random observations from the
discrete uniform distribution is required. Therefore a suitable generator of
uniformpseudorandomnumbersisessential. Methodsforgeneratingrandom
variatesfromotherprobabilitydistributionsalldependontheuniformrandom
number generator.
In this text we assume that a suitable uniform pseudo random number
generator is available. Refer to the help topic for .Random.seed or RNGkind
for details about the default random number generator in R. For reference
about different types of random number generators and their properties see
Gentle [112] and Knuth [164].
The uniform pseudo random number generator in R is runif. To gener-
ate a vector of n (pseudo) random numbers between 0 and 1 use runif(n).
Throughout this text, whenever computer generated random numbers are
mentioned, it is understood that these are pseudo random numbers. To gen-
erate n random Uniform(a,b) numbers use runif(n, a, b). To generate an
nbymmatrixofrandomnumbersbetween0and1usematrix(runif(n*m),
nrow=n, ncol=m) or matrix(runif(n*m), n, m).
In the examples of this chapter, several functions are given for generating
randomvariatesfromcontinuousanddiscreteprobabilitydistributions. Gen-
erators for many of these distributions are available in R (e.g. rbeta, rgeom,
rchisq,etc.),butthemethodspresentedbelowaregeneralandapplytomany
other types of distributions. These methods are also applicable for external
libraries, stand alone programs,or nonstandard simulation problems.
47

48 Statistical Computing with R
Most of the examples include a comparison of the generated sample with
the theoretical distribution of the sampled population. In some examples,
histograms, density curves, or QQ plots are constructed. In other examples
summary statistics such as sample moments, sample percentiles, or the em-
pirical distribution are compared with the corresponding theoretical values.
These are informal approaches to check the implementation of an algorithm
for simulating a random variable.
Example 3.1 (Sampling from a finite population)
The sample function can be used to sample from a finite population, with or
without replacement.
> #toss some coins
> sample(0:1, size = 10, replace = TRUE)
[1] 0 1 1 1 0 1 1 1 1 0
> #choose some lottery numbers
> sample(1:100, size = 6, replace = FALSE)
[1] 51 89 26 99 74 73
> #permuation of letters a-z
> sample(letters)
[1] "d" "n" "k" "x" "s" "p" "j" "t" "e" "b" "g"
"a" "m" "y" "i" "v" "l" "r" "w" "q" "z"
[22] "u" "h" "c" "f" "o"
> #sample from a multinomial distribution
> x <- sample(1:3, size = 100, replace = TRUE,
prob = c(.2, .3, .5))
> table(x)
x
1 2 3
17 35 48
(cid:5)
Random Generators of Common Probability Distributions in R
In the sections that follow, various methods of generating random variates
fromspecifiedprobabilitydistributionsarepresented. Beforediscussingthose
methods, however,itisusefulto summarizesomeofthe probabilityfunctions
available in R. The probability mass function (pmf) or density (pdf), cumu-
lative distribution function (cdf), quantile function, and randomgeneratorof
many commonly used probability distributions are available. For example,
four functions are documented in the help topic Binomial:
dbinom(x, size, prob, log = FALSE)
pbinom(q, size, prob, lower.tail = TRUE, log.p = FALSE)
qbinom(p, size, prob, lower.tail = TRUE, log.p = FALSE)
rbinom(n, size, prob)

Methods for Generating Random Variables 49
The same pattern is applied to other probability distributions. In each case,
the abbreviationfor the name ofthe distributionis combinedwith firstletter
dfordensityorpmf,pforcdf,qforquantile,orrforrandomgenerationfrom
the distribution.
A partial list of available probability distributions and parameters is given
in Table 3.1. For a complete list, refer to the R documentation [279, Ch. 8].
In addition to the parameterslisted, some ofthe functions take optionallog,
lower.tail, or log.p arguments, and some take an optional ncp (noncen-
trality) parameter.
TABLE 3.1: Selected Univariate Probability Functions
Available in R
Distribution cdf Generator Parameters
beta pbeta rbeta shape1, shape2
binomial pbinom rbinom size, prob
chi-squared pchisq rchisq df
exponential pexp rexp rate
F pf rf df1, df2
gamma pgamma rgamma shape, rate or scale
geometric pgeom rgeom prob
lognormal plnorm rlnorm meanlog, sdlog
negative binomial pnbinom rnbinom size, prob
normal pnorm rnorm mean, sd
Poisson ppois rpois lambda
Student’s t pt rt df
uniform punif runif min, max
3.2 The Inverse Transform Method
The inverse transform method of generating random variables is based on
the following well known result (see e.g. [16, p. 201] or [231, p. 203]).
THEOREM 3.1 (Probability Integral Transformation) IfX is acon-
tinuous random variable with cdf FX(x), then U =FX(X)? Uniform(0, 1).
The inverse transform method of generating random variables applies the
probability integral transformation. Define the inverse transformation
F
X
?1(u)=inf{x: FX(x)=u}, 0<u<1.

50 Statistical Computing with R
If U ? Uniform(0, 1), then for all x?R
P(F
X
?1(U)?x)=P(inf{t: FX(t)=U}?x)
=P(U ?FX(x))
=FU(FX(x))=FX(x),
and therefore F
?1(U)
has the same distribution as X. Thus, to generate a
X
randomobservationX,firstgenerateaUniform(0,1)variateuanddeliverthe
inversevalueF
?1(u).
Themethodiseasytoapply,providedthatF
?1
iseasy
X X
tocompute. Themethodcanbeappliedforgeneratingcontinuousordiscrete
random variables. The method can be summarized as follows.
1. Derive the inverse function F
?1(u).
X
2. Write a command or function to compute F
?1(u).
X
3. For each random variate required:
(a) Generate a random u from Uniform(0,1).
(b) Deliver x=F
?1(u)
X
3.2.1 Inverse Transform Method, Continuous Case
Example 3.2 (Inverse transform method, continuous case)
Thisexampleusestheinversetransformmethodtosimulatearandomsample
from the distribution with density fX(x)=3x2, 0<x<1.
Here FX(x) = x3 for 0 < x < 1, and F
X
?1(u) = u1/3. Generate all n
required random uniform numbers as vector u. Then u^(1/3) is a vector of
length n containing the sample x
1
,...,xn.
n <- 1000
u <- runif(n)
x <- u^(1/3)
hist(x, prob = TRUE) #density histogram of sample
y <- seq(0, 1, .01)
lines(y, 3*y^2) #density curve f(x)
The histogramand density plot in Figure 3.1 suggeststhat the empiricaland
theoretical distributions approximately agree. (cid:5)
R note 3.1 In Figure 3.1, the title includes a math expression. This title is
obtainedbyspecifyingthemaintitleusingtheexpressionfunctionasfollows:
hist(x, prob = TRUE, main = expression(f(x)==3*x^2))

Methods for Generating Random Variables 51
f(x)=3x2
x
ytisneD
0.0 0.2 0.4 0.6 0.8 1.0
5.2
0.2
5.1
0.1
5.0
0.0
FIGURE3.1: Probabilitydensityhistogramofarandomsamplegenerated
by the inversetransformmethod inExample3.2,withthe theoreticaldensity
f(x)=3x2 superimposed.
Alternately, main = bquote(f(x)==3*x^2)) produces the same title. Math
annotation is covered in the help topic for plotmath. Also see the help topics
for text and axis.
Example 3.3 (Exponential distribution)
This example applies the inverse transform method to generate a random
sample from the exponential distribution with mean 1/?.
If X ? Exp(?), then for x > 0 the cdf of X is FX(x) = 1?e??x. The
inverse transformation is F ?1(u) = ?1 log(1?u). Note that U and 1?U
X ?
havethesamedistributionanditissimplertosetx=?1 log(u). Togenerate
?
a random sample of size n with parameter lambda:
-log(runif(n)) / lambda
A generator rexp is available in R. However,this algorithm is very useful for
implementation in other situations, such as a C program. (cid:5)
3.2.2 Inverse Transform Method, Discrete Case
Theinversetransformmethodcanalsobe appliedtodiscretedistributions.
If X is a discrete random variable and
...<xi?1 <xi <xi+1 <...

52 Statistical Computing with R
are the points of discontinuity of FX(x), then the inverse transformation is
F
X
?1(u)=xi, where FX(xi?1 )<u?FX(xi).
For each random variate required:
1. Generate a random u from Uniform(0,1).
2. Deliver xi where F(xi?1 )<u?F(xi).
The solution of F(xi?1 ) < u ? F(xi) in Step (2) may be difficult for
some distributions. See Devroye [69, Ch. III] for several different methods of
implementing the inverse transform method in the discrete case.
Example 3.4 (Two point distribution)
This example applies the inverse transform to generate a random sample of
Bernoulli(p = 0.4) variates. Although there are simpler methods to generate
a two point distribution in R, this example illustrates computing the inverse
cdf of a discrete random variable in the simplest case.
Inthis example,FX(0)=fX(0)=1?p andFX(1)=1. Thus,F
X
?1(u)=1
if u >0.6 and F ?1(u)=0 if u? 0.6. The generator should therefore deliver
X
the numerical value of the logical expression u>0.6.
n <- 1000
p <- 0.4
u <- runif(n)
x <- as.integer(u > 0.6) #(u > 0.6) is a logical vector
> mean(x)
[1] 0.41
> var(x)
[1] 0.2421421
Compare the sample statistics with the theoretical moments. The sample
mean of a generated sample should be approximatelyp=0.4 and the sample
variance should(cid:2)be approximately p(1?p) = 0.24. Our sample statistics are
. .
x¯=0.41 (se= 0.24/1000=0.0155) and s2 =0.242. (cid:5)
R note 3.2 In R one can use the rbinom (random binomial) function with
size=1 to generate a Bernoulli sample. Another method is to sample from
the vector (0,1) with probabilities (1?p, p).
rbinom(n, size = 1, prob = p)
sample(c(0,1), size = n, replace = TRUE, prob = c(.6,.4))
Also see Example 3.1.

Methods for Generating Random Variables 53
Example 3.5 (Geometric distribution)
Use the inverse transform method to generate a random geometric sample
with parameter p=1/4.
The pmf is f(x) = pqx, x = 0,1,2,..., where q = 1?p. At the points
of discontinuity x = 0,1,2,..., the cdf is F(x) = 1?qx+1. For each sample
element we need to generate a random uniform u and solve
1?q x <u?1?q x+1.
This inequality simplifies to x < log(1?u)/log(q) ? x+1. The solution
is x+1 = (cid:3)log(1?u)/log(q)(cid:4), where (cid:3)t(cid:4) denotes the ceiling function (the
smallest integer not less than t).
n <- 1000
p <- 0.25
u <- runif(n)
k <- ceiling(log(1-u) / log(1-p)) - 1
Here again there is a simplification, because U and 1 ? U have the same
distribution. Also,theprobabilitythatlog(1?u)/log(1?p)equalsaninteger
is zero. The last step can therefore be simplified to
k <- floor(log(u) / log(1-p))
(cid:5)
The geometricdistributionwasparticularlyeasy tosimulate by the inverse
transform method because it was easy to solve the inequality
F(x?1)<u?F(x)
ratherthancompareeachutoallthepossiblevaluesF(x). Thesamemethod
appliedtothePoissondistributionismorecomplicatedbecausewedonothave
an explicit formula for the value of x such that F(x?1)<u?F(x).
TheRfunctionrpoisgeneratesrandomPoissonsamples. Thebasicmethod
to generate a Poisson(?) variate (see e.g. [233]) is to generate and store the
cdf via the recursive formula
?f(x)
f(x+1)= ; F(x+1)=F(x)+f(x+1).
x+1
For each Poisson variate required, a random uniform u is generated, and the
cdf vector is searched for the solution to F(x?1)<u?F(x).
To illustrate the main idea of the inverse transform method for generating
Poisson variates, here is a similar example for which there is no R generator
available: the logarithmic distribution. The logarithmic distribution is a one
parameter discrete distribution supported on the positive integers.

54 Statistical Computing with R
Example 3.6 (Logarithmic distribution)
This example implements a function to simulate a Logarithmic(?) random
sample by the inverse transformmethod. A randomvariable X has the loga-
rithmic distribution (see [158], Ch. 7) if
a?x
f(x)=P(X =x)= , x=1,2,... (3.1)
x
where 0<? <1 and a=(?log(1??))?1. A recursive formula for f(x) is
?x
f(x+1)= f(x), x=1,2,.... (3.2)
x+1
Theoretically, the pmf can be evaluated recursively using (3.2), but the
calculation is not sufficiently accurate for large values of x and ultimately
produces f(x)=0 with F(x)<1. Instead we compute the pmf from (3.1) as
exp(loga+xlog??logx). In generating a large sample, there will be many
repetitive calculations of the same values F(x). It is more efficient to store
the cdf values. Initially choose a length N for the cdf vector, and compute
F(x), x=1,2,...,N. If necessary, N will be increased.
TosolveF(x?1)<u?F(x)foraparticularu,itisnecessarytocountthe
numberofvaluesxsuchthatF(x?1)<u. IfF isavectorandui isascalar,
then the expression F < ui produces a logical vector; that is, a vector the
same length as F containing logical values TRUE or FALSE. In an arithmetic
expression, TRUE has value 1 and FALSE has value 0. Notice that the sum of
the logical vector (ui >F) is exactly x?1.
The code for logarithmicis on the next page. Generate random samples
from a Logarithmic(0.5) distribution.
n <- 1000
theta <- 0.5
x <- rlogarithmic(n, theta)
#compute density of logarithmic(theta) for comparison
k <- sort(unique(x))
p <- -1 / log(1 - theta) * theta^k / k
se <- sqrt(p*(1-p)/n) #standard error
Inthefollowingresults,therelativefrequenciesofthesample(firstline)match
the theoretical distribution (second line) of the Logarithmic(0.5)distribution
within two standard errors.
> round(rbind(table(x)/n, p, se),3)
1 2 3 4 5 6 7
0.741 0.169 0.049 0.026 0.008 0.003 0.004
p 0.721 0.180 0.060 0.023 0.009 0.004 0.002
se 0.014 0.012 0.008 0.005 0.003 0.002 0.001
(cid:5)

Methods for Generating Random Variables 55
rlogarithmic <- function(n, theta) {
#returns a random logarithmic(theta) sample size n
u <- runif(n)
#set the initial length of cdf vector
N <- ceiling(-16 / log10(theta))
k <- 1:N
a <- -1/log(1-theta)
fk <- exp(log(a) + k * log(theta) - log(k))
Fk <- cumsum(fk)
x <- integer(n)
for (i in 1:n) {
x[i] <- as.integer(sum(u[i] > Fk)) #F^{-1}(u)-1
while (x[i] == N) {
#if x==N we need to extend the cdf
#very unlikely because N is large
logf <- log(a) + (N+1)*log(theta) - log(N+1)
fk <- c(fk, exp(logf))
Fk <- c(Fk, Fk[N] + fk[N+1])
N <- N + 1
x[i] <- as.integer(sum(u[i] > Fk))
}
}
x + 1
}
Remark 3.1 A more efficient generator for the Logarithmic(?) distribution
is implemented in Example 3.9 of Section 3.4.
3.3 The Acceptance-Rejection Method
Suppose that X and Y are random variables with density or pmf f and g
respectively, and there exists a constant c such that
f(t)
?c
g(t)
for all t such that f(t)>0. Then the acceptance-rejection method (or rejec-
tion method) can be applied to generate the random variable X.
The Acceptance-Rejection Method
1. Find a random variable Y with density g satisfying f(t)/g(t) ? c, for
all t such that f(t)>0. Provide a method to generate random Y.

56 Statistical Computing with R
2. For each random variate required:
(a) Generate a random y from the distribution with density g.
(b) Generate a random u from the Uniform(0, 1) distribution.
(c) If u < f(y)/(cg(y)) accept y and deliver x = y; otherwise reject y
and repeat from step (2a).
Note that in step (2c),
(cid:11) (cid:29) (cid:12)
P(accept|Y)=P U < f(Y) (cid:29) Y = f(Y) .
cg(Y) cg(Y)
The last equality is simply evaluating the cdf of U. The total probability of
acceptance for any iteration is therefore
(cid:5) (cid:5)
f(y) 1
P(accept|y)P(Y =y)= g(y)= ,
cg(y) c
y y
and the number of iterations until acceptance has the geometric distribution
with mean c. Hence, on averageeach sample value of X requiresc iterations.
For efficiency, Y should be easy to simulate and c small.
To see that the accepted sample has the same distribution as X, apply
Bayes’ Theorem. In the discrete case, for each k such that f(k)>0,
P(accepted|k)g(k) [f(k)/(cg(k))]g(k)
P(k |accepted)= = =f(k).
P(accepted) 1/c
The continuous case is similar.
Example 3.7 (Acceptance-rejection method)
Thisexampleillustratestheacceptance-rejectionmethodforthebetadistrib-
ution. Onaverage,howmanyrandomnumbersmustbesimulatedtogenerate
1000 variates from the Beta(? = 2, ? = 2) distribution by this method? It
depends on the upper bound c of f(x)/g(x), which depends on the choice of
the function g(x).
The Beta(2,2) density is f(x) = 6x(1?x), 0 < x < 1. Let g(x) be the
Uniform(0,1) density. Then f(x)/g(x) ? 6 for all 0 < x < 1, so c = 6. A
random x from g(x) is accepted if
f(x) 6x(1?x)
= =x(1?x)>u.
cg(x) 6(1)
Onaverage,cn=6000iterations(12000randomnumbers)willberequiredfor
a sample size 1000. In the following simulation, the counter j for iterations
is not necessary, but included to record how many iterations were actually
needed to generate the 1000 beta variates.

Methods for Generating Random Variables 57
n <- 1000
k <- 0 #counter for accepted
j <- 0 #iterations
y <- numeric(n)
while (k < n) {
u <- runif(1)
j <- j + 1
x <- runif(1) #random variate from g
if (x * (1-x) > u) {
#we accept x
k <- k + 1
y[k] <- x
}
}
> j
[1] 5873
In this simulation, 5873 iterations (11746 random numbers) were required
to generate the 1000 beta variates. Compare the empirical and theoretical
percentiles.
#compare empirical and theoretical percentiles
p <- seq(.1, .9, .1)
Qhat <- quantile(y, p) #quantiles of sample
Q <- qbeta(p, 2, 2) #theoretical quantiles
se <- sqrt(p * (1-p) / (n * dbeta(Q, 2, 2))) #see Ch. 1
The sample percentiles (first line) approximately match the Beta(2,2) per-
centiles computed by qbeta (second line), most closely near the center of
the distribution. Larger numbers of replicates are required for estimation of
percentiles where the density is close to zero.
> round(rbind(Qhat, Q, se), 3)
10% 20% 30% 40% 50% 60% 70% 80% 90%
Qhat 0.189 0.293 0.365 0.449 0.519 0.589 0.665 0.741 0.830
Q 0.196 0.287 0.363 0.433 0.500 0.567 0.637 0.713 0.804
se 0.010 0.011 0.012 0.013 0.013 0.013 0.012 0.011 0.010
Repeating the simulation with n=10000 produces more precise estimates.
> round(rbind(Qhat, Q, se), 3)
10% 20% 30% 40% 50% 60% 70% 80% 90%
Qhat 0.194 0.292 0.368 0.436 0.504 0.572 0.643 0.716 0.804
Q 0.196 0.287 0.363 0.433 0.500 0.567 0.637 0.713 0.804
se 0.003 0.004 0.004 0.004 0.004 0.004 0.004 0.004 0.003

58 Statistical Computing with R
(cid:5)
Remark 3.2 See Example 3.8 for a more efficient beta generator based on
the ratio of gammas method.
3.4 Transformation Methods
Many types of transformations other than the probability inverse transfor-
mation can be applied to simulate random variables. Some examples are
1. If Z ? N(0,1), then V =Z2 ??2(1).
2. If U ? ?2(m) and V ? ?2(n) are independent, then F = U/m has the
V/n
F distribution with (m,n) degrees of freedom.
3. If Z ? N(0,1) and V ??2(n) are independent, then T = ?Z has the
V/n
Student t distribution with n degrees of freedom.
4. If U,V ? Unif(0,1) are independent, then
(cid:2)
Z = ?2logU cos(2?V),
1 (cid:2)
Z = ?2logV sin(2?U)
2
are independent standard normal variables (see e.g. [238, p. 86]).
5. If U ? Gamma(r,?) and V ? Gamma(s,?) are independent, then X =
U has the Beta(r,s) distribution.
U+V
6. If U,V ? Unif(0,1) are independent, then
(cid:30) (cid:31)
log(V)
X = 1+
log(1?(1??)U)
has the Logarithmic(?)distribution, where(cid:1)x(cid:2) denotes the integerpart
of x.
Generatorsbasedontransformations(5)and(6)areimplementedinExam-
ples3.8and3.9. Sums andmixturesarespecialtypesoftransformationsthat
arediscussedinSection3.5. Example3.21usesamultivariatetransformation
to generate points uniformly distributed on the unit sphere.
Example 3.8 (Beta distribution)
The following relation between beta and gamma distributions provides an-
other beta generator.

|        | Methods    | for | Generating |            | Random | Variables        |     |      | 59  |
| ------ | ---------- | --- | ---------- | ---------- | ------ | ---------------- | --- | ---- | --- |
| If U ? | Gamma(r,?) | and | V ?        | Gamma(s,?) |        | are independent, |     | then |     |
U
|             |                            |     |        | X =         |           |                            |     |     |     |
| ----------- | -------------------------- | --- | ------ | ----------- | --------- | -------------------------- | --- | --- | --- |
|             |                            |     |        |             | U +V      |                            |     |     |     |
| hasthe      | Beta(r,s)distribution[238, |     |        | p.64].      | This      | transformationdeterminesan |     |     |     |
| algorithm   | for generating             |     | random | Beta(a,b)   | variates. |                            |     |     |     |
| 1. Generate | a random                   |     | u from | Gamma(a,1). |           |                            |     |     |     |
| 2. Generate | a random                   |     | v from | Gamma(b,1). |           |                            |     |     |     |
u
| 3. Deliver | x=  | .   |     |     |     |     |     |     |     |
| ---------- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
u+v
| This method                | is applied        | below     | to                                        | generate      | a random | Beta(3,             | 2)           | sample.   |       |
| -------------------------- | ----------------- | --------- | ----------------------------------------- | ------------- | -------- | ------------------- | ------------ | --------- | ----- |
| n <-                       | 1000              |           |                                           |               |          |                     |              |           |       |
| a <-                       | 3                 |           |                                           |               |          |                     |              |           |       |
| b <-                       | 2                 |           |                                           |               |          |                     |              |           |       |
| u <-                       | rgamma(n,         | shape=a,  |                                           | rate=1)       |          |                     |              |           |       |
| v <-                       | rgamma(n,         | shape=b,  |                                           | rate=1)       |          |                     |              |           |       |
| x <-                       | u / (u            | + v)      |                                           |               |          |                     |              |           |       |
| The sample                 | data can          | be        | compared                                  | with          | the      | Beta(3, 2)          | distribution | using     | a     |
| quantile-quantile(QQ)plot. |                   |           | IfthesampleddistributionisBeta(3,2),theQQ |               |          |                     |              |           |       |
| plot should                | be nearly         | linear.   |                                           |               |          |                     |              |           |       |
| q <-                       | qbeta(ppoints(n), |           |                                           | a, b)         |          |                     |              |           |       |
| qqplot(q,                  | x,                | cex=0.25, |                                           | xlab="Beta(3, |          | 2)", ylab="Sample") |              |           |       |
| abline(0,                  | 1)                |           |                                           |               |          |                     |              |           |       |
| The line                   | x=q is added      | for       | reference.                                |               | The QQ   | plot of the         | ordered      | sample    | vs    |
| the Beta(3,                | 2) quantiles      | in        | Figure                                    | 3.2           | is very  | nearly linear,      | as           | it should | be if |
(cid:5)
| the generated                | sample           | is in    | fact          | a Beta(3, | 2) sample.                       |           |         |             |     |
| ---------------------------- | ---------------- | -------- | ------------- | --------- | -------------------------------- | --------- | ------- | ----------- | --- |
| Example                      | 3.9 (Logarithmic |          | distribution, |           | version                          | 2)        |         |             |     |
| This example                 | provides         | another, |               | more      | efficient                        | generator | for the | logarithmic |     |
| distribution(seeExample3.6). |                  |          |               | IfU,V     | areindependentUniform(0,1)random |           |         |             |     |
| variables,                   | then             |          |               |           |                                  |           |         |             |     |
|                              |                  |          | (cid:30)      |           |                                  | (cid:31)  |         |             |     |
log(V)
|     |     | X   | = 1+ |     |     |     |     |     | (3.3) |
| --- | --- | --- | ---- | --- | --- | --- | --- | --- | ----- |
log(1?(1??)U)
| has the | Logarithmic(?) | distribution |     | ([69, | pp. | 546-8], [159]). | This | transforma- |     |
| ------- | -------------- | ------------ | --- | ----- | --- | --------------- | ---- | ----------- | --- |
tionprovidesasimpleandefficientgeneratorforthelogarithmicdistribution.

60 Statistical Computing with R
0.2 0.4 0.6 0.8 1.0
0.1
8.0
6.0
4.0
2.0
Beta(3,2)
elpmaS
FIGURE 3.2: QQ Plot comparing the Beta(3, 2) distribution with a sim-
ulated randomsample generatedby the ratio of gammasmethod in Example
3.8.
1. Generate u from Unif(0,1).
2. Generate v from Unif(0,1).
3. Deliver x=(cid:1)1+log(v)/log(1?(1??)u)(cid:2).
Below is a comparison of the Logarithmic(0.5) distribution with a sample
generated using transformation (3.3). The empirical probabilities p.hat are
within two standard errors of the theoretical probabilities p.
n <- 1000
theta <- 0.5
u <- runif(n) #generate logarithmic sample
v <- runif(n)
x <- floor(1 + log(v) / log(1 - (1 - theta)^u))
k <- 1:max(x) #calc. logarithmic probs.
p <- -1 / log(1 - theta) * theta^k / k
se <- sqrt(p*(1-p)/n)
p.hat <- tabulate(x)/n
> print(round(rbind(p.hat, p, se), 3))
[,1] [,2] [,3] [,4] [,5] [,6] [,7]
p.hat 0.740 0.171 0.052 0.018 0.010 0.006 0.003
p 0.721 0.180 0.060 0.023 0.009 0.004 0.002
se 0.014 0.012 0.008 0.005 0.003 0.002 0.001
Thefollowingfunctionis asimple replacementforrlogarithmicinExam-
ple 3.6 on page 54.

Methods for Generating Random Variables 61
rlogarithmic <- function(n, theta) {
stopifnot(all(theta > 0 & theta < 1))
th <- rep(theta, length=n)
u <- runif(n)
v <- runif(n)
x <- floor(1 + log(v) / log(1 - (1 - th)^u))
return(x)
}
(cid:5)
R note 3.3 The & operator performs an elementwise AND comparison. The
&& operator evaluates from left to right until a logical result is obtained. For
example
x <- 1:5
> 1 < x & x < 5
[1] FALSE TRUE TRUE TRUE FALSE
> 1 < x && x < 5
[1] FALSE
> any( 1 < x & x < 5 )
[1] TRUE
> any( 1 < x && x < 5 )
[1] FALSE
> any(1 < x) && any(x < 5)
[1] TRUE
> all(1 < x) && all(x < 5)
[1] FALSE
Similarly, | performs elementwise an OR comparison and || evaluates from
left to right.
R note 3.4 The tabulate function bins positive integers, so it can be used
on the logarithmic sample. For other types of data, recode the data to positive
integers or use table. If the data are not positive integers, tabulate will
truncate real numbers and ignore without warning integers less than 1.
3.5 Sums and Mixtures
Sums and mixtures of random variables are special types of transforma-
tions. In this section we focus on sums of independent random variables
(convolutions) and several examples of discrete and continuous mixtures.

62 Statistical Computing with R
Convolutions
LetX
1
,...,Xnbeindependentandidenticallydistributedwithdistribution
Xj ?X, and let S =X
1
+···+Xn. The distribution function of the sum S
is called the n-fold convolutionof X and denoted F
?(n).
It is straightforward
X
to simulate a convolution by directly generating X
1
,...,Xn and computing
the sum.
Several distributions are related by convolution. If ? > 0 is an integer,
the chisquare distribution with ? degrees of freedom is the convolution of
? iid squared standard normal variables. The negative binomial distribu-
tion NegBin(r,p) is the convolution of r iid Geom(p) random variables. The
convolution of r independent Exp(?) random variables has the Gamma(r,?)
distribution. SeeBean[23]foranintroductorylevelpresentationoftheseand
many other interesting relationships between families of distributions.
In R it is of course easier to use the functions rchisq,rgeom and rnbinom
togeneratechisquare,geometricandnegativebinomialrandomsamples. The
following example is presented to illustrate a general method that can be
applied whenever distributions are related by convolutions.
Example 3.10 (Chisquare)
This examplegeneratesachisquare?2(?) randomvariableasthe convolution
of ? squared normals. If Z
1
,...,Z? are iid N(0,1) random variables, then
V = Z2 +···+Z2 has the ?2(?) distribution. Steps to generate a random
1 ?
sample of size n from ?2(?) are as follows.
1. Fill an n×? matrix with n? random N(0,1) variates.
2. Square each entry in the matrix (1).
3. Compute the row sums of the squared normals. Each row sum is one
random observation from the ?2(?) distribution.
4. Deliver the vector of row sums.
An example with n=1000 and ? =2 is shown below.
n <- 1000
nu <- 2
X <- matrix(rnorm(n*nu), n, nu)^2 #matrix of sq. normals
#sum the squared normals across each row: method 1
y <- rowSums(X)
#method 2
y <- apply(X, MARGIN=1, FUN=sum) #a vector length n
> mean(y)
[1] 2.027334
> mean(y^2)
[1] 7.835872

Methods for Generating Random Variables 63
A ?2(?) random variable has mean ? and variance 2?. Our sample statistics
below agree very closely with the theoretical moments E[Y] = ? = 2 and
E[Y2] = 2? +?2 = 8. Here the standard errors of the sample moments are
0.063 and 0.089 respectively. (cid:5)
R note 3.5 Thisexampleintroducestheapplyfunction. Theapplyfunction
applies a function to the margins of an array. To sum across the rows of
matrix X, the function (FUN=sum) is applied to the rows (MARGIN=1). Notice
that a loop is not used to compute the row sums. In general for efficient
programming in R, avoid unnecessary loops. (For row and column sums it is
easier to use rowSums and colSums.)
Mixtures
A random variable X(cid:10)is a discrete mixture if the distribution of X is a
weighted sum FX(x) = ?iFXi ((cid:10)x) for some sequence of random variables
X
1
,X
2
,... and ?i > 0 such that
i
?i = 1. The constants ?i are called the
mixing weights or mixing probabilities. Although the notation is similar for
sums and mixtures, the distributions represented are different.
A rando(cid:22)m variable X is a continuous mixture if the distribution of X is
FX(x) =
?
?
?
FX|Y=y(x)fY(y) dy for a family X
(cid:22)
|Y = y indexed by the real
?
numbers y and weighting function fY such that
??
fY(y)dy =1.
Compare the methods for simulation of a convolution and a mixture of
normal variables. Suppose X ? N(0,1) and X ? N(3,1) are independent.
1 2
The notation S = X + X denotes the convolution of X and X . The
1 2 1 2
distribution of S is normal with mean µ +µ =3 and variance ?2+?2 =2.
1 2 1 2
To simulate the convolution:
1. Generate x ? N(0, 1).
1
2. Generate x ? N(3, 1).
2
3. Deliver s=x +x .
1 2
Wecanalsodefinea50%normalmixture X,denotedFX(x)=0.5FX1 (x)+
0.5FX2 (x). Unlike the convolution above, the distribution of the mixture X
is distinctly non-normal; it is bimodal.
To simulate the mixture:
1. Generate an integer k ?{1,2}, where P(1)=P(2)=0.5.
2. If k =1 deliver random x from N(0, 1);
if k =2 deliver random x from N(3, 1).
In the following example we will compare simulated distributions of a con-
volution and a mixture of gamma random variables.

64 Statistical Computing with R
Example 3.11 (Convolutions and mixtures)
Let X ? Gamma(2, 2) and X ? Gamma(2, 4) be independent. Compare
1 2
the histogramsofthe samplesgeneratedbythe convolutionS =X +X and
1 2
the mixture FX =0.5FX1 +0.5FX2 .
n <- 1000
x1 <- rgamma(n, 2, 2)
x2 <- rgamma(n, 2, 4)
s <- x1 + x2 #the convolution
u <- runif(n)
k <- as.integer(u > 0.5) #vector of 0’s and 1’s
x <- k * x1 + (1-k) * x2 #the mixture
par(mfcol=c(1,2)) #two graphs per page
hist(s, prob=TRUE)
hist(x, prob=TRUE)
par(mfcol=c(1,1)) #restore display
ThehistogramsshowninFigure3.3,ofthe convolutionS andmixtureX,are
clearly different. (cid:5)
R note 3.6 The par function can be used to set (or query) certain graphical
parameters. A list of all graphical parameters is returned by par(). The
command par(mfcol=c(n,m)) configures the graphical device to display nm
graphs per screen, in n rows and m columns.
The method of generating the mixture in this example is simple for a mix-
ture of two distributions, but not for arbitrary mixtures. The next example
illustrates how to generate a mixture of several distributions with arbitrary
mixing probabilities.
Example 3.12 (Mixture of several gamma distributions)
This exampleissimilartothe previousone,butthereareseveralcomponents
to the mixture and the mixing weights are not uniform. The mixture is
(cid:5)5
FX = ?jFXj ,
i=1
where Xj ? Gamma(r =3, ?j =1/j) are independent and the mixing prob-
abilities are ?j =j/15, j =1,...,5.
To simulate one random variate from the mixture FX:
1. Generate an integer k ?{1,2,3,4,5},where P(k)=?k, k=1,...,5.
2. Deliver a random Gamma(r, ?k) variate.

|     |     | Methods | for            | Generating | Random | Variables      |     |     | 65  |
| --- | --- | ------- | -------------- | ---------- | ------ | -------------- | --- | --- | --- |
|     |     |         | Histogram of s |            |        | Histogram of x |     |     |     |
6.0
8.0
5.0
6.0
4.0
|     |     | ytisneD |     |     | ytisneD |     |     |     |     |
| --- | --- | ------- | --- | --- | ------- | --- | --- | --- | --- |
|     |     |         | 3.0 |     |         | 4.0 |     |     |     |
2.0
2.0
1.0
|        |      |           | 0.0 |                |     | 0.0         |     |          |        |
| ------ | ---- | --------- | --- | -------------- | --- | ----------- | --- | -------- | ------ |
|        |      |           | 0   | 1 2 3 4        | 5   | 0 1 2       | 3 4 |          |        |
|        |      |           |     | s              |     |             | x   |          |        |
| FIGURE | 3.3: | Histogram |     | of a simulated |     | convolution | of  | Gamma(2, | 2) and |
Gamma(2,4)randomvariables(left),anda50%mixtureofthesamevariables
| (right), from | Example     |        | 3.11.     |                |         |                  |           |          |            |
| ------------- | ----------- | ------ | --------- | -------------- | ------- | ---------------- | --------- | -------- | ---------- |
| To generate   | a           | sample | size n,   | steps          | (1) and | (2) are repeated |           | n times. | Notice     |
| that the      | algorithm   | stated |           | above suggests |         | using a          | for loop, | but      | for loops  |
| are really    | inefficient |        | in R. The | algorithm      | can     | be translated    |           | into a   | vectorized |
approach.
| 1. Generate |     | a random | sample | k   | ,...,kn | of integers | in  | a vector | k, where |
| ----------- | --- | -------- | ------ | --- | ------- | ----------- | --- | -------- | -------- |
1
| P(k) | = ?k, | k = | 1,...,5. | Then | k[i] indicates |     | which | of the five | gamma |
| ---- | ----- | --- | -------- | ---- | -------------- | --- | ----- | ----------- | ----- |
ith
| distributions |     | will | be sampled |     | to get the | element |     | of the sample | (use |
| ------------- | --- | ---- | ---------- | --- | ---------- | ------- | --- | ------------- | ---- |
sample).
| 2. Set                        | rate | equal   | to the   | length | n vector   | ?=(?k). |           |                |            |
| ----------------------------- | ---- | ------- | -------- | ------ | ---------- | ------- | --------- | -------------- | ---------- |
| 3. Generate                   |      | a gamma | sample   | size   | n, with    | shape   | parameter |                | r and rate |
| vector                        | rate | (use    | rgamma). |        |            |         |           |                |            |
| Thenanefficientwaytoimplement |      |         |          |        | this inRis | shownby | the       | followingexam- |            |
ple.
| n <-             | 5000                    |           |               |            |               |                |     |     |     |
| ---------------- | ----------------------- | --------- | ------------- | ---------- | ------------- | -------------- | --- | --- | --- |
| k <-             | sample(1:5,             |           | size=n,       |            | replace=TRUE, | prob=(1:5)/15) |     |     |     |
| rate             | <- 1/k                  |           |               |            |               |                |     |     |     |
| x <-             | rgamma(n,               |           | shape=3,      | rate=rate) |               |                |     |     |     |
| #plot            | the                     | density   | of            | the        | mixture       |                |     |     |     |
| #with            | the                     | densities |               | of the     | components    |                |     |     |     |
| plot(density(x), |                         |           | xlim=c(0,40), |            | ylim=c(0,.3), |                |     |     |     |
|                  | lwd=3,                  | xlab="x", |               | main="")   |               |                |     |     |     |
| for              | (i in                   | 1:5)      |               |            |               |                |     |     |     |
|                  | lines(density(rgamma(n, |           |               |            | 3, 1/i)))     |                |     |     |     |

66 Statistical Computing with R
The plot in Figure 3.4 shows the density of each Xj and the density of the
mixture (thick line). The density curves in Figure 3.4 are actually density
estimates, which will be discussed in Chapter 10. (cid:5)
0 10 20 30 40
03.0
52.0
02.0
51.0
01.0
50.0
00.0
x
ytisneD
FIGURE3.4: DensityestimatesfromExample3.12: Amixture(thickline)
of several gamma densities (thin lines).
Example 3.13 (Mixture of several gamma distributions)
Let
(cid:5)5
FX = ?jFXj
j=1
where Xj ? Gamma(3,?j) are independent, with rates ? = (1,1.5,2,2.5,3),
and mixing probabilities ? =(0.1,0.2,0.2,0.3,0.2).
This example is similar to the previous one. Sample from 1:5 with prob-
ability weights ? to get a vector length n. The ith position in this vector
indicates which of the five gamma distributions is sampled to get the ith ele-
ment of the sample. This vector is used to select the correct rate parameter
from the vector ?.
n <- 5000
p <- c(.1,.2,.2,.3,.2)

Methods for Generating Random Variables 67
lambda <- c(1,1.5,2,2.5,3)
k <- sample(1:5, size=n, replace=TRUE, prob=p)
rate <- lambda[k]
x <- rgamma(n, shape=3, rate=rate)
Notethatlambda[k]isavectorthesamelengthask,containingtheelements
of lambda indexed by the vector k. In mathematical notation, lambda[k] is
equal to (?k1 ,?k2 ,...,?kn ).
Compare the first few entries of k and the corresponding values of rate
with ?.
> k[1:8]
[1] 5 1 4 2 1 3 2 3
> rate[1:8]
[1] 3.0 1.0 2.5 1.5 1.0 2.0 1.5 2.0
(cid:5)
Example 3.14 (Plot density of mixture)
Plot the densities (not density estimates) of the gamma distributions and
the mixture in Example 3.13. (This example is a programming exercise that
involves vectors of parameters and repeated use of the apply function.)
The density of the mixture is
(cid:5)5
f(x)= ?jfj(x), x>0, (3.4)
j=1
wherefj istheGamma(3, ?j)density. Toproducetheplot,weneedafunction
to compute the density f(x) of the mixture.
f <- function(x, lambda, theta) {
#density of the mixture at the point x
sum(dgamma(x, 3, lambda) * theta)
}
The functionf computes the density ofthe mixture (3.4)for a single value of
x. If x has length 1, dgamma(x, 3, lambda) is a vector the same length as
lambda; in this case (f (x),...,f (x)). Then dgamma(x, 3, lambda)*theta
1 5
is the vector (? f (x),...,? f (x)). The sum of this vector is the density of
1 1 5 5
the mixture (3.3) evaluated at the point x.
x <- seq(0, 8, length=200)
dim(x) <- length(x) #need for apply
#compute density of the mixture f(x) along x
y <- apply(x, 1, f, lambda=lambda, theta=p)

68 Statistical Computing with R
The density of the mixture is computed by function f applied to the vec-
tor x. The function f takes several arguments, so the additional arguments
lambda=lambda, theta=probare supplied after the name of the function, f.
A plot of the five densities with the mixture is shown in Figure 3.5. The
code to produce the plot is listed below. The densities fk can be computed
by the dgamma function. A sequence of points x is defined and each of the
densities are computed along x.
#plot the density of the mixture
plot(x, y, type="l", ylim=c(0,.85), lwd=3, ylab="Density")
for (j in 1:5) {
#add the j-th gamma density to the plot
y <- apply(x, 1, dgamma, shape=3, rate=lambda[j])
lines(x, y)
}
(cid:5)
R note 3.7 Theapplyfunctionrequiresadimension attributeforx. Sincex
is a vector, it does not have a dimension attribute by default. The dimension
of x is assigned by dim(x) <- length(x). Alternately, x <- as.matrix(x)
converts x to a matrix (a column vector), which has a dimension attribute.
Example 3.15 (Poisson-Gamma mixture)
This is an example of a continuous mixture. The negative binomial distribu-
tion is a mixture of Poisson(?)distributions, where ? has a gamma distribu-
tion. Specifically, if (X|? = ?) ? Poisson(?) and ? ? Gamma(r,?), then X
has the negative binomial distribution with parameters r and p = ?/(1+?)
(see e.g.[23]). This exampleillustratesa methodofsamplingfromaPoisson-
Gamma mixture and compares the sample with the negative binomial distri-
bution.
#generate a Poisson-Gamma mixture
n <- 1000
r <- 4
beta <- 3
lambda <- rgamma(n, r, beta) #lambda is random
#now supply the sample of lambda’s as the Poisson mean
x <- rpois(n, lambda) #the mixture
#compare with negative binomial
mix <- tabulate(x+1) / n

Methods for Generating Random Variables 69
0 2 4 6 8
8.0
6.0
4.0
2.0
0.0
x
ytisneD
FIGURE 3.5: Densities fromExample 3.14: A mixture (thick line) of sev-
eral gamma densities (thin lines).
negbin <- round(dnbinom(0:max(x), r, beta/(1+beta)), 3)
se <- sqrt(negbin * (1 - negbin) / n)
Theempiricaldistribution(firstlinebelow)ofthemixtureagreesveryclosely
with the pmf of NegBin(4,3/4) (second line).
> round(rbind(mix, negbin, se), 3)
[,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9]
mix 0.334 0.305 0.201 0.091 0.042 0.018 0.005 0.003 0.001
negbin 0.316 0.316 0.198 0.099 0.043 0.017 0.006 0.002 0.001
se 0.015 0.015 0.013 0.009 0.006 0.004 0.002 0.001 0.001
(cid:5)
3.6 Multivariate Distributions
Generators for the multivariate normal distribution, multivariate normal
mixtures, Wishartdistribution, and uniform distribution onthe sphere in Rd
are presented in this section.

70 Statistical Computing with R
3.6.1 Multivariate Normal Distribution
ArandomvectorX =(X
1
,...,Xd)hasad-dimensionalmutivariatenormal
(MVN) distribution denoted Nd(µ,?) if the density of X is
1
f(x)= exp{?(1/2)(x?µ) T ? ?1(x?µ)}, x?Rd , (3.5)
(2?)d/2 |?|1/2
whereµ=(µ
1
,...,µd)T isthemeanvectorand?isad×dsymmetricpositive
definite matrix ? ?
? 11 ? 12 ... ? 1d
? ?
?? 21 ? 22 ... ? 2d?
?=? . . . ?
? . . . ?
. . .
?d1 ?d2 ... ?dd
with entries ?ij = Cov(Xi,Xj). Here ??1 is the inverse of ?, and |?| is
the determinant of ?. The bivariate normal distribution is the special case
N (µ,?).
2
A random Nd(µ,?) variate can be generated in two steps. First generate
Z = (Z
1
,...,Zd), where Z
1
,...,Zd are iid standard normal variates. Then
transform the random vector Z so that it has the desired mean vector µ and
covariance structure ?. The transformation requires factoring the covariance
matrix ?.
Recall that if Z ? Nd(µ,?), then the linear transformation CZ + b is
multivariatenormalwithmeanCµ+bandcovarianceC?CT. IfZ isNd(0,Id),
then
CZ+b?Nd(b,CC T ).
Suppose that ? can be factored so that ?=CCT for some matrix C. Then
CZ+µ?Nd(µ,?),
and CZ+µ is the required transformation.
Therequiredfactorizationof?canbeobtainedbythe spectraldecomposi-
tion method (eigenvector decomposition), Choleski factorization, or singular
value decomposition (svd). The corresponding R functions are eigen, chol,
and svd.
Usually, one does not apply a linear transformation to the random vectors
of a sample one at a time. Typically, one applies the transformation to a
data matrix and transforms the entire sample. Suppose that Z =(Zij) is an
n×d matrix where Zij are iid N(0,1). Then the rows of Z are n random ob-
servations from the d-dimensional standard MVN distribution. The required
transformation applied to the data matrix is
T
X =ZQ+Jµ , (3.6)
where QTQ = ? and J is a column vector of ones. The rows of X are n
random observations from the d-dimensional MVN distribution with mean
vector µ and covariance matrix ?.

Methods for Generating Random Variables 71
Method for generating multivariate normal samples
To generate a random sample of size n from the Nd(µ,?) distribution:
1. Generate an n×d matrix Z containing nd random N(0,1) variates
(n random vectors in Rd).
2. Compute a factorization ?=QTQ.
3. Apply the transformation X =ZQ+JµT.
4. Deliver the n×d matrix X.
Each row of X is a random variate from the Nd(µ,?) distribution.
The X = ZQ+JµT transformation can be coded in R as follows. Recall
that the matrix multiplication operator is %*%.
Z <- matrix(rnorm(n*d), nrow = n, ncol = d)
X <- Z %*% Q + matrix(mu, n, d, byrow = TRUE)
ThematrixproductJµT isequaltomatrix(mu, n, d, byrow = TRUE).This
savesamatrixmultiplication. Theargumentbyrow = TRUEisnecessaryhere;
thedefaultisbyrow = FALSE.Thematrixisfilledrowbyrowwiththeentries
of the mean vector mu.
In this section each method of generating MVN random samples is illus-
trated with examples. Also note that there are functions providedin R pack-
agesforgeneratingmultivariatenormalsamples. Seethemvrnormfunctionin
the MASS package [278], and rmvnorm in the mvtnorm package [115]. In all of
the examples below, the rnorm function is used to generate standard normal
random variates.
Spectral decomposition method for generating Nd(µ,?) samples
Thesquarerootofthecovarianceis?1/2 =P?1/2P?1,where?isthediag-
onalmatrix with the eigenvaluesof ? along the diagonalandP is the matrix
whose columns are the eigenvectors of ? corresponding to the eigenvalues in
?. This method can also be called the eigen-decomposition method. In the
eigen-decompositionwehaveP?1 =PT andtherefore?1/2 =P?1/2PT. The
matrix Q=?1/2 is a factorization of ? such that QTQ=?.
Example 3.16 (Spectral decomposition method)
This exampleprovidesafunctionrmvn.eigento generatea multivariatenor-
mal randomsample. It is applied to generate a bivariate normalsample with
zero mean vector and (cid:3) (cid:4)
1.0 0.9
?= .
0.9 1.0
# mean and covariance parameters
mu <- c(0, 0)
Sigma <- matrix(c(1, .9, .9, 1), nrow = 2, ncol = 2)

72 Statistical Computing with R
The eigen function returns the eigenvalues and eigenvectors of a matrix.
rmvn.eigen <-
function(n, mu, Sigma) {
# generate n random vectors from MVN(mu, Sigma)
# dimension is inferred from mu and Sigma
d <- length(mu)
ev <- eigen(Sigma, symmetric = TRUE)
lambda <- ev$values
V <- ev$vectors
R <- V %*% diag(sqrt(lambda)) %*% t(V)
Z <- matrix(rnorm(n*d), nrow = n, ncol = d)
X <- Z %*% R + matrix(mu, n, d, byrow = TRUE)
X
}
Print summary statistics and display a scatterplot as a check on the results
of the simulation.
# generate the sample
X <- rmvn.eigen(1000, mu, Sigma)
plot(X, xlab = "x", ylab = "y", pch = 20)
> print(colMeans(X))
[1] -0.001628189 0.023474775
> print(cor(X))
[,1] [,2]
[1,] 1.0000000 0.8931007
[2,] 0.8931007 1.0000000
Output from Example 3.16 shows the sample mean vector is (?0.002,0.023)
and sample correlation is 0.893, which agree closely with the specified para-
meters. The scatter plot of the sample data shown in Figure 3.6 exhibits the
elliptical symmetry of multivariate normal distributions. (cid:5)
SVD Method of generating Nd(µ,?) samples
The singularvalue decomposition(svd) generalizesthe idea ofeigenvectors
to rectangular matrices. The svd of a matrix X is X = UDVT, where D is
a vector containing the singular values of X, U is a matrix whose columns
containtheleftsingularvectorsofX,andV isamatrixwhosecolumnscontain
the right singular vectors of X. The matrix X in this case is the population
covariancematrix ?, and UVT =I. The svd of a symmetric positive definite

Methods for Generating Random Variables 73
?3 ?2 ?1 0 1 2 3
3
2
1
0
1?
2?
3?
x
y
FIGURE 3.6: Scatterplotofarandombivariatenormalsamplewithmean
vector zero, variances ?2 = ?2 = 1 and correlation ? = 0.9, from Example
1 2
3.16.
matrix ? gives U = V = P and ?1/2 = UD1/2VT. Thus the svd method
for this application is equivalent to the spectral decomposition method, but
is less efficient because the svd method does not take advantage of the fact
that the matrix ? is square symmetric.
Example 3.17 (SVD method)
Thisexampleprovidesafunctionrmvn.svdtogenerateamultivariatenormal
sample, using the svd method to factor ?.
rmvn.svd <-
function(n, mu, Sigma) {
# generate n random vectors from MVN(mu, Sigma)
# dimension is inferred from mu and Sigma
d <- length(mu)
S <- svd(Sigma)
R <- S$u %*% diag(sqrt(S$d)) %*% t(S$v) #sq. root Sigma
Z <- matrix(rnorm(n*d), nrow=n, ncol=d)
X <- Z %*% R + matrix(mu, n, d, byrow=TRUE)
X
}
This function is applied in Example 3.19 on page 76. (cid:5)

74 Statistical Computing with R
Choleski factorization method of generating Nd(µ,?) samples
The Choleski factorization of a real symmetric positive-definite matrix is
X =QTQ,whereQisanuppertriangularmatrix. TheCholeskifactorization
is implemented in the R function chol. The basic syntax is chol(X)and the
return value is an upper triangular matrix R such that RTR=X.
Example 3.18 (Choleski factorization method)
The Choleski factorization method is applied to generate 200 random obser-
vations from a four-dimensional multivariate normal distribution.
rmvn.Choleski <-
function(n, mu, Sigma) {
# generate n random vectors from MVN(mu, Sigma)
# dimension is inferred from mu and Sigma
d <- length(mu)
Q <- chol(Sigma) # Choleski factorization of Sigma
Z <- matrix(rnorm(n*d), nrow=n, ncol=d)
X <- Z %*% Q + matrix(mu, n, d, byrow=TRUE)
X
}
In this example, we will generate the samples according to the same mean
and covariance structure as the four-dimensional iris virginica data.
y <- subset(x=iris, Species=="virginica")[, 1:4]
mu <- colMeans(y)
Sigma <- cov(y)
> mu
Sepal.Length Sepal.Width Petal.Length Petal.Width
6.588 2.974 5.552 2.026
> Sigma
Sepal.Length Sepal.Width Petal.Length Petal.Width
Sepal.Length 0.40434286 0.09376327 0.30328980 0.04909388
Sepal.Width 0.09376327 0.10400408 0.07137959 0.04762857
Petal.Length 0.30328980 0.07137959 0.30458776 0.04882449
Petal.Width 0.04909388 0.04762857 0.04882449 0.07543265
#now generate MVN data with this mean and covariance
X <- rmvn.Choleski(200, mu, Sigma)
pairs(X)
The pairs plot of the data in Figure 3.7 gives a 2-D view of the bivariate
distribution of each pair of marginal distributions. The joint distribution of
eachpairofmarginaldistributions istheoreticallybivariatenormal. The plot

Methods for Generating Random Variables 75
canbe comparedwithFigure 4.1,whichdisplaysthe irisvirginicadata. (The
iris virginicadata are not multivariate normal, but means andcorrelationfor
each pair of variables should be similar to the simulated data.) (cid:5)
2.5 3.0 3.5 4.0 1.5 2.0 2.5
Sepal.Length
0.4
5.3
0.3
5.2
0.7
0.6
0.5
Sepal.Width
Petal.Length
5.60.65.50.55.4
5.0 6.0 7.0
5.2
0.2
5.1
Petal.Width
4.55.05.56.06.5
FIGURE 3.7: Pairs plot of the bivariate marginal distributions of a simu-
lated multivariate normal random sample in Example 3.18. The parameters
match the mean and covariance of the iris virginica data.
Remark 3.3 Tostandardizeamultivariatenormalsample,weinvertthepro-
cedure above, substituting the sample mean vector and sample covariance ma-
trix if the parameters are unknown. The transformed d-dimensional sample
then has zero mean vector and covariance Id. This is not the same as scaling
the columns of the data matrix. (cid:5)
Comparing Performance of Generators
We have discussed several methods for generating random samples from
specifiedprobabilitydistributions. Whenseveralmethodsareavailable,which
method is preferred? One consideration may be the computational time re-
quired (the time complexity). Another important consideration, if the pur-
pose of the simulation is to estimate one or more parameters, is the variance
of the estimator. The latter topic is considered in Chapter 5. To compare
the empirical performance with respect to computing time, we can time each
procedure.
R provides the system.time function, which times the evaluation of its
argument. This function can be used as a rough benchmark to compare the
performance of different algorithms. In the next example, the system.time

76 Statistical Computing with R
functionisusedtocomparetheCPUtimerequiredforseveraldifferentmeth-
ods of generating multivariate normal samples.
Example 3.19 (Comparing performance of MVN generators)
This example generates multivariate normal samples in a higher dimension
(d = 30) and compares the timing of each of the methods presented in Sec-
tion 3.6.1 and two generators available in R packages. This example uses a
functionrmvnorminthepackagemvtnorm[115]. Thispackageisnotpartofthe
standard R distribution but can be installed from CRAN. The MASS package
[278] is one of the recommended packages included with the R distribution.
library(MASS)
library(mvtnorm)
n <- 100 #sample size
d <- 30 #dimension
N <- 2000 #iterations
mu <- numeric(d)
set.seed(100)
system.time(for (i in 1:N)
rmvn.eigen(n, mu, cov(matrix(rnorm(n*d), n, d))))
set.seed(100)
system.time(for (i in 1:N)
rmvn.svd(n, mu, cov(matrix(rnorm(n*d), n, d))))
set.seed(100)
system.time(for (i in 1:N)
rmvn.Choleski(n, mu, cov(matrix(rnorm(n*d), n, d))))
set.seed(100)
system.time(for (i in 1:N)
mvrnorm(n, mu, cov(matrix(rnorm(n*d), n, d))))
set.seed(100)
system.time(for (i in 1:N)
rmvnorm(n, mu, cov(matrix(rnorm(n*d), n, d))))
set.seed(100)
system.time(for (i in 1:N)
cov(matrix(rnorm(n*d), n, d)))
Mostoftheworkinvolvedingeneratingamultivariatenormalsampleisthe
factorizationof the covariancematrix. The covariancesused for this example
are actually the sample covariancesof standardmultivariate normalsamples.
Thus, the randomly generated ? varies with each iteration, but ? is close to
an identity matrix. In order to time each method on the same covariance
matrices, the random number seed is restored before each run. The last run
simply generates the covariances,for comparison with the total time.

Methods for Generating Random Variables 77
Theresultsbelow(summarizedfromtheconsoleoutput)suggestthatthere
are differences in performance among these five methods when the covari-
ance matrix is close to identity. The Choleski method is somewhat faster,
whilermvn.eigenandmvrnorm(MASS)[278]appeartoperformaboutequally
well. The similar performance of rmvn.eigenand mvrnorm is not surprising,
because according to the documentation for mvrnorm, the method of matrix
decomposition is the eigendecomposition. Documentation for mvrnormstates
that “although a Choleski decomposition might be faster, the eigendecompo-
sition is stabler.”
Timings of MVN generators
user system elapsed
rmvn.eigen 7.36 0.00 7.37
rmvn.svd 9.93 0.00 9.94
rmvn.choleski 5.32 0.00 5.35
mvrnorm 7.95 0.00 7.96
rmvnorm 11.91 0.00 11.93
generate Sigma 2.78 0.00 2.78
(cid:5)
The system.time function was also used to compare the methods in Ex-
amples3.22and3.23. Thecode(notshown)issimilartotheexamplesabove.
3.6.2 Mixtures of Multivariate Normals
A multivariate normal mixture is denoted
pNd(µ
1
,?
1
)+(1?p)Nd(µ
2
,?
2
) (3.7)
wherethesampledpopulationisNd(µ
1
,?
1
)withprobabilityp,andNd(µ
2
,?
2
)
with probability 1?p. As the mixing parameter p and other parameters are
varied, the multivariate normal mixtures have a wide variety of types of de-
partures from normality. For example, a 50% normal location mixture is
symmetricwithlighttails,anda90%normallocationmixtureisskewedwith
?
.
heavy tails. A normal location mixture with p = 1? 1(1? 3) = 0.7887,
2 3
provides an example of a skeweddistribution with normal kurtosis [140]. Pa-
rameters can be varied to generate a wide variety of distributional shapes.
Johnson [154] gives many examples for the bivariate normal mixtures. Many
commonly applied statistical procedures do not perform well under this type
of departurefromnormality,so normalmixtures areoften chosento compare
the properties of competing robust methods of analysis.
If X has the distribution (3.7) then a random observation from the distri-
bution of X can be generated as follows.

78 Statistical Computing with R
To generate a random sample from pNd(µ
1
,?
1
)+(1?p)Nd(µ
2
,?
2
)
1. Generate U ? Uniform(0,1).
2. If U ?p generate X from Nd(µ
1
,?
1
);
otherwise generate X from Nd(µ
2
,?
2
).
The following procedure is equivalent.
1. Generate N ? Bernoulli(p).
2. If N =1 generate X from Nd(µ
1
,?
1
);
otherwise generate X from Nd(µ
2
,?
2
).
Example 3.20 (Multivariate normal mixture)
Write a function to generate a multivariate normal mixture with two compo-
nents. The components of a location mixture differ in location only. Use the
mvrnorm(MASS) function [278] to generate the multivariate normal observa-
tions.
First we write this generator in an inefficient loop to clearly illustrate the
steps outlined above. (We will eliminate the loop later.)
library(MASS) #for mvrnorm
#ineffecient version loc.mix.0 with loops
loc.mix.0 <- function(n, p, mu1, mu2, Sigma) {
#generate sample from BVN location mixture
X <- matrix(0, n, 2)
for (i in 1:n) {
k <- rbinom(1, size = 1, prob = p)
if (k)
X[i,] <- mvrnorm(1, mu = mu1, Sigma) else
X[i,] <- mvrnorm(1, mu = mu2, Sigma)
}
return(X)
}
Although the code above will generate the required mixture, the loop is
rather inefficient. Generate n , the number of observations realized from the
1
first component, from Binomial(n,p). Generate n variates from component
1
1 and n = n?n from component 2 of the mixture. Generate a random
2 1
permutation of the indices 1:n to indicate the order in which the sample
observations appear in the data matrix. See Appendix B.1 for details about
permutations of rows of a matrix.

Methods for Generating Random Variables 79
#more efficient version
loc.mix <- function(n, p, mu1, mu2, Sigma) {
#generate sample from BVN location mixture
n1 <- rbinom(1, size = n, prob = p)
n2 <- n - n1
x1 <- mvrnorm(n1, mu = mu1, Sigma)
x2 <- mvrnorm(n2, mu = mu2, Sigma)
X <- rbind(x1, x2) #combine the samples
return(X[sample(1:n), ]) #mix them
}
To illustrate the normal mixture generator, we apply loc.mix to generate
a random sample of n=1000 observations from a 50% 4-dimensionalnormal
location mixture with µ =(0,0,0,0) and µ =(2,3,4,5) and covariance I .
1 2 4
x <- loc.mix(1000, .5, rep(0, 4), 2:5, Sigma = diag(4))
r <- range(x) * 1.2
par(mfrow = c(2, 2))
for (i in 1:4)
hist(x[ , i], xlim = r, ylim = c(0, .3), freq = FALSE,
main = "", breaks = seq(-5, 10, .5))
par(mfrow = c(1, 1))
It is difficult to visualize data in R4, so we display only the histogramsof the
marginaldistributions inFigure 3.8. All ofthe one dimensionalmarginaldis-
tributions areunivariatenormallocationmixtures. Methods forvisualization
of multivariate data are covered in Chapter 4. Also, an interesting view of a
bivariate normal mixture with three components is shown in Figure 10.13 on
page 313. (cid:5)
3.6.3 Wishart Distribution
Suppose M =XTX, where X is an n×d data matrix of a randomsample
from a Nd(µ,?) distribution. Then M has a Wishart distribution with scale
matrix?andn degreesoffreedom,denotedM ?Wd(?,n)(seee.g.[8,188]).
Note that when d = 1, the elements of X are a univariate random sample
D
from N(µ,?2) so W (?2,n)=?2?2(n).
1
An obvious, but inefficient approach to generating random variates from
a Wishart distribution, is to generate multivariate normal random samples
and compute the matrix product XTX. This method is computationally
expensivebecausendrandomnormalvariatesmustbegeneratedtodetermine
the d(d+1)/2 distinct entries in M.

80 Statistical Computing with R
x[, i]
ytisneD
?4 ?2 0 2 4 6 8 10
03.0
02.0
01.0
00.0
x[, i]
ytisneD
?4 ?2 0 2 4 6 8 10
03.0
02.0
01.0
00.0
x[, i]
ytisneD
?4 ?2 0 2 4 6 8 10
03.0
02.0
01.0
00.0
x[, i]
ytisneD
?4 ?2 0 2 4 6 8 10
03.0
02.0
01.0
00.0
FIGURE3.8: Histogramsofthemarginaldistributionsofmultivariatenor-
mal location mixture data generated in Example 3.20.
A more efficient method based on Bartlett’s decomposition [21] is summa-
rized by Johnson [154, p. 204]as follows. Let T =(Tij) be a lower triangular
d×d random matrix with independent entries satisfying
1. Tij
i?id
N(0,1), i>j.
(cid:2)
2. Tii ? ?2(n?i+1), i=1,...,d.
ThenthematrixA=TTT hasaWd(Id,n)distribution. TogenerateWd(?,n)
randomvariates,obtaintheCholeskifactorization?=LLT,whereLislower
triangular. Then LALT ? Wd(?,n) [21, 133, 207]. Implementation is left as
an exercise.
3.6.4 Uniform Distribution on the d-Sphere
The d-sphere is the set of all points x?Rd such that (cid:16)x(cid:16)=(xTx)1/2 =1.
Random vectors uniformly distributed on the d-sphere have equally likely
directions. A method of generating this distribution uses a property of the
multivariate normal distribution (see e.g. [94, 154]). If X
1
,...,Xd are iid
N(0,1), then U =(U
1
,...,Ud) is uniformly distributed on the unit sphere in
Rd, where
Xj
Uj =
(X2+···+X2)1/2
, j =1,...,d. (3.8)
1 d

Methods for Generating Random Variables 81
Algorithm to generate uniform variates on the d-Sphere
1. For each variate ui, i=1,...,n repeat
(a) Generate a random sample xi1 ,...,xid from N(0,1).
(b) Compute the Euclidean norm (cid:16)xi (cid:16)=(x2
i1
+···+x2
id
)1/2.
(c) Set uij =xij/(cid:16)xi (cid:16), j =1,...,d.
(d) Deliver ui =(ui1 ,...,uid).
To implement these steps efficiently in R for a sample size n,
1. Generate nd univariate normals in n×d matrix M. The ith row of M
corresponds to to the ith random vector ui.
2. Compute the denominator of (3.8) for each row, storing the n norms in
vector L.
3. Divide each number M[i,j] by the norm L[i], to get the matrix U,
where U[i,] =ui =(ui1 ,...,uid).
4. Deliver matrix U containing n random observations in rows.
Example 3.21 (Generating variates on a sphere)
This example provides a function to generate random variates uniformly dis-
tributed on the unit d-sphere.
runif.sphere <- function(n, d) {
# return a random sample uniformly distributed
# on the unit sphere in R ^d
M <- matrix(rnorm(n*d), nrow = n, ncol = d)
L <- apply(M, MARGIN = 1,
FUN = function(x){sqrt(sum(x*x))})
D <- diag(1 / L)
U <- D %*% M
U
}
The function runif.sphere is used to generate a sample of 200 points uni-
formly distributed on the circle.
#generate a sample in d=2 and plot
X <- runif.sphere(200, 2)
par(pty = "s")
plot(X, xlab = bquote(x[1]), ylab = bquote(x[2]))
par(pty = "m")
The circle of points is shown in Figure 3.9. (cid:5)

82 Statistical Computing with R
R note 3.8 The apply function in runif.sphere returns a vector contain-
ing the n norms (cid:16)x
1
(cid:16),(cid:16)x
2
(cid:16),...,(cid:16)xn (cid:16) of the sample vectors in matrix M.
R note 3.9 The command par(pty = "s") sets the square plot type so the
circle is round rather than elliptical; par(pty = "m") restores the type to
maximal plotting region. See the help topic ?par for other plot parameters.
?1.0 ?0.5 0.0 0.5 1.0
0.1
5.0
0.0
5.0?
0.1?
x1
2x
FIGURE 3.9: A random sample of 200 points from the bivariate distribu-
tion(X ,X )thatisuniformlydistributedontheunitcircleinExample3.21.
1 2
Uniformly distributed points on a hyperellipsoid can be generated by ap-
plying a suitable linear transformation to a Uniform sample on the d-sphere.
Fishman [94, 3.28] gives an algorithm for generating points in and on a sim-
plex.
3.7 Stochastic Processes
A stochastic process is a collection {X(t) : t ? T} of random variables
indexed by the set T, which usually represents time. The index set T could
bediscreteorcontinuous. ThesetofpossiblevaluesX(t)cantakeisthestate
space, which also can be discrete or continuous. Ross [234] is an excellent
introduction to stochastic processes, and includes a chapter on simulation.

Methods for Generating Random Variables 83
A counting process records the number of events or arrivals that occur
by time t. A counting process has independent increments if the number
of arrivals in disjoint time intervals are independent. A counting process
has stationary increments if the number of events occurring in an interval
depends only on the length of the interval. An example of a counting process
is a Poissonprocess.
To study a counting process through simulation, we can generate a real-
ization of the process that records events for a finite period of time. The set
of times of consecutive arrivalsrecords the outcome and determines the state
X(t) at any time t. In a simulation, the sequence of arrival times must be
finite. One method of simulation for a counting process is to choose a suf-
ficiently long time interval and generate the arrival times or the interarrival
times in this interval.
Poisson Processes
A homogeneous Poisson process {N(t),t ? 0} with rate ? is a counting
process, with independent increments, such that N(0)=0 and
e?t(?t)n
P(N(s+t)?N(s)=n)= , n?0, t,s>0. (3.9)
n!
Thus,ahomogeneousPoissonprocesshasstationaryincrementsandthenum-
ber of events N(t) in [0,t] has the Poisson(?t) distribution. If T is the time
1
until the first arrival,
P(T >t)=P(N(t)=0)=e ??t , t?0,
1
soT isexponentiallydistributedwithrate?. TheinterarrivaltimesT ,T ,...
1 1 2
are the times betweensuccessivearrivals. The interarrivaltimes areiidexpo-
nentialswithrate?,whichfollowsfrom(3.9)andthe memorylesspropertyof
the exponential distribution.
One method of simulating a Poisson process is to generate the interarrival
times. Then the time of the nth arrival is the sum Sn = T
1
+···+Tn (the
waiting time until nth arrival). A sequence of interarrival times {Tn }?
n=1
or
sequenceofarrivaltimes{Sn }?
n=1
arearealizationofthe process. Thus,are-
alizationisaninfinitesequence,ratherthanasinglenumber. Inasimulation,
the finite sequence ofinterarrivaltimes {Tn }N
n=1
or arrivaltimes {Sn }N
n=1
are
a simulated realization of the process on the interval [0,SN).
Another method of simulating a Poissonprocess is to use the fact that the
conditionaldistributionofthe(unordered)arrivaltimesgivenN(t)=nisthe
same as that of a random sample of size n from a Uniform(0,t) distribution.
The state ofthe processata giventime tis equalto the number ofarrivals
in[0,t],whichisthenumbermin(k :Sk >t)?1.Thatis,N(t)=n?1,where
Sn is the smallest arrival time exceeding t.

84 Statistical Computing with R
Algorithm for simulating a homogeneous Poisson process on an in-
terval [0,t ] by generating interarrival times.
0
1. Set S =0.
1
2. For j =1,2,... while Sj ?t
0
:
(a) Generate Tj ? Exp(?).
(b) Set Sj =T
1
+···+Tj.
3. N(t
0
)=minj(Sj >t
0
)?1.
ItisinefficienttoimplementthisalgorithminRusingaforloop. Itshould
be translated into vectorized operations, as shown in the next example.
Example 3.22 (Poissonprocess)
This exampleillustrates a simple approachto simulationofa Poissonprocess
withrate?. SupposeweneedN(3),thenumberofarrivalsin[0,3]. Generate
iidexponentialtimesTiwithrate?andfindtheindexnwherethecumulative
sum Sn =T
1
+···+Tn first exceeds 3. It follows that the number of arrivals
in [0,3] is n?1. On average this number is E[N(3)]=3?.
lambda <- 2
t0 <- 3
Tn <- rexp(100, lambda) #interarrival times
Sn <- cumsum(Tn) #arrival times
n <- min(which(Sn > t0)) #arrivals+1 in [0, t0]
Results from two runs are shown below.
> n-1
[1] 8
> round(Sn[1:n], 4)
[1] 1.2217 1.3307 1.3479 1.4639 1.9631 2.0971
2.3249 2.3409 3.9814
> n-1
[1] 5
> round(Sn[1:n], 4)
[1] 0.4206 0.8620 1.0055 1.6187 2.6418 3.4739
For this example, the average of simulated values N(3) = n?1 for a large
number of runs should be close to E[N(3)]=3?=6. (cid:5)
An alternate method of generating the arrivaltimes of a Poissonprocess is
based on the fact that given the number of arrivals in an interval (0,t), the

Methods for Generating Random Variables 85
conditional distribution of the unordered arrival times are uniformly distrib-
uted on (0,t). That is, given that the number of arrivals in (0,t) is n, the
arrival times S
1
,...,Sn are jointly distributed as an ordered random sample
of size n from a Uniform(0,t) distribution.
Applying the conditional distribution of the arrival times, it is possible to
simulateaPoisson(?)processonaninterval(0,t)byfirstgeneratingarandom
observation n from the Poisson(?t) distribution, then generating a random
sample of n Uniform(0,t) observations and ordering the uniform sample to
obtain the arrival times.
Example 3.23 (Poissonprocess, cont.)
Returning to Example 3.22, simulate a Poisson(?) process and find N(3),
usingtheconditionaldistributionofthearrivaltimes. Asacheck,weestimate
the mean and variance of N(3) from 10000 replications.
lambda <- 2
t0 <- 3
upper <- 100
pp <- numeric(10000)
for (i in 1:10000) {
N <- rpois(1, lambda * upper)
Un <- runif(N, 0, upper) #unordered arrival times
Sn <- sort(Un) #arrival times
n <- min(which(Sn > t0)) #arrivals+1 in [0, t0]
pp[i] <- n - 1 #arrivals in [0, t0]
}
Alternately, the loop can be replaced by replicate,as shown.
pp <- replicate(10000, expr = {
N <- rpois(1, lambda * upper)
Un <- runif(N, 0, upper) #unordered arrival times
Sn <- sort(Un) #arrival times
n <- min(which(Sn > t0)) #arrivals+1 in [0, t0]
n - 1 }) #arrivals in [0, t0]
The meanand varianceshouldboth be equalto ?t=6 in this example. Here
thesamplemeanandsamplevarianceofthegeneratedvaluesN(3)areindeed
very close to 6.
> c(mean(pp), var(pp))
[1] 5.977100 5.819558
Actually, it is possible that none of the generated arrival times exceed the
time t =3. In this case, the process needs to be simulated for a longer time
0
than the value in upper. Therefore, in practice, one should choose upper

86 Statistical Computing with R
according to the parameters of the process, and do some error checking. For
example, if we need N(t ), one approach is to wrap the min(which()) step
0
with try and check that the result of try is an integer using is.integer.
See the corresponding help topics for details.
Ross[234]discussesthecomputationalefficiencyofthetwomethodsapplied
inExamples3.22and3.23. Actually,thesecondmethodisconsiderablyslower
(by afactorof4or5)thanthe previousmethodofExample3.22whencoded
in R. The rexp generator is almost as fast as runif,while the sort operation
adds O(nlog(n)) time. Some performance improvement might be gained if
thisalgorithmiscodedinCandafastersortingalgorithmdesignedforuniform
numbers is used. (cid:5)
Nonhomogeneous Poisson Processes
A counting process is a Poisson process with intensity function ?(t), t ?0
if N(t)=0, N(t) has independent increments, and for h>0,
P(N(t+h)?N(t)?2)=o(h), and
P(N(t+h)?N(t)=1)=?(t)h+o(h).
The PoissonprocessN(t) is nonhomogeneous ifthe intensity function ?(t) is
notconstant. AnonhomogeneousPoissonprocesshasindependentincrements
but does not have stationary increments. The distribution of
N(s+t)?N(s)
(cid:22) (cid:22)
s+t t
is Poisson with mean ?(y)dy. The function m(t)=E[N(t)]= ?(y)dy
s 0
is called the mean value function of the process. Note that m(t) = ? in the
case of the homogeneous Poisson process, where the intensity function is a
constant.
Every nonhomogeneous Poisson process with a bounded intensity function
can be obtained by time sampling a homogeneous Poisson process. Suppose
that ?(t) ? ? < ? for all t ? 0. Then sampling a Poisson(?) process such
that an event happening at time t is accepted or counted with probability
?(t)/? generates the nonhomogeneous process with intensity function ?(t).
To see this, let N(t) be the number of accepted events in [0,t]. Then N(t)
has the Poisson distribution with mean
(cid:6) (cid:6)
t t
?(y)
E[N(t)]=? dy = ?(y)dy.
?
0 0
To simulate a nonhomogeneous Poisson process on an interval [0,t ], find
0
? < ? such that ?(t) <= ? , 0 ? t ? t . Then generate from the homo-
0 0 0
geneous Poisson(?
0
) process the arrival times {Sj }, and accept each arrival
with probability ?(Sj)/?
0
. The steps to simulate the process on an interval
[0,t ) are as follows.
0

Methods for Generating Random Variables 87
Algorithm for simulating a nonhomogeneous Poisson process on an
interval [0,t ] by sampling from a homogeneous Poisson process.
0
1. Set S =0.
1
2. For j =1,2,... while Sj ?t
0
:
(a) Generate Tj ? Exp(?
0
) and set Sj =T
1
+···+Tj.
(b) Generate Uj ? Uniform(0,1).
(c) If Uj ??(Sj)/?
0
accept (count) this arrival and set Ij =1;
otherwise Ij =0.
3. Deliver the arrival times {Sj :Ij =1}.
Althoughthis algorithmis quite simple, for implementationinR it is more
efficient if translated into vectorized operations. This is shown in the next
example.
Example 3.24 (Nonhomogeneous Poissonprocess)
Simulate arealizationfromanonhomogeneousPoissonprocesswithintensity
function ?(t) = 3cos2(t). Here the intensity function is bounded above by
?=3, so the jth arrival is accepted if Uj ?3cos2(Sj)/3=cos2(Sj).
lambda <- 3
upper <- 100
N <- rpois(1, lambda * upper)
Tn <- rexp(N, lambda)
Sn <- cumsum(Tn)
Un <- runif(N)
keep <- (Un <= cos(Sn)^2) #indicator, as logical vector
Sn[keep]
Now, the values in Sn[keep]arethe orderedarrivaltimes ofthe nonhomoge-
neous Poisson process.
> round(Sn[keep], 4)
[1] 0.0237 0.5774 0.5841 0.6885 2.3262
2.4403 2.9984 3.4317 3.7588 3.9297
[11] 4.2962 6.2602 6.2862 6.7590 6.8354
7.0150 7.3517 8.3844 9.4499 9.4646 . . .
To determine the state of the process at time t = 2?, for example, refer to
the entries of Sn indexed by keep.
> sum(Sn[keep] <= 2*pi)
[1] 12

| 88  |     |     | Statistical |     | Computing |     | with R |     |     |
| --- | --- | --- | ----------- | --- | --------- | --- | ------ | --- | --- |
> table(keep)/N
keep
|           | FALSE |           | TRUE |     |     |     |     |     |     |
| --------- | ----- | --------- | ---- | --- | --- | --- | --- | --- | --- |
| 0.4969325 |       | 0.5030675 |      |     |     |     |     |     |     |
ThusN(2?)=12,andinthisexampleapproximately50%ofthearrivalswere
(cid:5)
counted.
| Renewal                                              | Processes |     |     |     |     |     |     |              |     |
| ---------------------------------------------------- | --------- | --- | --- | --- | --- | --- | --- | ------------ | --- |
| ArenewalprocessisageneralizationofthePoissonprocess. |           |     |     |     |     |     |     | If{N(t),t?0} |     |
isacountingprocess,suchthatthesequenceofnonnegativeinterarrivaltimes
| T ,T | ,... areiid(notnecessarilyexponentialdistribution),then{N(t),t?0} |     |     |     |     |     |     |     |     |
| ---- | ----------------------------------------------------------------- | --- | --- | --- | --- | --- | --- | --- | --- |
1 2
| is a renewal |              | process.     | The function |          | m(t)             | = E[N(t)]  | is    | called the mean  | value        |
| ------------ | ------------ | ------------ | ------------ | -------- | ---------------- | ---------- | ----- | ---------------- | ------------ |
| function     | of           | the process, | which        | uniquely |                  | determines |       | the distribution | of the       |
| interarrival | times.       |              |              |          |                  |            |       |                  |              |
| If the       | distribution |              | FT(t)        | of the   | iid interarrival |            | times | is specified,    | then a       |
| renewal      | process      | can          | be simulated |          | by generating    |            | the   | sequence of      | interarrival |
| times,       | by a method  |              | similar to   | Example  | 3.22.            |            |       |                  |              |
| Example      | 3.25         | (Renewal     | process)     |          |                  |            |       |                  |              |
Supposetheinterarrivaltimesofarenewalprocesshavethegeometricdistrib-
| utionwithsuccessprobabilityp. |                  |     |       | (Thisexampleisdiscussedin[234,Sec.7.2].) |     |           |     |            |         |
| ----------------------------- | ---------------- | --- | ----- | ---------------------------------------- | --- | --------- | --- | ---------- | ------- |
| Then                          | the interarrival |     | times | are nonnegative                          |     | integers, |     | and Sj = T | +···+Tj |
1
| have         | the negative    | binomial   | distribution    |           |           | with size     | parameter      | r = j          | and prob-    |
| ------------ | --------------- | ---------- | --------------- | --------- | --------- | ------------- | -------------- | -------------- | ------------ |
| ability      | p. The          | process    | can be          | simulated |           | by generating |                | geometric      | interarrival |
| times        | and computing   |            | the consecutive |           | arrival   | times         | by             | the cumulative | sum of       |
| interarrival | times.          |            |                 |           |           |               |                |                |              |
| t0           | <-              | 5          |                 |           |           |               |                |                |              |
| Tn           | <-              | rgeom(100, | prob            | = .2)     |           | #interarrival |                | times          |              |
| Sn           | <-              | cumsum(Tn) |                 |           |           | #arrival      | times          |                |              |
| n            | <- min(which(Sn |            | >               | t0))      |           | #arrivals+1   |                | in [0, t0]     |              |
| The          | distribution    | of         | N(t ) can       | be        | estimated |               | by replicating | the            | simulation   |
0
above.
| Nt0 | <-           | replicate(1000,      |        | expr | =    | {   |      |     |     |
| --- | ------------ | -------------------- | ------ | ---- | ---- | --- | ---- | --- | --- |
|     | Sn           | <- cumsum(rgeom(100, |        |      | prob | =   | .2)) |     |     |
|     | min(which(Sn |                      | > t0)) | -    | 1    |     |      |     |     |
})
table(Nt0)/1000
Nt0
|       | 0   | 1           | 2     | 3     | 4   | 5     | 6     | 7     |     |
| ----- | --- | ----------- | ----- | ----- | --- | ----- | ----- | ----- | --- |
| 0.273 |     | 0.316 0.219 | 0.108 | 0.053 |     | 0.022 | 0.007 | 0.002 |     |

Methods for Generating Random Variables 89
To estimate the means E[N(t)], vary the time t .
0
t0 <- seq(0.1, 30, .1)
mt <- numeric(length(t0))
for (i in 1:length(t0)) {
mt[i] <- mean(replicate(1000,
{
Sn <- cumsum(rgeom(100, prob = .2))
min(which(Sn > t0[i])) - 1
}))
}
plot(t0, mt, type = "l", xlab = "t", ylab = "mean")
LetuscomparewiththehomogeneousPoissonprocess,wherethe interarrival
times have a constantmean. Here we have p=0.2 so the averageinterarrival
time is 0.8/0.2 = 4. The Poisson process that has mean interarrival time
4 has Poisson parameter ?t = t/4. We added a reference line to the plot
corresponding to the Poisson process mean ?t=t/4 using abline(0, .25).
TheplotisshowninFigure3.10. Itshouldnotbe surprisingthatthemean
of the renewal process is very close to ?t, because the geometric distribution
is the discrete analog of exponential; it has the memoryless property. That
is, if X ? Geometric(p), then for all j,k =0,1,2,...
(1?p)j+k
P(X >j+k|X >j)= =(1?p) k =P(X >k).
(1?p)j
(cid:5)
Symmetric Random Walk
Let X ,X ,... be a sequence of iid random variables with probability
1 2
distrib(cid:10)ution P(Xi = 1) = P(Xi = ?1) = 1/2. Define the partial sum
Sn = n
i=1
Xi. The process {Sn,n ? 0} is called a symmetric random walk.
For example, if a gambler bets $1 on repeated trials of coin flipping, then Sn
represents the gain/loss after n tosses.
Example 3.26 (Plot a partial realization of a random walk)
It is very simple to generate a symmetric random walk process over a short
time span.
n <- 400
incr <- sample(c(-1, 1), size = n, replace = TRUE)
S <- as.integer(c(0, cumsum(incr)))
plot(0:n, S, type = "l", main = "", xlab = "i")

90 Statistical Computing with R
0 5 10 15 20 25 30
8
6
4
2
0
t
naem
FIGURE 3.10: Sequence of sample means of a simulated renewal process
in Example 3.25. The reference line corresponds to the mean ?t = t/4 of a
homogeneous Poisson process.
ApartialrealizationofthesymmetricrandomwalkprocessstartingatS =0
0
is shown in Figure 3.11. The process has returned to 0 several times within
time [1, 400].
> which(S == 0)
[1] 1 3 27 29 31 37 41 95 225 229 233 237 239 241
The value of Sn can be determined by the partial random walk starting at
the most recent time the process returned to 0. (cid:5)
IfthestateofthesymmetricrandomwalkSn attimenisrequired,butnot
the historyup to time n,then for largen itmay be more efficientto generate
Sn as follows.
Assume that S = 0 is the initial state of the process. If the process has
0
returned to the origin before time n, then to generate Sn we can ignore the
past history up until the time the process most recently hit 0. Let T be the
timeuntilthefirstreturntotheorigin. ThentogenerateSn,onecansimplify
the problem by first generating the waiting times T until the total time first
exceeds n. Then starting from the last return to the origin before time n,
generate the increments Xi and sum them.

Methods for Generating Random Variables 91
0 100 200 300 400
01
5
0
5?
01?
51?
02?
i
S
FIGURE 3.11: PartialrealizationofasymmetricrandomwalkinExample
3.26.
Algorithm to simulate the state Sn of a symmetric random walk
The following algorithm is adapted from [69, XIV.6].
Let Wj be the waiting time until the jth return to the origin.
1. Set W =0.
1
2. For j =1,2,... while Wj ?n:
(a) Generate a random Tj from the distribution of the time until the
first return to 0.
(b) Set Wj =T
1
+···+Tj.
3. Set t
0
=Wj ?Tj (time of last return to 0 in time n.)
4. Set s =0.
1
5. Generate the increments from time t +1 until time n:
0
For i=1,2,...,n?t
0
(a) Generate a random increment xi ?P(X =±1)=1/2.
(b) Set si =x
1
+···+xi.
(c) If si = 0 reset the counter to i = 1 (another return to 0 is not
accepted, so reject this partial random walk and generate a new
sequence of increments starting again from time t +1.)
0
6. Deliver si.

92 Statistical Computing with R
To implement the algorithm, one needs to provide a generator for T, the
time until the next returnof the process to 0. The probabilitydistribution of
T [69, Thm. 6.1] is given by
(cid:7) (cid:8)
2n?2 1 ?(2n?1)
P(T =2n)=p 2n = n?1 n22n?1 = n22n?1?2(n) , n?1,
P(T =2n+1)=0, n?0.
Example 3.27 (Generator for the time until return to origin)
An efficient algorithm for generating from the distribution T is given by De-
vroye[69,p.754]. Herewewillapplyaninefficientversionthatiseasilyimple-
mentedinR.Noticethatp 2nequals1/(2n)timestheprobabilityP(X =n?1)
where X ? Binomial (2n?2,p=1/2).
The following methods are equivalent.
#compute the probabilities directly
n <- 1:10000
p2n <- exp(lgamma(2*n-1)
- log(n) - (2*n-1)*log(2) - 2*lgamma(n))
#or compute using dbinom
P2n <- (.5/n) * dbinom(n-1, size = 2*n-2, prob = 0.5)
Recall that if X is a discrete random variable and
...<xi?1 <xi <xi+1 <...
are the points of discontinuity of FX(x), then the inverse transformation is
F
X
?1(u) = xi, where FX(xi?1 ) < u ? FX(xi). Therefore, a generator can be
written for values of T up to 20000 using the probability vector computed
above.
pP2n <- cumsum(P2n)
#for example, to generate one T
u <- runif(1)
Tj <- 2 * (1 + sum(u > pP2n))
Here are two examples to illustrate the method of looking up the solution
FX(xi?1 )<u?FX(xi) in the probability vector.
#first part of pP2n
[1] 0.5000000 0.6250000 0.6875000 0.7265625 0.7539062 0.7744141
Inthe firstexampleu=0.6612458andthe firstreturnto the originoccursat
time n=6, and in the second example u=0.5313384and the next return to
the 0 occurs at time n=4 after the first return to 0. Thus the second return

Methods for Generating Random Variables 93
to the origin occurs at time 10. (The case u > max(pP2n) must be handled
separately.)
Suppose now that n is given and we need to compute the time of the last
return to 0 in (0,n].
n <- 200
sumT <- 0
while (sumT <= n) {
u <- runif(1)
s <- sum(u > pP2n)
if (s == length(pP2n)) warning("T is truncated")
Tj <- 2 * (1 + s)
#print(c(Tj, sumT))
sumT <- sumT + Tj
}
sumT - Tj
IncasetherandomuniformexceedsthemaximalvalueinthecdfvectorpP2n,
awarningisissued. Hereinsteadofissuingawarning,onecouldappendtothe
vectorandreturnavalidT. Weleavethatasanexercise. Abetteralgorithmis
suggestedby Devroye[69, p. 754]. One runofthe simulationabovegenerates
the times 110, 128, 162, 164, 166, 168, and 210 that the process visits 0
(uncommentthe printstatementtoprintthe times). Thereforethe lastvisit
to 0 before n=200 is at time 168.
Finally, S can be generated by simulating a symmetric random walk
200
startingfromS =0fort=169,...,200(rejectingthe partialrandomwalk
168
if it hits 0). (cid:5)
Packages and Further Reading
Generalreferencesondiscreteeventsimulationandsimulationofstochastic
processesincludeBanksetal.[18],Devroye[69],andFishman[95]. Algorithms
for generating random tours in general are discussed by Fishman [94, Ch. 5].
Also see Cornuejols and Tu¨tu¨ncu¨ [53] on related optimization methods.
Ross [234, Ch. 10] has a nice introduction to Brownian Motion, starting
withtheinterpretationofBrownianMotionasthelimitofrandomwalks. For
a more theoretical treatment see Durrett [77, Ch. 7].
See Franklin [98] for simulation of Gaussian processes. Functions to simu-
late longmemorytime seriesprocesses,including fractionalBrownianmotion
are available in the R package fSeries(see e.g. fbmSim)[299] and sde [149].
The FracSim package [65, 66] implements methods for simulation of multi-
fractional L´evy motions. Also see Coeurjolly [51] for a bibliographical and
comparative study on simulation and identification of fractional Brownian
motion.
Referencesonthegeneralsubjectofmethodsforgeneratingrandomvariates
from specified probability distributions have been given in Section 3.1.

94 Statistical Computing with R
Exercises
3.1 Writeafunctionthatwillgenerateandreturnarandomsampleofsizenfrom
the two-parameter exponential distribution Exp(?,?) for arbitrary n, ?, and
?. (See Examples 2.3 and 2.6.) Generate a large sample from Exp(?,?) and
compare the sample quantiles with the theoretical quantiles.
3.2 The standard Laplace distribution has density f(x)= 1e?|x|, x?R. Use the
2
inversetransformmethodto generatea randomsample ofsize 1000fromthis
distribution. Use one of the methods shown in this chapter to compare the
generated sample to the target distribution.
3.3 The Pareto(a,b)distribution has cdf
(cid:7) (cid:8)
a
b
F(x)=1? , x?b>0,a>0.
x
Derive the probability inverse transformation F?1(U) and use the inverse
transform method to simulate a random sample from the Pareto(2, 2) dis-
tribution. Graph the density histogram of the sample with the Pareto(2, 2)
density superimposed for comparison.
3.4 The Rayleigh density [156, Ch. 18] is
f(x)= x e ?x2/(2?2), x?0, ? >0.
?2
Develop an algorithmto generate randomsamples from a Rayleigh(?) distri-
bution. Generate Rayleigh(?) samples for several choices of ? >0 and check
that the mode of the generated samples is close to the theoretical mode ?
(check the histogram).
3.5 A discrete random variable X has probability mass function
x 0 1 2 3 4
p(x) 0.10.20.20.20.3
Use the inverse transform method to generate a random sample of size 1000
fromthe distributionofX. Constructarelativefrequencytableandcompare
the empirical with the theoretical probabilities. Repeat using the R sample
function.
3.6 Prove that the accepted variates generated by the acceptance-rejection sam-
pling algorithm are a random sample from the target density fX.
3.7 Write a function to generate a random sample of size n from the Beta(a,b)
distribution by the acceptance-rejection method. Generate a random sample
of size 1000 from the Beta(3,2) distribution. Graph the histogram of the
sample with the theoretical Beta(3,2) density superimposed.

Methods for Generating Random Variables 95
3.8 Write a function to generate random variates from a Lognormal(µ,?) distri-
bution using a transformationmethod, andgenerate a randomsample of size
1000. Compare the histogram with the lognormal density curve given by the
dlnorm function in R.
3.9 The rescaled Epanechnikov kernel [85] is a symmetric density function
3
fe(x)= (1?x2), |x|?1. (3.10)
4
Devroye and Gyo¨rfi [71, p. 236] give the following algorithm for simulation
from this distribution. Generate iid U ,U ,U ? Uniform(?1,1). If |U | ?
1 2 3 3
|U | and |U | ? |U |, deliver U ; otherwise deliver U . Write a function
2 3 1 2 3
to generate random variates from fe, and construct the histogram density
estimate of a large simulated random sample.
3.10 Prove that the algorithm given in Exercise 3.9 generates variates from the
density fe (3.10).
3.11 Generate a random sample of size 1000 from a normal locationmixture. The
componentsofthemixturehaveN(0,1)andN(3,1)distributionswithmixing
probabilities p and p = 1?p . Graph the histogram of the sample with
1 2 1
density superimposed, for p = 0.75. Repeat with different values for p
1 1
and observe whether the empirical distribution of the mixture appears to be
bimodal. Make a conjecture about the values of p that produce bimodal
1
mixtures.
3.12 Simulate a continuous Exponential-Gamma mixture. Suppose that the rate
parameter ? has Gamma(r,?) distribution and Y has Exp(?) distribution.
That is, (Y|? = ?) ? fY(y|?) = ?e??y. Generate 1000 random observations
from this mixture with r =4 and ? =2.
3.13 It can be shown that the mixture in Exercise 3.12 has a Pareto distribution
with cdf (cid:7) (cid:8)
r
?
F(y)=1? , y ?0.
?+y
(This is an alternative parameterization of the Pareto cdf given in Exercise
3.3.) Generate 1000 random observations from the mixture with r = 4 and
? =2. Comparetheempiricalandtheoretical(Pareto)distributionsbygraph-
ingthedensityhistogramofthesampleandsuperimposingtheParetodensity
curve.
3.14 Generate 200 random observations from the 3-dimensional multivariate nor-
mal distribution having mean vector µ=(0,1,2) and covariance matrix
? ?
1.0 ?0.5 0.5
?= ? ?0.5 1.0 ? 0.5 ?
0.5 ?0.5 1.0
using the Choleski factorization method. Use the R pairs plot to graph an
array of scatter plots for each pair of variables. For each pair of variables,

96 Statistical Computing with R
(visually) check that the location and correlation approximately agree with
thetheoreticalparametersofthecorrespondingbivariatenormaldistribution.
3.15 Write a function that will standardize a multivariate normal sample for arbi-
trary n and d. Thatis, transformthe sample so that the sample meanvector
is zero and sample covariance is the identity matrix. To check your results,
generate multivariate normal samples and print the sample mean vector and
covariance matrix before and after standardization.
3.16 Efron and Tibshirani discuss the scor (bootstrap) test score data on 88
students who took examinations in five subjects [84, Table 7.1], [188, Ta-
ble 1.2.1]. Each row of the data frame is a set of scores (xi1 ,...,xi5 ) for
the ith student. Standardize the scores by type of exam. That is, standard-
ize the bivariate samples (X ,X ) (closed book) and the trivariate samples
1 2
(X ,X ,X )(openbook). Computethecovariancematrixofthetransformed
3 4 5
sample of test scores.
3.17 Compare the performance of the Beta generatorof Exercise3.7, Example 3.8
and the R generator rbeta. Fix the parameters a = 2,b = 2 and time each
generator on 1000 iterations with sample size 5000. (See Example 3.19.) Are
the results different for different choices of a and b?
3.18 Write a function to generate a random sample from a Wd(?,n) (Wishart)
distribution for n>d+1?1, based on Bartlett’s decomposition.
3.19 SupposethatAandBeachstartwithastakeof$10,andbet$1onconsecutive
coin flips. The game ends when either one of the players has all the money.
LetSn bethefortuneofplayerAattimen. Then{Sn,n?0}isasymmetric
random walk with absorbing barriers at 0 and 20. Simulate a realization of
the process {Sn,n ? 0} and plot Sn vs the time index from time 0 until a
barrier is reached.
3.20 A compound Poisson process is a stochasticprocess{X(t),t?0}thatcanbe
(cid:10)
represented as the random sum X(t)=
i
N
=
(
1
t)Yi, t?0, where {N(t),t?0}
is a Poisson process and Y ,Y ,... are iid and independent of {N(t),t? 0}.
1 2
Write aprogramto simulate a compoundPoisson(?)–Gammaprocess(Y has
a Gamma distribution). Estimate the mean and the variance of X(10) for
several choices of the parameters and compare with the theoretical values.
Hint: Show that E[X(t)]=?tE[Y ] and Var(X(t))=?tE[Y2].
1 1
3.21 A nonhomogeneous Poisson process has mean value function m(t)=t2+2t,
t ? 0. Determine the intensity function ?(t) of the process, and write a
programtosimulatetheprocessontheinterval[4,5]. Computetheprobability
distributionofN(5)?N(4),andcompareittotheempiricalestimateobtained
by replicating the simulation.

Chapter 4
Visualization of Multivariate Data
4.1 Introduction
The topic of visualization of multivariate data is related to more general
subjectscalledexploratorydataanalysis(EDA)andstatisticalgraphics. The
term “exploratory” is in contrast to “confirmatory,” which could describe
hypothesis testing. Tukey [275] believed that it was important to do the
exploratoryworkbeforehypothesistesting,to learnwhatarethe appropriate
questions to ask, and the most appropriate methods to answer them. With
multivariatedata,wemayalsobeinterestedindimensionreductionorfinding
structure or groups in the data. Here we restrict attention to methods for
visualizing multivariate data.
In this chapter several graphics functions are used. In addition to the R
graphicspackage,whichloadswhenRisstarted,otherpackagesdiscussedin
thischapterarelattice[239]andMASS(see[278]). Alsoseetherggobi[167]
interfacetoGGobiandrgl[2]packageforinteractive3Dvisualization. Table
1.4 lists some basic graphics functions in R (graphics) or other packages.
Table 4.1 lists more 2D graphics functions and some of the 3D visualization
methods.
Chapter 1 gives a brief summary of options for colors, plotting symbols,
and line types.
4.2 Panel Displays
Apaneldisplayisanarrayoftwo-dimensionalgraphicalsummariesofpairs
of variables in a multivariate dataset. For example, a scatterplot matrix dis-
playsthescatterplotsforallpairsofvariablesinanarray. Thepairsfunction
in the graphics package produces a scatterplot matrix, as shown in Figures
4.1and4.2inExample4.1,andFigure3.7onpage75. Anexampleofapanel
display of three-dimensional plots is Figure 4.5 on page 106.
97

98 Statistical Computing with R
TABLE 4.1: Graphics Functions for Multivariate Data in R
(graphics)and Other Packages
Method in (graphics) in (package)
3D scatterplot cloud (lattice)
Matrix of scatterplots pairs splom (lattice)
Bivariate density surface persp wireframe (lattice)
Contour plot contour, image contourplot (lattice)
contourLines contour (MASS)
filled.contour levelplot (lattice)
Parallelcoord. plot parallel (lattice)
parcoord (MASS)
Star plot stars
Segment plot stars
Interactive 3D graphics (rggobi), (rgl)
Example 4.1 (Scatterplot matrix)
We comparethe four variables in the irisdata for the species virginica,in a
scatterplot matrix.
data(iris)
#virginica data in first 4 columns of the last 50 obs.
pairs(iris[101:150, 1:4])
In the plot produced by the pairs command above (not shown) the variable
names will appear along the diagonal. The pairs function takes an optional
argument diag.panel,which is a function that determines what is displayed
along the diagonal. For example, to obtain a graph with estimated density
curvesalongthediagonal,supplythenameofafunctiontoplotthedensities.
The function below called panel.dplots the densities.
panel.d <- function(x, ...) {
usr <- par("usr")
on.exit(par(usr))
par(usr = c(usr[1:2], 0, .5))
lines(density(x))
}
In panel.d,the graphicsparameterusrspecifies the extremes ofthe user co-
ordinatesoftheplottingregion. Beforeplotting,weapplythescalefunction
to standardize each of the one-dimensional samples.
x <- scale(iris[101:150, 1:4])
r <- range(x)
pairs(x, diag.panel = panel.d, xlim = r, ylim = r)

Visualization of Multivariate Data 99
The pairsplot is displayedin Figure 4.1. Fromthe plot we canobserve that
the length variables are positively correlated,and the width variables appear
to be positively correlated. Other structure couldbe presentin the data that
is not revealed by the bivariate marginal distributions.
The lattice package [239] provides functions to construct panel displays.
Here we illustrate the scatterplot matrix function splom in lattice.
library(lattice)
splom(iris[101:150, 1:4]) #plot 1
#for all 3 at once, in color, plot 2
splom(iris[,1:4], groups = iris$Species)
#for all 3 at once, black and white, plot 3
splom(~iris[1:4], groups = Species, data = iris,
col = 1, pch = c(1, 2, 3), cex = c(.5,.5,.5))
The last plot (plot 3) is displayed in Figure 4.2. It is displayed here in black
andwhite,butonscreenthepaneldisplayiseasiertointerpretwhendisplayed
in color (plot 2). Also see the 3D scatterplot of the iris data in Figure 4.5. (cid:5)
?2 ?1 0 1 2 ?2 ?1 0 1 2
Sepal.Length
2
1
0
1?
2?
2
1
0
1?
2?
Sepal.Width
Petal.Length 2
1
0
1?
2?
?2 ?1 0 1 2
2
1
0
1?
2?
Petal.Width
?2 ?1 0 1 2
FIGURE 4.1: Scatterplot matrix (pairs) comparing four measurements
of iris virginica species in Example 4.1.
For other types of panel displays, see the conditioning plots [42, 48, 49]
implemented in coplot.

| 100 |     |     | Statistical |     | Computing | with R |     |     |     |
| --- | --- | --- | ----------- | --- | --------- | ------ | --- | --- | --- |
2.5
1.5 2.0 2.5
2.0
1.5
Petal.Width
1.0
0.5
|     |     |     |     |     |     | 0.0 0.5 | 1.0 |     |     |
| --- | --- | --- | --- | --- | --- | ------- | --- | --- | --- |
0.0
7
|     |     |     |     |     |     | 4 5 6 7 |     |     |     |
| --- | --- | --- | --- | --- | --- | ------- | --- | --- | --- |
6
5
|     |     |     |     |     | 4 Petal.Length | 4   |     |     |     |
| --- | --- | --- | --- | --- | -------------- | --- | --- | --- | --- |
3
2
|     |     |     |     |     | 1 2 | 3 4 |     |     |     |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
1
4.5
|     |     |     |     | 3.5 4.0 | 4.5 |     |     |     |     |
| --- | --- | --- | --- | ------- | --- | --- | --- | --- | --- |
4.0
3.5
Sepal.Width
3.0
2.5
|     |     |     | 2.0 | 2.5 3.0 |     |     |     |     |     |
| --- | --- | --- | --- | ------- | --- | --- | --- | --- | --- |
2.0
8
|     |     |     | 7 8 |     |     |     |     |     |     |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
7
|     | Sepal.Length |     | 6   |     |     |     |     |     |     |
| --- | ------------ | --- | --- | --- | --- | --- | --- | --- | --- |
5
5 6
Scatter Plot Matrix
| FIGURE | 4.2: | Scatterplot |     | matrix | comparing | four measurements |     |     | of iris |
| ------ | ---- | ----------- | --- | ------ | --------- | ----------------- | --- | --- | ------- |
data: setosa(circle),versicolor(triangle),virginica(cross)fromExample4.1.
| 4.3 Surface                                   |              | Plots       |        | and 3D               | Scatter                     | Plots             |          |             |       |
| --------------------------------------------- | ------------ | ----------- | ------ | -------------------- | --------------------------- | ----------------- | -------- | ----------- | ----- |
| Severalpackagesprovidesurfaceandcontourplots. |              |             |        |                      |                             | Thepersp          |          | (graphics)  |       |
| function                                      | draws        | perspective |        | plots of             | surfaces                    | over the plane.   | Try      | running     | the   |
| demo examples                                 |              | for         | persp, | to see               | many interesting            | graphs.           |          | The command |       |
| is simply                                     | demo(persp). |             |        | We will also         | look                        | at 3D methods     | in       | the lattice |       |
| graphics                                      | package      | and         | the    | rgl package          | [239,                       | 278, 2].          |          |             |       |
| 4.3.1                                         | Surface      | plots       |        |                      |                             |                   |          |             |       |
| Forcertaingraphswe                            |              |             | need   | to mesha             | gridofregularlyspacedpoints |                   |          |             | inthe |
| plane. The                                    | command      |             | for    | this is expand.grid. |                             | If we do          | not need | to save     | the   |
| x,y values,                                   | and          | only        | need   | the function         | values                      | {zij = f(xi,yj)}, |          | the         | outer |
| function                                      | can be       | used.       |        |                      |                             |                   |          |             |       |

Visualization of Multivariate Data 101
Example 4.2 (Plot bivariate normal density)
Plot the standard bivariate normal density
f(x,y)= 1 e ?1 2(x2+y2), (x,y)?R2.
2?
Code to plot the bivariate standard normal density surface using the persp
functionisbelow. Mostoftheparametersareoptional;x, y, zarerequired.
For this function we need the complete grid of z values, but only one vector
ofxandone vectorofy values. Inthis example,zij =f(xi,yj)arecomputed
by the outer function.
#the standard BVN density
f <- function(x,y) {
z <- (1/(2*pi)) * exp(-.5 * (x^2 + y^2))
}
y <- x <- seq(-3, 3, length= 50)
z <- outer(x, y, f) #compute density for all (x,y)
persp(x, y, z) #the default plot
persp(x, y, z, theta = 45, phi = 30, expand = 0.6,
ltheta = 120, shade = 0.75, ticktype = "detailed",
xlab = "X", ylab = "Y", zlab = "f(x, y)")
The second version of the perspective plot is shown in Figure 4.3. (cid:5)
R note 4.1 The outerfunction outer(x, y, f)in Example 4.2 applies the
third argument, a bivariate function, to the grid of (x,y) values. The returned
valueisamatrixoffunctionvaluesfor everypoint(xi,yj)inthegrid. Storing
the grid was not necessary.
For a presentation, adding color (say, col = "lightblue") produces a
more attractive plot. The box can be suppressed by box = FALSE.
Adding elements to a perspective plot
The perspfunction returns the ‘viewing transformation’in a 4×4 matrix.
This transformation can be used to add elements to the plot.
Example 4.3 (Add elements to perspective plot)
This example uses the viewing transformation returned by the perspective
plotofthe standardbivariate normaldensityto addpoints,lines, andtextto
the plot.

102 Statistical Computing with R
0.15
f(x
,
y
0.10
)
0.05
?3 3
?2 2
?1 1
0 0
X Y
1 ?1
2 ?2
3 ?3
FIGURE 4.3: Perspectiveplotofthe standardbivariatenormaldensity in
Example 4.2.
#store viewing transformation in M
persp(x, y, z, theta = 45, phi = 30,
expand = .4, box = FALSE) -> M
The transformation returned by the persp function call is
[,1] [,2] [,3] [,4]
[1,] 2.357023e-01 -0.1178511 0.2041241 -0.2041241
[2,] 2.357023e-01 0.1178511 -0.2041241 0.2041241
[3,] -2.184757e-16 4.3700078 2.5230252 -2.5230252
[4,] 1.732284e-17 -0.3464960 -2.9321004 3.9321004
ThistransformationMisappliedto(x,y,z,t)toprojectpointsontothescreen
for display in the same coordinate system used to draw the perspective plot.
#add some points along a circle
a <- seq(-pi, pi, pi/16)
newpts <- cbind(cos(a), sin(a)) * 2
newpts <- cbind(newpts, 0, 1) #z=0, t=1
N <- newpts %*% M
points(N[,1]/N[,4], N[,2]/N[,4], col=2)
#add lines
x2 <- seq(-3, 3, .1)
y2 <- -x2^2 / 3
z2 <- dnorm(x2) * dnorm(y2)

Visualization of Multivariate Data 103
N <- cbind(x2, y2, z2, 1) %*% M
lines(N[,1]/N[,4], N[,2]/N[,4], col=4)
#add text
x3 <- c(0, 3.1)
y3 <- c(0, -3.1)
z3 <- dnorm(x3) * dnorm(y3) * 1.1
N <- cbind(x3, y3, z3, 1) %*% M
text(N[1,1]/N[1,4], N[1,2]/N[1,4], "f(x,y)")
text(N[2,1]/N[2,4], N[2,2]/N[2,4], bquote(y==-x^2/3))
The plot with added elements is shown in Figure 4.4 (Note: R provides a
functiontrans3dtocompute thecoordinatesabove. Herewehaveshownthe
calculations.) (cid:5)
f(x,y)
y=?x2 3
FIGURE 4.4: Perspective plot of the standard bivariate normal density
with elements added using the viewing transformation returned by persp in
Example 4.3.
Other functions for graphing surfaces
Surfaces can also be graphed using the wireframe (lattice) function
[239]. Supply a formula z ? x * y and a data frame or data matrix con-
taining the points (x, y, z).

104 Statistical Computing with R
Example 4.4 (Surface plot using wireframe(lattice))
The following code displays a surface plot of the bivariate normal density
similar to Figure 4.3 using wireframe(lattice). The wireframe function
requires a formula z ? x?y, where z = f(x,y) is the surface to be plotted.
The syntax for wireframerequires that x, y and z have the same number of
rows. We can generate the matrix of (x,y) coordinates using expand.grid.
library(lattice)
x <- y <- seq(-3, 3, length= 50)
xy <- expand.grid(x, y)
z <- (1/(2*pi)) * exp(-.5 * (xy[,1]^2 + xy[,2]^2))
wireframe(z ~ xy[,1] * xy[,2])
The wireframeplot (not shown)looks very similar to the perspective plot of
the bivariate normal density in Figure 4.3. (cid:5)
An interactive 3D display is provided by the graphics package rgl [2]. If
the rgl package is installed, run the demo. One of the examples in the demo
showsa bivariatenormaldensity. (Actually, the data usedtoplotthe surface
in this demo is generated by smoothing simulated bivariate normal data.)
library(rgl)
demo(bivar) #or demo(rgl) to see more
Itmaybehelpfultoenlargethegraphwindow. Thegraphcanberotatedand
tilted by the mouse to see the surface from different angles. For the source
code of this demo, refer to the file ./demo/bivar.r in the directory where rgl
is installed.
Chapter 10 gives examples of methods to construct and plot density esti-
mates for bivariate data. See e.g. Figures 10.11, 10.12(a), and 10.13.
4.3.2 Three-dimensional scatterplot
The cloud (lattice)[239] function produces 3D scatterplots. A possible
application of this type of plot is to explore whether there are groups or
clustersinthedata. Toapplythecloudfunction,provideaformulaz ?x?y,
where z =f(x,y) is the surface to be plotted. The first part of the following
exampleis asimpleapplicationof cloudwithgroupsidentifiedbycolor. The
second part of the example illustrates several options.
Example 4.5 (3D scatterplot)
This example uses the cloud function in the lattice package to display a
3D scatterplot of the iris data. There are three species of iris and each is
measured on four variables. The following code produces a 3D scatterplot of

Visualization of Multivariate Data 105
sepal length, sepal width, and petal length. The plot produced is similar to
(3) in Figure 4.5.
library(lattice)
attach(iris)
#basic 3 color plot with arrows along axes
print(cloud(Petal.Length ~ Sepal.Length * Sepal.Width,
data=iris, groups=Species))
The iris data has four variables, so there are four subsets of three variables
to graph. Toseeallfourplotsonthe screen,use themoreandsplitoptions.
The split arguments determine the location of the plot within the panel
display.
print(cloud(Sepal.Length ~ Petal.Length * Petal.Width,
data = iris, groups = Species, main = "1", pch=1:3,
scales = list(draw = FALSE), zlab = "SL",
screen = list(z = 30, x = -75, y = 0)),
split = c(1, 1, 2, 2), more = TRUE)
print(cloud(Sepal.Width ~ Petal.Length * Petal.Width,
data = iris, groups = Species, main = "2", pch=1:3,
scales = list(draw = FALSE), zlab = "SW",
screen = list(z = 30, x = -75, y = 0)),
split = c(2, 1, 2, 2), more = TRUE)
print(cloud(Petal.Length ~ Sepal.Length * Sepal.Width,
data = iris, groups = Species, main = "3", pch=1:3,
scales = list(draw = FALSE), zlab = "PL",
screen = list(z = 30, x = -55, y = 0)),
split = c(1, 2, 2, 2), more = TRUE)
print(cloud(Petal.Width ~ Sepal.Length * Sepal.Width,
data = iris, groups = Species, main = "4", pch=1:3,
scales = list(draw = FALSE), zlab = "PW",
screen = list(z = 30, x = -55, y = 0)),
split = c(2, 2, 2, 2))
detach(iris)
The four 3D scatterplots are shown in Figure 4.5. The plots show that
the three species of iris are separated into groups or clusters in the three
dimensional subspaces spanned by any three of the four variables. There
is some structure evident in these plots. One might follow up with cluster
analysis or principal components analysis to analyze the apparent structure
in the data. (cid:5)

106 Statistical Computing with R
R note 4.2 Syntax for cloud: The screenoption sets the orientation of the
axes. Setting draw = FALSE suppresses arrows and tick marks on the axes.
Syntax for print(cloud): To split the screen into n rows and m columns,
and put the plot into position (r,c), set split equal to the vector (r,c,n,m).
One unusual feature of cloud is that unlike most graphics functions in R,
cloud does not plot a panel figure unless we print it. See print.trellis
for documentation on the print method for cloud.
1 2
SL SW
Petal.Width Petal.Width
Petal.Length Petal.Length
3 4
PL PW
Sepal.Width Sepal.Width
Sepal.Length Sepal.Length
FIGURE 4.5: 3D scatterplots of iris data produced by cloud (lattice)
inExample4.5,witheachspeciesrepresentedbyadifferentplottingcharacter.
4.4 Contour Plots
A contour plot represents a 3D surface (x,y,f(x,y)) in the plane by pro-
jecting the level curves f(x,y) = c for selected constants c. The functions
contour (graphics) and contourplot (lattice) [239] produce contour
plots. Thefunctionsfilled.contourinthegraphicspackageandlevelplot
function in the lattice package produce filled contour plots. Both contour

Visualization of Multivariate Data 107
and contourplot label the contours by default. A variation of this type of
plot is image (graphics),which uses color to identify contour levels.
Example 4.6 (Contour plot)
A good example is providedin R using the volcanodata. Informationabout
this data is in the help file for volcano. The data is an 87 by 61 matrix
containing topographic information for the Maunga Whau volcano.
#contour plot with labels
contour(volcano, asp = 1, labcex = 1)
#another version from lattice package
library(lattice)
contourplot(volcano) #similar to above
Figure 4.6(a) shows the contour plot of the volcano data produced by the
contour function.
Itmayalsobeinterestingtoseethe3Dsurfaceofthevolcanoforcomparison
with the contour plots. A 3D view of the volcano surface is provided in the
examples of the persp function. The R code for the example is in the persp
help page. To run the example, type example(persp).
Iftherglpackageisinstalled,aninteractive3Dviewofthevolcanoappears
in the examples. When the volcano surface is displayed, use the mouse to
rotate and tilt the surface, to view it from different angles.
library(rgl)
example(rgl)
Yetanother3Dviewofthevolcanodata,withshadingtoindicatecontour
levels, appears in the examples of the wireframe function in the lattice
package. See the first example in the wireframehelp file. (cid:5)
Example 4.7 (Filled contour plots)
A contour plot with a 3D effect could be displayed in 2D by overlaying the
contourlinesonacolormapcorrespondingtotheheight. Theimagefunction
inthegraphicspackageprovidesthecolorbackgroundfortheplot. Theplot
produced below is similar to Figure 4.6(a), with the background of the plot
in terrain colors.
image(volcano, col = terrain.colors(100), axes = FALSE)
contour(volcano, levels = seq(100,200,by = 10), add = TRUE)

108 Statistical Computing with R
0.0 0.2 0.4 0.6 0.8 1.0
0.1
8.0
6.0
4.0
2.0
0.0
200
180
160
140
120
100
(a) (b)
FIGURE 4.6: Contour plot and levelplot of volcano data in Examples 4.6
and 4.7.
Using image without contour produces essentially the same type of plot as
filled.contour (graphics) and levelplot (lattice). The contours of
filled.contourandlevelplotareidentifiedbyalegendratherthansuper-
imposing the contour lines. Compare the plot produced by image with the
following two plots.
filled.contour(volcano, color = terrain.colors, asp = 1)
levelplot(volcano, scales = list(draw = FALSE),
xlab = "", ylab = "")
The plot produced by levelplotis shown in Figure 4.6(b). (The display on
the screen will be in color.) (cid:5)
A limitation of 2D scatterplots is that for large data sets, there are often
regions where data is very dense, and regions where data is quite sparse. In
this case, the 2D scatterplot does not reveal much information about the
bivariate density. Another approach is to produce a 2D or flat histogram,
with the density estimate in each bin represented by an appropriate color.
Example 4.8 (2D histogram)
In this example, simulated bivariate normal data is displayed in a flat his-
togram with hexagonal bins. The hexbin function in package hexbin [38]
(availablefromBioconductorrepository)producesa basicversionofthis plot
in grayscale,shown in Figure 4.7.
library(hexbin)
x <- matrix(rnorm(4000), 2000, 2)
plot(hexbin(x[,1], x[,2]))

Visualization of Multivariate Data 109
ComparetheflatdensityhistograminFigure4.7withthebivariatehistogram
in Figure 10.11 on page 308. Note that the darker colors correspond to the
regions where the density is highest, and colors are increasingly lighter along
radial lines extending from the mode near the origin. The plot exhibits ap-
proximatelycircularsymmetry,consistentwiththestandardbivariatenormal
density.
The bivariate histogram can also be displayed in 2D using a color palette,
such as heat.colors or terrain.colors, to represent the density for each
bin. A similar type of plot is implemented in the gplots package [290]. The
plot (not shown) resulting from the following code is similar to Figure 4.7,
but with color and square bins.
library(gplots)
hist2d(x, nbins = 30,
col = c("white", rev(terrain.colors(30))))
(cid:5)
Counts
1188
17
16
15
14
13
12
11
10
8
7
6
5
4
3
2
1
?3 ?2 ?1 0 1 2 3
3
2
1
0
1?
2?
3?
FIGURE 4.7: Flatdensityhistogramofbivariatenormaldatawithhexag-
onal bins produced by hexbin in Example 4.8.

110 Statistical Computing with R
4.5 Other 2D Representations of Data
In addition to contour plots and other projections of data into two dimen-
sions, there are several other methods for representing multivariate data in
two dimensions. These include, among others, Andrews curves, parallel co-
ordinate plots, and various iconographic displays such as segment plots and
star plots.
4.5.1 Andrews Curves
If X
1
,...,Xn ? Rd, one approach to visualizing the data in two dimen-
sions is to map each of the sample data vectors onto a real valued function.
Andrews Curves [10] map each sample observation xi = xi1 ,...,xid to the
function
fi(t)= ?
xi1
+xi2 sint+xi3 cost+xi4 sin2t+xi5 cos2t+...
2
(cid:5) (cid:5)
= ?
xi1
+ xi,2ksinkt+ xi,2k+1 coskt, ?? ?t??.
2
1?k?d/2 1?k<d/2
Thus, each observation is represented by its projection onto a set of orthog-
onal basis functions {2?1/2,{sinkt}? ,{coskt}? }. Notice that differences
k=1 k=1
between measurements are amplified more in the lower frequency terms, so
that the representation depends on the order of the variables or features.
Example 4.9 (Andrews curves)
Inthisexample,measurementsofleavestakenatN.Queensland,Australiafor
two types of leaf architecture [162] are represented by Andrews curves. The
data setisleafshape17inthe DAAGpackage[184,185]. Threemeasurements
(leaf length, petiole, and leaf width) correspond to points in R3. It is easiest
to interpret the plots if leaf architectures are identified by different colors,
but here we use different line types. To plot the curves, define a function to
compute fi(t) for arbitrary points xi in R3 and ?? ? t ? ?. Evaluate the
function along the interval [??,?] for each sample point xi.
library(DAAG)
attach(leafshape17)
f <- function(a, v) {
#Andrews curve f(a) for a data vector v in R^3
v[1]/sqrt(2) + v[2]*sin(a) + v[3]*cos(a)
}

Visualization of Multivariate Data 111
#scale data to range [-1, 1]
x <- cbind(bladelen, petiole, bladewid)
n <- nrow(x)
mins <- apply(x, 2, min) #column minimums
maxs <- apply(x, 2, max) #column maximums
r <- maxs - mins #column ranges
y <- sweep(x, 2, mins) #subtract column mins
y <- sweep(y, 2, r, "/") #divide by range
x <- 2 * y - 1 #now has range [-1, 1]
#set up plot window, but plot nothing yet
plot(0, 0, xlim = c(-pi, pi), ylim = c(-3,3),
xlab = "t", ylab = "Andrews Curves",
main = "", type = "n")
#now add the Andrews curves for each observation
#line type corresponds to leaf architecture
#0=orthotropic, 1=plagiotropic
a <- seq(-pi, pi, len=101)
dim(a) <- length(a)
for (i in 1:n) {
g <- arch[i] + 1
y <- apply(a, MARGIN = 1, FUN = f, v = x[i,])
lines(a, y, lty = g)
}
legend(3, c("Orthotropic", "Plagiotropic"), lty = 1:2)
detach(leafshape17)
The plot of Andrews curves for this example is shown in Figure 4.8. The
plot reveals similarities within plagiotropic and orthotropic leaf architecture
groups, and differences between these groups. In general, this type of plot
may reveal possible clustering of data. (cid:5)
R note 4.3 In Example 4.9 the sweep operator is applied to subtract the
column minimums above. The syntax is
sweep(x, MARGIN, STATS, FUN="-", ...)
By default, the statistic is subtracted but other operations are possible. Here
y <- sweep(x, 2, mins) #subtract column mins
y <- sweep(y, 2, r, "/") #divide by range
sweeps out (subtracts) the minimum of each columns (margin = 2). Then the
ranges of each of the three columns (in r) are swept out; that is, each column
is divided by its range. (cid:5)

112 Statistical Computing with R
?3 ?2 ?1 0 1 2 3
3
2
1
0
1?
2?
3?
t
sevruC
swerdnA
Orthotropic
Plagiotropic
FIGURE 4.8: Andrews curves for leafshape17 (DAAG) data at latitude
17.1: leaf length, width, and petiole measurements in Example 4.9. Curves
are identified by leaf architecture.
R note 4.4 In Figure 4.8 to identify the curves by color, replace lty with
col parameters in the lines and legend statements. (cid:5)
4.5.2 Parallel Coordinate Plots
Parallelcoordinate plots provide another approachto visualization of mul-
tivariate data. The representation of vectors by parallel coordinates was in-
troduced by Inselberg [152] and applied for data analysis by Wegman [294].
Rather than represent axes as orthogonal, the parallel coordinate system
representsaxesasequidistantparallellines. Usuallytheselinesarehorizontal
with common origin, scale, and orientation. Then to represent vectors in Rd,
the parallel coordinates are simply the coordinates along the d copies of the
real line. Each coordinate of a vector is then plotted along its corresponding
axis, and the points are joined together with line segments.
Parallelcoordinate plots are implemented by the parcoordfunction in the
MASS package [278] and the parallelfunction in the lattice package [239].
The parcoordfunctiondisplaysthe axesasverticallines. The panelfunction
parallel displays the axes as horizontal lines.

Visualization of Multivariate Data 113
Example 4.10 (Parallelcoordinates)
Thisexampleillustratesusingtheparallel (lattice)functiontoconstruct
a panel display of parallel coordinate plots for the crabs (MASS) data [278].
The crabs data frame has 5 measurements on each of 200 crabs, from four
groups of size 50. The groups are identified by species (blue or orange) and
sex. The graph is best viewed in color. Here we use black and white, and for
readability select only 1/5 of the data.
library(MASS)
library(lattice)
trellis.device(color = FALSE) #black and white display
x <- crabs[seq(5, 200, 5), ] #get every fifth obs.
parallel(~x[4:8] | sp*sex, x)
The resulting parallel coordinate plots are displayed in Figure 4.9(a). The
labels alongthe verticalaxisidentify eachaxiscorrespondingtothe five mea-
surements (frontal lobe size, rear width, carapace length, carapace width,
body depth). Much of the variability between groups is in overallsize.
Adjusting the measurementsof individualcrabs for size may produce more
interesting plots. Following the suggestion in Venables and Ripley [278] we
adjust the measurements by the area of the carapace.
trellis.device(color = FALSE) #black and white display
x <- crabs[seq(5, 200, 5), ] #get every fifth obs.
a <- x$CW * x$CL #area of carapace
x[4:8] <- x[4:8] / sqrt(a) #adjust for size
parallel(~x[4:8] | sp*sex, x)
In the resulting plot in Figure 4.9(b), differences in species and sex are much
more evident after adjustment than in Figure 4.9(a). (cid:5)
4.5.3 Segments, stars, and other representations
Multivariate data can be represented by a two dimensional icon or glyph,
such as a star. The Andrews curves in Example 4.9 are an example; the
curves are the two-dimensional symbols. Andrews curves were displayed su-
perimposed on the same coordinate system. Other representations as icons
arebestdisplayedinatable,sothatfeaturesofobservationscanbecompared.
A tabular display does not have much practical value for high dimension or
large data sets, but can be useful for some small data sets. Some examples
include star plots and segment plots. This type of plot is easily obtained in
R using the stars (graphics)function.

114 Statistical Computing with R
Min Max Min Max
M M M M
B O B O
BD BD
CW CW
CL CL
RW RW
FL FL
F F F F
B O B O
BD BD
CW CW
CL CL
RW RW
FL FL
Min Max Min Max
(a) (b)
FIGURE 4.9: ParallelcoordinateplotsinExample4.10forasubsetofthe
crabs (MASS)data. (a)Differencesbetweenspecies(B=blue,O=orange)and
sex (M, F) are largely obscured by large variation in overall size. (b) After
adjusting the measurements for size of individual crabs, differences between
groups are evident.
Example 4.11 (Segment plot)
This example uses the subset of crabs (MASS) data from Example 4.10. As
inExample4.10,individualmeasurementsareadjustedforoverallsizebyarea
of carapace.
#segment plot
library(MASS) #for crabs data
attach(crabs)
x <- crabs[seq(5, 200, 5), ] #get every fifth obs.
x <- subset(x, sex == "M") #keep just the males
a <- x$CW * x$CL #area of carapace
x[4:8] <- x[4:8] / sqrt(a) #adjust for size
#use default color palette or other colors
palette(gray(seq(.4, .95, len = 5))) #use gray scale
#palette(rainbow(6)) #or use color
stars(x[4:8], draw.segments = TRUE,
labels = x$sp, nrow = 4,
ylim = c(-2,10), key.loc = c(3,-1))
#after viewing, restore the default colors
palette("default"); detach(crabs)

Visualization of Multivariate Data 115
TheplotisshowninFigure4.10. Theobservationsarelabeledbyspecies. The
differences between the species (for males) in this sample are quite evident in
theplot. Theplotsuggests,forexample,thatorangecrabshavegreaterbody
depth relative to carapace width than blue crabs. (cid:5)
B B B B B
B B B B B
O O O O O
O O O O O
RW
FL
CL
BD
CW
FIGURE 4.10: Segmentplotofasubsetofthemalesinthecrabs (MASS)
data set in Example 4.11. The measurements have been adjusted by overall
size of the individual crab. The two species are blue (B) and orange (O).
4.6 Other Approaches to Data Visualization
Manyothermethodsfordatavisualizationareintheliteratureandwemen-
tionhereonlyafewmore. Asimov’sgrandtour[14]isaninteractivegraphical
toolthatprojectsdata ontoa plane,rotatingthroughallanglesto revealany
structure in the data. The grand tour is similar to projection pursuit ex-
ploratorydataanalysis(PPEDA)(FriedmanandTukey[100]). Inbothcases,
structure might be defined as departure from normality. Once the structure

116 Statistical Computing with R
is removed,the searchcan be repeated until no significant structure remains.
Principalcomponents analysis similarlyuses projections(see e.g.[188, Ch. 8]
and[278,Sec.11.1]). Whenthedataareprojectedontotheeigenvectorcorre-
spondingtothemaximaleigenvalueofthecovariancematrix,thisfirstprinci-
palcomponentisinthedirectionthatexplainsthemostvariationinthedata.
Dimensionisreducedbyprojectingontoasmallnumberoftheprincipalcom-
ponents that collectively explain most of the variation. Pattern recognition
and data mining are two broad areas of research that use some visualization
methods. SeeRipley[224]orDudaandHart[75]. Aninterestingcollectionof
topics on data mining and data visualization is found in Rao, Wegman, and
Solka [222]. For an excellent resource on visualization of categorical data see
Friendly [102] and http://www.math.yorku.ca/SCS/vcd/.
In addition to the R functions and packages mentioned in this chapter,
several methods are available in other packages. Again, here we only name
a few. Chernoff’s faces [46] are implemented in faces(aplpack) [298] and
in faces(TeachingDemos)[254]. Mosaic plots for visualizationof categorical
data are available in mosaicplot. Also see the package vcd [199] for visu-
alization of categorical data. The functions prcomp and princomp provide
principalcomponents analysis. Many packagesfor Rfall under the data min-
ing or machine learning umbrella; for a start see nnet [278], rpart [268], and
randomForest [176]. More packages are described on the Multivariate Task
ViewandMachineLearningTaskViewontheCRANweb. Alsoseethegraph
gallery at http://addictedtor.free.fr/graphiques/.
The rggobi [167] package provides a command-line interface to GGobi,
which is anopensourcevisualizationprogramfor exploringhigh-dimensional
data. GGobihasagraphicaluserinterface,providingdynamicandinteractive
graphics. TheGGobisoftwarecanbeobtainedfromhttp://www.ggobi.org/
downloads/. Readers are referred to documentation and examples at http:
//www.ggobi.org/rggobiand the book by Cook and Swayne [52] featuring
examples using R and GGobi.
Exercises
4.1 Generate 200 random observationsfrom the multivariate normal distribution
having mean vector µ=(0,1,2) and covariance matrix
? ?
1.0 ?0.5 0.5
?= ?? 0.5 1.0 ?0.5 ? .
0.5 ?0.5 1.0
Construct a scatterplot matrix and verify that the location and correlation
for each plot agrees with the parameters of the corresponding bivariate dis-
tributions.

Visualization of Multivariate Data 117
4.2 AddafittedsmoothcurvetoeachofthescatterplotsinFigure4.1ofExample
4.1. (?panel.smooth)
4.3 The random variables X and Y are independent and identically distributed
with normal mixture distributions. The components of the mixture have
N(0,1)andN(3,1)distributionswithmixingprobabilitiesp andp =1?p
1 2 1
respectively. Generate a bivariate random sample from the joint distribution
of (X,Y) and construct a contour plot. Adjust the levels of the contours so
that the the contours of the second mode are visible.
4.4 Construct a filled contour plot of the bivariate mixture in Exercise 4.3.
4.5 Construct a surface plot of the bivariate mixture in Exercise 4.3.
4.6 Repeat Exercise 4.3 for various different choices of the parameters of the
mixture model, and compare the distributions through contour plots.
4.7 Createaparallelcoordinatesplotofthecrabs (MASS)[278]datausingall200
observations. Comparetheplotsbeforeandafteradjustingthemeasurements
by the size of the crab. Interpret the resulting plots.
4.8 Create a plot of Andrews curves for the leafshape17 (DAAG) [185] data,
using the logarithms of measurements (logwid, logpet, loglen). Set line type
to identify leaf architecture as in Example 4.9. Compare with the plot in
Figure 4.8.
4.9 Refer to the full leafshape (DAAG) data set. Produce Andrews curves for
each of the six locations. Split the screen into six plotting areas, and display
all six plots on one screen. Set line type or color to identify leaf architecture.
Do the plots suggest differences in leaf shape by location?
4.10 Generalize the function in Example4.9 to return the Andrews curvefunction
for vectors in Rd, where the dimension d ? 2 is arbitrary. Test this function
by producing Andrews curves for the iris data (d = 4) and crabs (MASS)
data (d=5).
4.11 Refer to the full leafshape (DAAG) data set. Display a segment style stars
plot for leaf measurements at latitude 42 (Tasmania). Repeat using the loga-
rithms of the measurements.

Chapter 5
Monte Carlo Integration and
Variance Reduction
5.1 Introduction
MonteCarlointegrationisastatisticalmethodbasedonrandomsampling.
Monte Carlo methods were developed in the late 1940’s after World War II,
but the idea of random sampling was not new. As early as 1777, Comte de
Buffonusedarandomexperimenttoempiricallycheckhisprobabilitycalcula-
tionforthe famousBuffon’sneedleexperiment. Anotherwellknownexample
isthatW.S.Gossettusedrandomsamplingtostudythedistributionofwhat
are now called “Student t” statistics, publishing under the alias Student in
1908 [256]. The development of ENIAC, the first electronic computer, com-
pleted in 1946 at the University of Pennsylvania, and the seminal article by
MetropolisandUlamin1949[198]markedanimportantneweraintheappli-
cation of sampling methods. Teams of scientists at the Los Alamos National
Laboratoryandmanyotherresearcherscontributedtotheearlydevelopment,
including Ulam, Richtmyer, and von Neumann [276, 283]. For an interesting
discussionofthehistoryoftheMonteCarlomethodandscientificcomputing,
see Eckhart [78] and Metropolis [195, 196].
5.2 Monte Carlo Integration
(cid:22)
b
Let g(x) be a function and suppose that we want to compute g(x)dx
a
(assuming that this integral exists). Recall that if X is a random variable
with density f(x), thenthe mathematicalexpectationofthe randomvariable
Y =g(X) is
(cid:6)
?
E[g(X)]= g(x)f(x)dx.
??
If a random sample is available from the distribution of X, an unbiased esti-
mator of E[g(X)] is the sample mean.
119

120 Statistical Computing with R
5.2.1 Simple Monte Carlo estimator
(cid:22)
1
Consider the problem of estimating ? =
0
g(x)dx. If X
1
,...,Xm is a
random Uniform(0,1) sample then
(cid:5)m
1
?ˆ=gm(X)= g(Xi)
m
i=1
converges to E[g(X)] = ? with probability 1, by the Strong Law of Large
(cid:22)
1
Numbers. The simple Monte Carlo estimator of g(x)dx is gm(X).
0
Example 5.1 (Simple Monte Carlo integration)
Compute a Monte Carlo estimate of
(cid:6)
1
?x
? = e dx
0
and compare the estimate with the exact value.
m <- 10000
x <- runif(m)
theta.hat <- mean(exp(-x))
print(theta.hat)
print(1 - exp(-1))
[1] 0.6355289
[1] 0.6321206
The estimate is ?ˆ= . 0.6355 and ? =1?e?1 = . 0.6321. (cid:5)
(cid:22)
b
To compute g(t)dt, make a change of variables so that the limits of
a
integration are from 0 to 1. The linear transformation is y = (t?a)/(b?a)
and dy =(1/(b?a))dt. Substituting,
(cid:6) (cid:6)
b 1
g(t)dt= g(y(b?a)+a)(b?a)dy.
a 0
Alternately,wecanreplacetheUniform(0,1)densitywithanyotherdensity
supported on the interval between the limits of integration. For example,
(cid:6) (cid:6)
b b
1
g(t)dt=(b?a) g(t) dt
b?a
a a
is b?a times the expected value of g(Y), where Y has the uniform density
on (a,b). The integralis therefore (b?a) times the averagevalue of g(·) over
(a,b).

|         | Monte Carlo   | Integration |       | and | Variance     |        | Reduction |     | 121 |
| ------- | ------------- | ----------- | ----- | --- | ------------ | ------ | --------- | --- | --- |
| Example | 5.2 (Simple   | Monte       | Carlo |     | integration, | cont.) |           |     |     |
| Compute | a Monte Carlo | estimate    |       | of  |              |        |           |     |     |
(cid:6)
4
?x
|     |     |     | ?   | =   | e dx |     |     |     |     |
| --- | --- | --- | --- | --- | ---- | --- | --- | --- | --- |
2
| and compare | the estimate |               | with   | the exact | value | of the | integral. |     |     |
| ----------- | ------------ | ------------- | ------ | --------- | ----- | ------ | --------- | --- | --- |
| m <-        | 10000        |               |        |           |       |        |           |     |     |
| x <-        | runif(m,     | min=2,        | max=4) |           |       |        |           |     |     |
| theta.hat   | <-           | mean(exp(-x)) |        | *         | 2     |        |           |     |     |
print(theta.hat)
| print(exp(-2) |           | - exp(-4)) |     |          |     |           |     |     |         |
| ------------- | --------- | ---------- | --- | -------- | --- | --------- | --- | --- | ------- |
| [1]           | 0.1172158 |            |     |          |     |           |     |     |         |
| [1]           | 0.1170196 |            |     |          |     |           |     |     |         |
|               | ?ˆ= .     |            |     | =e?2?e?4 |     | .         |     |     |         |
| The estimate  | is        | 0.1172     | and | ?        |     | = 0.1170. |     |     | (cid:5) |
(cid:22)
b
| Tosummarize,thesimpleMonteCarloestimatoroftheintegral? |     |     |     |     |     |     |     | = g(x)dx |     |
| ------------------------------------------------------ | --- | --- | --- | --- | --- | --- | --- | -------- | --- |
a
| is computed | as follows.  |     |     |                    |     |     |     |     |     |
| ----------- | ------------ | --- | --- | ------------------ | --- | --- | --- | --- | --- |
| 1. Generate | X 1 ,...,Xm, |     | iid | from Uniform(a,b). |     |     |     |     |     |
1g(Xi).
| 2. Compute | g(X)= | m   |     |     |     |     |     |     |     |
| ---------- | ----- | --- | --- | --- | --- | --- | --- | --- | --- |
?ˆ=(b?a)g(X).
3.
| Example | 5.3 (Monte  | Carlo    | integration, |             | unbounded |          | interval) |     |     |
| ------- | ----------- | -------- | ------------ | ----------- | --------- | -------- | --------- | --- | --- |
| Use the | Monte Carlo | approach |              | to estimate | the       | standard | normal    | cdf |     |
(cid:6)
x
1
|     |     |       |     |     | ? ?t2/2 |     |     |     |     |
| --- | --- | ----- | --- | --- | ------- | --- | --- | --- | --- |
|     |     | ?(x)= |     |     | e       | dt. |     |     |     |
2?
??
| First,       | notice that                            | we cannot |     | apply  | the algorithm |      | above directly     | because  |        |
| ------------ | -------------------------------------- | --------- | --- | ------ | ------------- | ---- | ------------------ | -------- | ------ |
| the limits   | ofintegrationcoveranunboundedinterval. |           |     |        |               |      | However,wecanbreak |          |        |
| this problem | into two                               | cases:    | x   | ? 0    | and x         | < 0, | and use the        | symmetry | of     |
| the normal   | (cid:22)density                        | to handle | the | second | case.         | Then | the problem        | is       | to es- |
x e?t2/2dt
| timate | ? = | for | x > | 0. This | can | be done | by generating | random |     |
| ------ | --- | --- | --- | ------- | --- | ------- | ------------- | ------ | --- |
0
| Uniform(0,x)                                              | numbers,       | but  | it     | would   | mean | changing           | the parameters        |     | of the |
| --------------------------------------------------------- | -------------- | ---- | ------ | ------- | ---- | ------------------ | --------------------- | --- | ------ |
| uniformdistributionforeachdifferentvalueofthecdfrequired. |                |      |        |         |      |                    | Supposethat           |     |        |
| we prefer                                                 | an algorithm   | that | always | samples |      | from Uniform(0,1). |                       |     |        |
| Thiscanbeaccomplishedbyachangeofvariables.                |                |      |        |         |      |                    | Makingthesubstitution |     |        |
| y =t/x,                                                   | we have dt=xdy |      | and    |         |      |                    |                       |     |        |
(cid:6)
1
?(xy)2/2dy.
|     |     |     | ? = | xe  |     |     |     |     |     |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
0

122 Statistical Computing with R
Thus,?
=EY[xe?(xY)2/2],wheretherandomvariableY
hastheUniform(0,1)
distribution. Generate iid Uniform(0,1) random numbers u
1
,...,um, and
compute
(cid:5)m
?ˆ=gm(u)= 1 xe ?(uix)2/2.
m
i=1
The sample mean ??ˆconverges to E[?ˆ]=? as m??. If x>0, the estimate
of ?(x) is 0.5+?ˆ/ 2?. If x<0 compute ?(x)=1??(?x).
x <- seq(.1, 2.5, length = 10)
m <- 10000
u <- runif(m)
cdf <- numeric(length(x))
for (i in 1:length(x)) {
g <- x[i] * exp(-(u * x[i])^2 / 2)
cdf[i] <- mean(g) / sqrt(2 * pi) + 0.5
}
Now the estimates ?ˆfor ten values of x are stored in the vector cdf. Com-
pare the estimates with the value ?(x) computed (numerically)by the pnorm
function.
Phi <- pnorm(x)
print(round(rbind(x, cdf, Phi), 3))
Results for several values x > 0 are shown compared with the value of the
normal cdf function pnorm. The Monte Carlo estimates appear to be very
close to the pnormvalues. (The estimates will be worse in the extreme upper
tail of the distribution.)
[,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
x 0.10 0.367 0.633 0.900 1.167 1.433 1.700 1.967 2.233 2.500
cdf 0.54 0.643 0.737 0.816 0.879 0.925 0.957 0.978 0.990 0.997
Phi 0.54 0.643 0.737 0.816 0.878 0.924 0.955 0.975 0.987 0.994
Notice that it would have been simpler to generate random Uniform(0,x)
random variables and skip the transformation. This is left as an exercise. In
fact,theintegrandofthepreviousexampleisitselfadensityfunction,andwe
can generate randomvariablesfrom this density. This providesa more direct
approach to estimating the integral. (cid:5)
Example 5.4 (Example 5.3, cont.)
Let I(·) be the indicator function, and Z ?N(0,1). Then for any constant x
we have E[I(Z ?x)]=P(Z ?x)=?(x), the standardnormal cdf evaluated
at x.

Monte Carlo Integration and Variance Reduction 123
Generate a random sample z
1
,...,zm from the standard normal distribu-
tion. Then the sample mean
(cid:5)m
? (cid:1) (x)= 1 I(zi ?x)
m
i=1
convergeswithprobabilityonetoitsexpectedvalueE[I(Z ?x)]=P(Z ?x)
=?(x).
x <- seq(.1, 2.5, length = 10)
m <- 10000
z <- rnorm(m)
dim(x) <- length(x)
p <- apply(x, MARGIN = 1,
FUN = function(x, z) {mean(z < x)}, z = z)
Now the estimates in p for the sequence of x values can be compared to the
result of the R normal cdf function pnorm.
Phi <- pnorm(x)
print(round(rbind(x, p, Phi), 3))
[,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
x 0.10 0.367 0.633 0.900 1.167 1.433 1.700 1.967 2.233 2.500
p 0.546 0.652 0.741 0.818 0.876 0.925 0.954 0.976 0.988 0.993
Phi 0.54 0.643 0.737 0.816 0.878 0.924 0.955 0.975 0.987 0.994
In this example, compared with the results in Example 5.3, it appears that
we have better agreement with pnorm in the upper tail, but worse agreement
near the center. (cid:5)
Summarizing, if f(x) is a probability(cid:22) density function supported on a set
A, (that is, f(x)?0 for all x?R and f(x)=1), to estimate the integral
A
(cid:6)
? = g(x)f(x)dx,
A
generatearandomsamplex
1
,...,xmfromthedistributionf(x),andcompute
the sample mean
(cid:5)m
1
?ˆ= g(xi).
m
i=1
Then with probability one, ?ˆconverges to E[?ˆ]=? as m??.

124 Statistical Computing with R
(cid:10)
The standard error of ?ˆ=
m
1 m
i=1
g(xi).
Thevarianceof?ˆis?2/m,where?2 =Varf(g(X)). Whenthedistribution
of X is unknown we substitute for FX the empirical distribution Fm of the
sample x
1
,...,xm. The variance of ?ˆcan be estimated by
(cid:5)m
?ˆ2 1
= [g(xi)?g(x)]2. (5.1)
m m2
i=1
Note that
(cid:5)m
1
[g(xi)?g(x)]2 (5.2)
m
i=1
istheplug-inestimateofVar(g(X)). Thatis,(5.2)isthevarianceofU,where
U isuniformlydistributedonthesetofreplicates{g(xi)}. Thecorresponding
estimate of standard error of ?ˆis
(cid:13) (cid:14)
(cid:5)m 1/2
?ˆ 1
s(cid:1)e(?ˆ)= ? = [g(xi)?g(x)]2 . (5.3)
m m
i=1
The Central Limit Theorem implies that
?ˆ?E[?ˆ]
(cid:2)
Var?ˆ
converges in distribution to N(0,1) as m ? ?. Hence, if m is sufficiently
large, ?ˆ is approximately normal with mean ?. The large-sample, approxi-
mately normal distribution of ?ˆ can be applied to put confidence limits or
error bounds on the Monte Carlo estimate of the integral, and check for con-
vergence.
Example 5.5 (Error bounds for MC integration)
Estimatethevarianceofthe estimatorinExample5.4,andconstructapprox-
imate 95% confidence intervals for the estimate of ?(2) and ?(2.5).
x <- 2
m <- 10000
z <- rnorm(m)
g <- (z < x) #the indicator function
v <- mean((g - mean(g))^2) / m
cdf <- mean(g)
c(cdf, v)
c(cdf - 1.96 * sqrt(v), cdf + 1.96 * sqrt(v))
[1] 9.772000e-01 2.228016e-06
[1] 0.9742744 0.9801256

Monte Carlo Integration and Variance Reduction 125
The probability P(I(Z < x) = 1) is ?(2) (cid:2) 0.977. Here g(X) has the
distributionofthesampleproportionof1’sinm=10000Bernoullitrialswith
.
p = 0.977, and the variance of g(X) is therefore (0.977)(1?0.977)/10000=
2.223e-06. The MC estimate 2.228e-06of varianceis quite close to this value.
For x=2.5 the output is
[1] 9.94700e-01 5.27191e-07
[1] 0.9932769 0.9961231
The probability P(I(Z < x) = 1) is ?(2.5) (cid:2) 0.995. The Monte Carlo
estimate 5.272e-07of variance is approximatelyequalto the theoreticalvalue
(0.995)(1?0.995)/10000= 4.975e-07. (cid:5)
5.2.2 Variance and Efficiency
We have seen that a Monte Carlo approach to estimating the integral
(cid:22)
b
g(x)dx is to represent the integral as the expected value of a function of
a
a uniform random variable. That is, if X ? Uniform(a,b), then f(x) = 1 ,
b?a
a<x<b, and
(cid:6)
b
? = g(x)dx
a
(cid:6)
b
1
=(b?a) g(x) dx=(b?a)E[g(X)].
b?a
a
Recall that the sample-mean Monte Carlo estimator of the integral ? is
computed as follows.
1. Generate X
1
,...,Xm, iid from Uniform(a,b).
2. Compute g(X)=
m
1g(Xi).
3. ?ˆ=(b?a)g(X).
The sample mean g(X) has expected value g(X)=?/(b?a), and
Var(g(X))=(1/m)Var(g(X)).
Therefore E[?ˆ]=? and
(b?a)2
Var(?ˆ)=(b?a)2Var(g(X))= Var(g(X)). (5.4)
m
By the Central Limit Theorem, for large m, g(X) is approximately normally
distributed, andtherefore?ˆis approximatelynormallydistributed withmean
? and variance given by (5.4).
The “hit-or-miss” approach to Monte Carlo integration also uses a sample
mean to estimate the integral, but the sample mean is taken over a different
sampleandthereforethisestimatorhasadifferentvariancethanformula(5.4).
Suppose f(x) is the density (cid:22)of a random variable X. The “hit-or-miss”
x
approach to estimating F(x)= f(t)dt is as follows.
??

126 Statistical Computing with R
1. Generate a random sample X
1
,...,Xm from the distribution of X.
2. For each observation Xi, compute
(cid:15)
g(Xi)=I(Xi ?x)=
1, Xi ?x;
0, Xi >x.
(cid:10)
3. Compute F (cid:1) (x)=g(X)=
m
1 m
i=1
I(Xi ?x).
Note that the randomvariable Y =g(X)has the Binomial(1,p)distribution,
where the success probability is p = P(X ? x) = F(x). The transformed
sampleY
1
,...,Ym aretheoutcomesofmindependent, identicallydistributed
(cid:1)
Bernoullitrials. TheestimatorF(x)isthesampleproportionpˆ=y/m,where
(cid:1)
y is the total number of successes observedin m trials. Hence E[F(x)]=p=
F(x) and Var(F (cid:1) (x))=p(1?p)/m=F(x)(1?F(x))/m.
ThevarianceofF (cid:1) (x)canbeestimatedbypˆ(1?pˆ)/m=F (cid:1) (x)(1?F (cid:1) (x))/m.
The maximum variance occurs when F(x) = 1/2, so a conservative estimate
(cid:1)
of the variance of F(x) is 1/(4m).
Efficiency
If?ˆ and?ˆ aretwoestimatorsfor?,then?ˆ ismoreefficient(inastatistical
1 2 1
sense) than ?ˆ if
2
Var(?ˆ )
1 <1.
Var(?ˆ )
2
Ifthe variancesofestimators?ˆ i areunknown,wecanestimateefficiencyby
substituting a sample estimate of the variance for each estimator.
Notethatvariancecanalwaybe reducedbyincreasingthenumberofrepli-
cates, so computational efficiency is also relevant.
5.3 Variance Reduction
We have seen that Monte Carlo integration can be applied to estimate
functions of the type E[g(X)]. In this section we consider severalapproaches
to reducing the variance in the sample mean estimator of ? =E[g(X)].
If ?ˆ and ?ˆ are estimators of the parameter ?, and Var(?ˆ ) < Var(?ˆ ),
1 2 2 1
then the percent reduction in variance achieved by using ?ˆ instead of ?ˆ is
2 1
!
Var(?ˆ )?Var(?ˆ )
1 2
100 .
Var(?ˆ )
1

Monte Carlo Integration and Variance Reduction 127
The Monte Carlo approach to estimating ? = E[g(X)] is to compute the
sample mean g(X) for a large number m of replicates from the distribution
of g(X). The function g(·) is often a statistic; that is, an n-variate function
g(X
1
,...,Xn) of a sample. When g(X) is used in that context, we have
g(X)=g(X
1
,...,Xn), where X denotes the sample elements. Unless it is not
clear in context, however,for simplicity we use g(X).
Let
X(j) ={X(j),...,X(j)},
j =1,...,m
1 n
be iid from the distribution of X, and compute the corresponding replicates
Yj =g(X
1
(j),...,X
n
(j)),
j =1,...,m. (5.5)
ThenY
1
,...,Ym areindependentandidenticallydistributedwithdistribution
of Y =g(X), and
? ?
(cid:5)m
? 1 ?
E[Y]=E Yj =?.
m
j=1
Thus, the Monte Carlo estimator ?ˆ = Y is unbiased for ? = E[Y]. The
variance of the Monte Carlo estimator is
Var(?ˆ)=VarY =
Varfg(X)
.
m
Increasing the number of replicates m clearly reduces the variance of the
Monte Carlo estimator. However,a large increase in m is needed to get even
asmallimprovementinstandarderror. Toreducethestandarderrorfrom0.01
to0.0001,wewouldneedapproximately10000timesthenumberofreplicates.
In general, if standarderror should be at most e and Varf(g(X))=?2, then
m?(cid:3)?2/e2(cid:4) replicates are required.
Thus, although variance can always be reduced by increasing the number
of Monte Carloreplicates, the computationalcostis high. Other methods for
reducing the variance can be applied that are less computationally expensive
than simply increasing the number of replicates.
In the following sections some approaches to reducing the variance of this
type of estimator are introduced. Several approaches have been covered in
the literature. Readers are referred to [69, 112, 113, 121, 228, 233, 238] for
reference and more examples.

128 Statistical Computing with R
5.4 Antithetic Variables
Consider the mean of two identically distributed random variables U and
1
U . If U and U are independent, then
2 1 2
(cid:7) (cid:8)
U +U 1
Var 1 2 = (Var(U )+Var(U )),
1 2
2 4
but in general we have
(cid:7) (cid:8)
U +U 1
Var 1 2 = (Var(U )+Var(U )+2Cov(U ,U )),
1 2 1 2
2 4
so the variance of (U +U )/2 is smaller if U and U are negatively corre-
1 2 1 2
lated than whenthe variables areindependent. This fact leads us to consider
negatively correlated variables as a possible method for reducing variance.
For example, suppose that X
1
,...,Xn are simulated via the inverse trans-
form method. For each of the m replicates we have generated Uj ? Uni-
form(0,1), and computed X(j) = F
X
?1(Uj), j = 1,...,n. Note that if U is
uniformlydistributedon(0,1)then1?U hasthesamedistributionasU,but
U and 1?U are negatively correlated. Then in (5.5)
Yj =g(F
X
?1(U
1
(j)),...,F
X
?1(U
n
(j)))
has the same distribution as
Y
(cid:5)
=g(F
?1(1?U(j)),...,F ?1(1?U(j)).
j X 1 X n
Under what conditions are Yj and Y
j
(cid:5) negatively correlated? Below it is
shown that if the function g is monotone, the variables Yj and Y
j
(cid:5) are nega-
tively correlated.
Define (x
1
,...,xn) ? (y
1
,...,yn) if xj ? yj, j = 1,...,n. An n-variate
function g = g(X
1
,...,Xn) is increasing if it is increasing in its coordi-
nates. That is, g is increasing if g(x
1
,...,xn) ? g(y
1
,...,yn) whenever
(x
1
,...,xn) ? (y
1
,...,yn). Similarly g is decreasing if it is decreasing in
its coordinates. Then g is monotone if it is increasing or decreasing.
PROPOSITION 5.1 If X
1
,...,Xn are independent, and f and g are in-
creasing functions, then
E[f(X)g(X)]?E[f(X)]E[g(X)]. (5.6)
Proof. Assume that f and g are increasing functions. The proof is by
induction on n. Suppose n = 1. Then (f(x)?f(y))(g(x)?g(y)) ? 0 for
all x,y ?R. Hence E[(f(X)?f(Y))(g(X)?g(Y))]?0, and
E[f(X)g(X)]+E[f(Y)g(Y)]?E[f(X)g(Y)]+E[f(Y)g(X)].

Monte Carlo Integration and Variance Reduction 129
Here X and Y are iid, so
2E[f(X)g(X)]=E[f(X)g(X)]+E[f(Y)g(Y)]
?E[f(X)g(Y)]+E[f(Y)g(X)]=2E[f(X)]E[g(X)],
so the statement is true for n = 1. Suppose that the statement (5.6) is true
forX ?Rn?1. ConditiononXn andapplytheinductionhypothesistoobtain
E[f(X)g(X)|Xn =xn]?E[f(X
1
,...,Xn?1 ,xn)]E[g(X
1
,...,Xn?1 ,xn)]
=E[f((X)|Xn =xn]E[g((X)|Xn =xn)],
or
E[f(X)g(X)|Xn]?E[f(X)|Xn]E[g(X)|Xn)].
Now E[f(X)|Xn] and E[g(X)|Xn)] are each increasing functions of Xn, so
applying the result for n=1 and taking the expected values of both sides
E[f(X)g(X)]?E[E[f(X)|Xn]E[g(X)|Xn)]]?E[f(X)]E[g(X)].
(cid:1)
COROLLARY 5.1 If g =g(X
1
,...,Xn) is monotone, then
Y =g(F
X
?1(U
1
),...,F
X
?1(Un))
and
Y
(cid:5)
=g(F
X
?1(1?U
1
),...,F
X
?1(1?Un)).
are negatively correlated.
Proof. Without loss of generality we can suppose that g is increasing. Then
Y =g(F
X
?1(U
1
),...,F
X
?1(Un))
and
?Y (cid:5) =f =?g(F
X
?1(1?U
1
),...,F
X
?1(1?Un))
areboth increasingfunctions. ThereforeE[g(U)f(U)]?E[g(U)]E[f(U)]and
E[YY(cid:5)]?E[Y]E[Y(cid:5)], which implies that
Cov(Y,Y (cid:5) )=E[YY (cid:5) ]?E[Y]E[Y (cid:5) ]?0,
so Y and Y(cid:5) are negatively correlated. (cid:1)
The antithetic variable approach is easy to apply. If m Monte Carlo repli-
cates are required, generate m/2 replicates
Yj =g(F
X
?1(U
1
(j)),...,F
X
?1(U
n
(j)))
(5.7)

130 Statistical Computing with R
and the remaining m/2 replicates
Y
(cid:5)
=g(F
?1(1?U(j)),...,F ?1(1?U(j))),
(5.8)
j X 1 X n
where
U(j)
are iid Uniform(0,1) variables, i=1,...,n, j =1,...,m/2. Then
i
the antithetic estimator is
1
?ˆ=
m
{Y
1
+Y
1
(cid:5) +Y
2
+Y
2
(cid:5) +···+Ym/2 +Y
m
(cid:5)
/2
}
(cid:7) (cid:8)
2 m(cid:5)/2 Yj +Y j (cid:5)
= .
m 2
j=1
Thus nm/2 rather than nm uniform variates are required, and the variance
of the Monte Carlo estimator is reduced by using antithetic variables.
Example 5.6 (Antithetic variables)
RefertoExample5.3,illustratingMonteCarlointegrationappliedtoestimate
the standard normal cdf
(cid:6)
x
?(x)= ? 1 e ?t2/2 dt.
?? 2?
Repeat the estimation using antithetic variables, and find the approximate
reduction in standard error. In this example (after change of variables) the
targetparameteris ?
=EU[xe?(xU)2/2],where
U has the Uniform(0,1)distri-
bution.
By restricting the simulation to the upper tail (see Example 5.3) the func-
tiong(·)ismonotone,sothe hypothesisofCorollary5.1issatisfied. Generate
randomnumbersu
1
,...,um/2 ?Uniform(0,1)andcompute halfofthe repli-
cates using
Yj
=g(j)(u)=xe ?(ujx)2/2,
j =1,...,m/2
as before, but compute the remaining half of the replicates using
Y
(cid:5)
=xe
?((1?uj)x)2/2,
j =1,...,m/2.
j
The sample mean
m(cid:5)/2" #
?ˆ=gm(u)= 1 xe ?(ujx)2/2+xe ?((1?uj)x)2/2
m
j=1
!
1
m(cid:5)/2 xe?(ujx)2/2+xe?((1?uj)x)2/2
=
m/2 2
j=1

Monte Carlo Integration and Variance Reduction 131
?
convergestoE[?ˆ]=?asm??. Ifx>0,theestimateof?(x)is0.5+?ˆ/ 2?.
If x < 0 compute ?(x) = 1??(?x). The Monte Carlo estimation of the
integral?(x)isimplementedinthefunctionMC.Phibelow. OptionallyMC.Phi
will compute the estimate with or without antithetic sampling. The MC.Phi
function could be made more general if an argument naming a function, the
integrand, is added (see integrate for an example of this type of argument
to a function).
MC.Phi <- function(x, R = 10000, antithetic = TRUE) {
u <- runif(R/2)
if (!antithetic) v <- runif(R/2) else
v <- 1 - u
u <- c(u, v)
cdf <- numeric(length(x))
for (i in 1:length(x)) {
g <- x[i] * exp(-(u * x[i])^2 / 2)
cdf[i] <- mean(g) / sqrt(2 * pi) + 0.5
}
cdf
}
A comparisonof estimates obtained from a single Monte Carlo experiment is
below.
x <- seq(.1, 2.5, length=5)
Phi <- pnorm(x)
set.seed(123)
MC1 <- MC.Phi(x, anti = FALSE)
set.seed(123)
MC2 <- MC.Phi(x)
print(round(rbind(x, MC1, MC2, Phi), 5))
[,1] [,2] [,3] [,4] [,5]
x 0.10000 0.70000 1.30000 1.90000 2.50000
MC1 0.53983 0.75825 0.90418 0.97311 0.99594
MC2 0.53983 0.75805 0.90325 0.97132 0.99370
Phi 0.53983 0.75804 0.90320 0.97128 0.99379
The approximate reduction in variance can be estimated for given x by a
simulationunderbothmethods,thesimpleMonteCarlointegrationapproach
and the antithetic variable approach.

| 132 |         |         | Statistical |     | Computing | with R |        |     |     |
| --- | ------- | ------- | ----------- | --- | --------- | ------ | ------ | --- | --- |
| m   | <- 1000 |         |             |     |           |        |        |     |     |
| MC1 | <-      | MC2 <-  | numeric(m)  |     |           |        |        |     |     |
| x   | <- 1.95 |         |             |     |           |        |        |     |     |
| for | (i      | in 1:m) | {           |     |           |        |        |     |     |
|     | MC1[i]  | <-      | MC.Phi(x,   | R   | = 1000,   | anti = | FALSE) |     |     |
|     | MC2[i]  | <-      | MC.Phi(x,   | R   | = 1000)   |        |        |     |     |
}
> print(sd(MC1))
| [1] | 0.007008661 |     |     |     |     |     |     |     |     |
| --- | ----------- | --- | --- | --- | --- | --- | --- | --- | --- |
> print(sd(MC2))
| [1]            | 0.000470819     |            |            |                     |               |               |       |               |         |
| -------------- | --------------- | ---------- | ---------- | ------------------- | ------------- | ------------- | ----- | ------------- | ------- |
| >              | print((var(MC1) |            | -          | var(MC2))/var(MC1)) |               |               |       |               |         |
| [1]            | 0.9954873       |            |            |                     |               |               |       |               |         |
| The antithetic |                 | variable   | approach   | achieved            | approximately |               | 99.5% | reduction     | in      |
| variance       | at              | x=1.95.    |            |                     |               |               |       |               | (cid:5) |
| 5.5            | Control         | Variates   |            |                     |               |               |       |               |         |
| Another        | approach        |            | to reduce  | the                 | variance      | in a Monte    | Carlo | estimator     | of      |
| ? = E[g(X)]    |                 | is the use | of control | variates.           |               | Suppose that  | there | is a function |         |
| f, such        | that            | µ=E[f(X)]  | is         | known,              | and f(X)      | is correlated | with  | g(X).         |         |
?ˆ g(X)+c(f(Y)?µ)
| Then  | for      | any constant | c, it | is easy | to check | that c | =   |     |     |
| ----- | -------- | ------------ | ----- | ------- | -------- | ------ | --- | --- | --- |
| is an | unbiased | estimator    | of ?. |         |          |        |     |     |     |
The variance
|     | Var(?ˆ | c)=Var(g(X))+c2Var(f(X))+2cCov(g(X),f(X)) |     |     |     |     |     |     |     |
| --- | ------ | ----------------------------------------- | --- | --- | --- | --- | --- | --- | --- |
(5.9)
c=c?,
| is a quadratic |     | function | of c. | It is minimized |     | at  | where |     |     |
| -------------- | --- | -------- | ----- | --------------- | --- | --- | ----- | --- | --- |
Cov(g(X),f(X))
c ? =?
Var(f(X))
| and minimum |     | variance | is  |     |     |     |     |     |     |
| ----------- | --- | -------- | --- | --- | --- | --- | --- | --- | --- |
[Cov(g(X),f(X))]2
|     |     | Var(?ˆ | c?)=Var(g(X))? |     |     |     |     | .   | (5.10) |
| --- | --- | ------ | -------------- | --- | --- | --- | --- | --- | ------ |
Var(f(X))
| Therandomvariablef(X)iscalledacontrolvariate |     |          |           |            |     |     | fortheestimatorg(X). |     |     |
| -------------------------------------------- | --- | -------- | --------- | ---------- | --- | --- | -------------------- | --- | --- |
| In (5.10)                                    | we  | see that | Var(g(X)) | is reduced |     | by  |                      |     |     |
[Cov(g(X),f(X))]2
,
Var(f(X))

Monte Carlo Integration and Variance Reduction 133
hence the percent reduction in variance is
[Cov(g(X),f(X))]2
100 =100[Cor(g(X),f(X))]2.
Var(g(X))Var(f(X))
Thus, it is advantageousif f(X)andg(X)arestronglycorrelated. No reduc-
tion of variance is possible in case f(X) and g(Y) are uncorrelated.
To compute the constant c?, we need Cov(g(X),f(X)) and Var(f(X)),
buttheseparameterscanbeestimatedifnecessary,fromapreliminaryMonte
Carlo experiment.
Example 5.7 (Control variate)
Apply the control variate approach to compute
(cid:6)
1
U u
? =E[e ]= e du,
0
whereU ?Uniform(0,1). Inthisexample,wedonotneedsimulationbecause
? = e?1 = 1.718282 by integration, but this provides an example where we
can verify that the control variate approach is correctly implemented. If the
simpleMonteCarloapproachisappliedwithmreplicates,thevarianceofthe
estimator is Var(g(U))/m, where
Var(g(U))=Var(e U )=E[e2U ]??2 =
e2?1
?(e?1)2 = . 0.2420351.
2
A natural choice for a control variate is U ? Uniform(0,1). Then E[U] =
1/2, Var(U)=1/12, and Cov(eU,U)=1?(1/2)(e?1)= . 0.1408591. Hence
c ? =
?Cov(eU,U)
=?12+6(e?1)= . ?1.690309.
Var(U)
Our controlled estimator is ?ˆ c? = eU ?1.690309(U ?0.5). For m replicates,
mVar(?ˆ c?) is
(cid:7) (cid:8)
[Cov(eU,U)]2 e2?1 e?1
Var(e U )? = ?(e?1)2?12 1?
Var(U) 2 2
.
=0.2420356?12(0.1408591)2
=0.003940175.
Thepercentreductioninvarianceusingthecontrolvariatecomparedwiththe
simple Monte Carlo estimate is 100(1-0.003940175/0.2429355)= 98.3781%.
Now we implement the control variate method for this problem and com-
pute empiricallythe percentreductioninvarianceachievedinthe simulation.
ComparingthesimpleMonteCarloestimatewiththecontrolvariateapproach

134 Statistical Computing with R
m <- 10000
a <- - 12 + 6 * (exp(1) - 1)
U <- runif(m)
T1 <- exp(U) #simple MC
T2 <- exp(U) + a * (U - 1/2) #controlled
gives the following results
> mean(T1)
[1] 1.717834
> mean(T2)
[1] 1.718229
> (var(T1) - var(T2)) / var(T1)
[1] 0.9838606
illustrating that the percent reduction 98.3781%in variance derived above is
approximately achieved in this simulation. (cid:5)
Example 5.8 (MC integration using control variates)
Use the method of control variates to estimate
(cid:6)
1 e?x
dx.
1+x2
0
(A versionof this problemappearsin [64, p. 734].) The parameterofinterest
is ? = E[g(X)] and g(X) = e?x/(1+x2), where X is uniformly distributed
on (0,1). We seek a function ‘close’ to g(x) with known expected value,
such that g(X) and f(X) are strongly correlated. For example, the function
f(x) = e?.5(1 + x2)?1 is ‘close’ to g(x) on (0,1) and we can compute its
expectation. If U is uniformly distributed on (0,1), then
(cid:6)
1 1 ?
E[f(U)]=e
?.5
du=e
?.5arctan(1)=e ?.5
.
1+u2 4
0
Setting up a preliminary simulation to obtain an estimate of the constant c?,
we also obtain an estimate of Cor(g(U),f(U)(cid:2)0.974.
f <- function(u)
exp(-.5)/(1+u^2)
g <- function(u)
exp(-u)/(1+u^2)
set.seed(510) #needed later
u <- runif(10000)
B <- f(u)
A <- g(u)

Monte Carlo Integration and Variance Reduction 135
Estimates of c? and Cor(f(U),g(U)) are
> cor(A, B)
[1] 0.9740585
a <- -cov(A,B) / var(B) #est of c*
> a
[1] -2.436228
Simulation results with and without the control variate follow.
m <- 100000
u <- runif(m)
T1 <- g(u)
T2 <- T1 + a * (f(u) - exp(-.5)*pi/4)
> c(mean(T1), mean(T2))
[1] 0.5253543 0.5250021
> c(var(T1), var(T2))
[1] 0.060231423 0.003124814
> (var(T1) - var(T2)) / var(T1)
[1] 0.9481199
Here the approximate reduction in variance of g(X) compared with g(X)+
cˆ?(f(X)?µ)is95%. Wewillreturntothisproblemtoapplyanotherapproach
to variance reduction, the method of importance sampling. (cid:5)
5.5.1 Antithetic variate as control variate.
Theantithetic variateestimatorofthe previoussectionisactuallyaspecial
case of the control variate estimator. First notice that the control variate
estimatorisalinearcombinationofunbiasedestimatorsof?. Ingeneral,if?ˆ
1
and ?ˆ are any two unbiased estimators of ?, then for every constant c,
2
?ˆ
c
=c?ˆ
1
+(1?c)?ˆ
2
is also unbiased for ?. The variance of c?ˆ +(1?c)?ˆ is
1 2
Var(?ˆ )+c2Var(?ˆ ??ˆ )+2cCov(?ˆ ,?ˆ ??ˆ ). (5.11)
2 1 2 2 1 2
In the special case of antithetic variates in (5.7) and (5.8), ?ˆ and ?ˆ are
1 2
identically distributed and Cor(?ˆ ,?ˆ )= ?1. Then Cov(?ˆ ,?ˆ )= ?Var(?ˆ ),
1 2 1 2 1
and the variance in (5.11) is
Var?ˆ c =4c2Var(?ˆ 1 )?4cVar(?ˆ 1 )+Var(?ˆ 1 )=(4c2?4c+1)Var(?ˆ 1 ),
and the optimal constant is c? = 1/2. The control variate estimator in this
case is
?ˆ +?ˆ
?ˆ c? = 1 2,
2

136 Statistical Computing with R
which (for this particular choice of ?ˆ and ?ˆ ) is the antithetic variable esti-
1 2
mator of ?.
5.5.2 Several control variates.
The idea of combining unbiased estimators of the target parameter ? to
reduce variance can be extended to several control va(cid:10)riables. In general, if
E[?ˆ i]=?, i=1,2,...k and c=(c
1
,...,ck) such that k
i=1
ci =1, then
(cid:5)k
ci?ˆ
i
i=1
is also unbiased for ?. The corresponding control variate estimator is
(cid:5)k
?ˆ c =g(X)+ c ? i (fi(X)?µi))
i=1
where µi =E[fi(X)], i=1,...,k, and
(cid:5)k
E[?ˆ c]=E[g(X)]+ c ?
i
E[fi(X)?µi]=?.
i=1
The controlled estimate ?ˆ cˆ?, and estimates for the optimal constants c?
i
, can
be obtained by fitting a linear regressionmodel. The details are discussed in
section 5.5.3.
5.5.3 Control variates and regression.
In this section we will discuss the duality between the control variate ap-
proach and simple linear regression. This provides more insight into how the
control variate reduces the variance in Monte Carlo integration. In addition,
we have a convenientmethod for estimating the optimal constantc?, the tar-
get parameter, the percent reduction in variance, and the standard error of
the estimator, all by fitting a simple linear regression model.
Suppose that (X
1
,Y
1
),...,(Xn,Yn) is a random sample from a bivariate
distribution withmean(µX,µY)andvariances(?
X
2 ,?
Y
2). Let us comparethe
least squares estimators for regression of X on Y with the control variate
estimator.
If there is a linear relation X =? Y +? +?, and E[?]=0, then
1 0
E[X]=E[E[X|Y]]=E[?
0
+?
1
Y +?]=?
0
+?
1
µY.
Here ? and ? are constant parameters and ? is a random error variable.
0 1
Let us consider the bivariate sample (g(X
1
),f(X
1
)),...,(g(Xn),f(Xn)).
Nowifg(X)replacesX andf(X)replacesY,wehaveg(X)=? +? f(X)+?,
0 1
and
E[g(X)]=? +? E[f(X)].
0 1

Monte Carlo Integration and Variance Reduction 137
The least squares estimator of the slope is
(cid:10)
?ˆ =
n
i=(cid:10)1
(Xi ?X)(Yi ?Y)
=
C $ ov(X,Y)
=
C $ ov(g(X),f(X))
=?cˆ ? .
1 n i=1 (Yi ?Y)2 V $ ar(Y) V $ ar(f(X))
This showsthat aconvenientwayto estimate c? is to usethe estimatedslope
from the fitted simple linear regression model of g(X) on f(X):
L <- lm(gx ~ fx)
c.star <- -L$coeff[2]
The least squares estimator of the intercept is ?ˆ =g(X)?(?cˆ?)f(X), so
0
that the predicted response at µ=E[f(X)] is
?ˆ +?ˆ µ=g(X)+cˆ ? (f(X)?cˆ ? µ)
0 1
=g(X)+cˆ ? (f(X)?µ)=?ˆ cˆ?.
Thus, the control variate estimate ?ˆ cˆ? is the predicted value of the response
variable (g(X)) at the point µ=E[f(X)].
The estimate of the error variance in the regressionof X on Y is
?ˆ2 =V $ ar(X ?Xˆ)=V $ ar(X ?(?ˆ +?ˆ Y))
? 0 1
=V $ ar(X ??ˆ Y)=V $ ar(X +cˆ ? Y),
1
theresidualmeansquarederror(MSE).Theestimateofvarianceofthecontrol
variate estimator is
V $ ar(g(X)+cˆ ? (f(X)?µ))= V $ ar(g(X)+cˆ?(f(X)?µ))
n
V $ ar(g(X)+cˆ?f(X)) ?ˆ2
?
= = .
n n
Thus, the estimated standard error of the control variate estimate is easily
computedusingRbyapplyingthesummarymethodtothelmobjectfromthe
fitted regressionmodel, for example using
se.hat <- summary(L)$sigma
?
to extract the value of ?ˆ? = MSE.
Finally, recall that the proportion of reduction in variance for the control
variateis[Cor(g(X),f(X))]2. Inthesimplelinearregressionmodel,thecoef-
ficientofdeterminationissamenumber(R2),whichisthe proportionoftotal
variation in g(X) about its mean explained by f(X).
Example 5.9 (Control variate and regression)
Returning to Example 5.8,let us repeatthe estimationby fitting aregression
model. In this problem,
(cid:6)
1 e?x
g(x)= dx
1+x2
0

| 138                |         |         |     | Statistical | Computing | with         | R   |     |     |
| ------------------ | ------- | ------- | --- | ----------- | --------- | ------------ | --- | --- | --- |
| and the            | control | variate | is  |             |           |              |     |     |     |
|                    |         |         |     | ?.5(1+x2)   | ?1,       |              |     |     |     |
|                    |         | f(x)=e  |     |             |           | 0<x<1,       |     |     |     |
| µ=E[f(X)]=e?.5?/4. |         |         |     |             |           |              | c?, |     |     |
| with               |         |         |     | To estimate |           | the constant |     |     |     |
set.seed(510)
| u      | <- runif(10000)     |     |      |               |     |           |     |     |     |
| ------ | ------------------- | --- | ---- | ------------- | --- | --------- | --- | --- | --- |
| f      | <- exp(-.5)/(1+u^2) |     |      |               |     |           |     |     |     |
| g      | <- exp(-u)/(1+u^2)  |     |      |               |     |           |     |     |     |
| c.star | <-                  | -   | lm(g | ~ f)$coeff[2] |     | # beta[1] |     |     |     |
| mu     | <- exp(-.5)*pi/4    |     |      |               |     |           |     |     |     |
> c.star
f
-2.436228
| We used  | the      | same | random | number  | seed   | as in Example | 5.8      | and | obtained  |
| -------- | -------- | ---- | ------ | ------- | ------ | ------------- | -------- | --- | --------- |
|          |          |      | c?.    | ?ˆ      |        |               |          |     |           |
| the same | estimate |      | for    | Now cˆ? | is the | predicted     | response | at  | the point |
µ=0.4763681,so
| u         | <- runif(10000)     |      |             |     |      |      |              |     |     |
| --------- | ------------------- | ---- | ----------- | --- | ---- | ---- | ------------ | --- | --- |
| f         | <- exp(-.5)/(1+u^2) |      |             |     |      |      |              |     |     |
| g         | <- exp(-u)/(1+u^2)  |      |             |     |      |      |              |     |     |
| L         | <- lm(g             | ~ f) |             |     |      |      |              |     |     |
| theta.hat |                     | <-   | sum(L$coeff | *   | c(1, | mu)) | #pred. value | at  | mu  |
?ˆ,
| The estimate |             | residual | mean  | squared | error         | and the  | proportion | of      | reduction |
| ------------ | ----------- | -------- | ----- | ------- | ------------- | -------- | ---------- | ------- | --------- |
| in variance  | (R-squared) |          | agree | with    | the estimates | obtained | in         | Example | 5.8.      |
> theta.hat
| [1] | 0.5253113 |     |     |     |     |     |     |     |     |
| --- | --------- | --- | --- | --- | --- | --- | --- | --- | --- |
> summary(L)$sigma^2
| [1] | 0.003117644 |     |     |     |     |     |     |     |     |
| --- | ----------- | --- | --- | --- | --- | --- | --- | --- | --- |
> summary(L)$r.squared
| [1] | 0.9484514 |     |     |     |     |     |     |     |     |
| --- | --------- | --- | --- | --- | --- | --- | --- | --- | --- |
(cid:5)
| Incaseseveralcontrolvariatesareused, |     |     |     |     |     | similarlyonecanestimate |     |     | a linear |
| ------------------------------------ | --- | --- | --- | --- | --- | ----------------------- | --- | --- | -------- |
model
(cid:5)k
|     |     |     |     | X =? | +   | ?iYi+? |     |     |     |
| --- | --- | --- | --- | ---- | --- | ------ | --- | --- | --- |
0
i=1
|             |          |         |               | c?       | =(c? | ,...,c?   | ?cˆ?    | =(?ˆ | ,...,?ˆ  |
| ----------- | -------- | ------- | ------------- | -------- | ---- | --------- | ------- | ---- | -------- |
| to estimate | the      | optimal | constants     |          |      | 1 k ).    | Then    |      | 1 k)     |
| and the     | estimate | is      | the predicted | response |      | Xˆ at the | point µ | = (µ | ,...,µk) |
1
| (seesection5.5.2). |     | Theestimatedvarianceofthecontrolledestimatorisagain |     |               |          |        |                 |     |      |
| ------------------ | --- | --------------------------------------------------- | --- | ------------- | -------- | ------ | --------------- | --- | ---- |
| ?ˆ2/n=MSE/n,where  |     |                                                     | n   | is the sample | size(the | number | ofreplicates,in |     | this |
?
case).

Monte Carlo Integration and Variance Reduction 139
5.6 Importance Sampling
Theaveragevalueofafunctiong(x)overaninterval(a,b)isusuallydefined
(in calculus) by
(cid:6)
b
1
g(x)dx.
b?a
a
Here a uniform weight function is applied over the entire interval (a,b). If X
is a random variable uniformly distributed on (a,b), then
(cid:6) (cid:6)
b b
1 1
E[g(X)]= g(x) dx= g(x)dx, (5.12)
b?a b?a
a a
which is simply the average value of the function g(x) over the interval (a,b)
with respect to a uniform weight function. The simple Monte Carlo method
generates a large nu
(cid:22)
mber of replicates X
1
,...,Xm uniformly distributed on
b
[a,b] and estimates g(x)dx by the sample mean
a
b?a (cid:5)m
g(Xi),
m
i=1
(cid:22)
b
which converges to g(x)dx with probability 1 by the strong law of large
a
numbers. Onelimitationofthismethodisthatitdoesnotapplytounbounded
intervals. Another drawback is that it can be inefficient to draw samples
uniformly across the interval if the function g(x) is not very uniform.
However,once we view the integrationproblemas an expected value prob-
lem (5.12),it seemsreasonableto considerother weightfunctions (other den-
sities) than uniform. This leads us to a general method called importance
sampling.
Suppose X is a random variable with density function f(x), such that
f(x)>0ontheset{x:g(x)>0}. LetY betherandomvariableg(X)/f(X).
Then (cid:6) (cid:6)
g(x)
g(x)dx= f(x)dx=E[Y].
f(x)
Estimate E[Y] by simple Monte Carlo integration. That is, compute the
average
(cid:5)m (cid:5)m
1 1 g(Xi)
Yi = ,
m m f(Xi)
i=1 i=1
where the random variables X
1
,...,Xm are generated from the distribution
with density f(x). The density f(x) is called the importance function.
In animportance sampling method, the variance of the estimator basedon
Y = g(X)/f(X) is Var(Y)/m, so the variance of Y should be small. The

140 Statistical Computing with R
variance of Y is small if Y is nearly constant, so the density f(·) should be
‘close’to g(x). Also,the variablewith density f(·) shouldbe reasonablyeasy
to simulate.
InExample5.5,randomnormalsaregeneratedtocomputetheMonteCarlo
estimate of the standard normal cdf, ?(2) = P(X ? 2). In the naive Monte
Carlo approach, estimates in the tails of the distribution are less precise.
Intuitively, we might expect a more precise estimate for a given sample size
if the simulated distribution is not uniform. In this case, the average must
be a weighted average rather than the unweighted sample mean, to correct
for this bias. This method is calledimportance sampling (see e.g.Robertand
Casella [228, Sec. 3.3]). The advantage of importance sampling is that the
importancesamplingdistributioncanbechosensothatvarianceoftheMonte
Carlo estimator is reduced.
Suppose that f(x) is a density supported on a set A. If ?(x) > 0 on A,
then the the integral (cid:6)
? = g(x)f(x)dx,
A
can be written (cid:6)
f(x)
? = g(x) ?(x)dx.
?(x)
A
If ?(x) is a density on A, then an estimator of ? =E?[g(x)f(x)/?(x)] is
(cid:5)n
?ˆ=
1
g(Xi)
f(Xi)
,
n ?(Xi)
i=1
where X
1
,...,Xn is a random sample from density ?(x). The function ?(·)
is called the envelope or the importance sampling function. There are many
densities ?(x) that are convenient to simulate. Typically one should choose
?(x) so that ?(x)(cid:2)|g(x)|f(x) on A (and ?(x) has finite variance).
Example 5.10 (Choice of the importance function)
In this example (from [64, p. 728]) several possible choices of importance
functions to estimate (cid:6)
1 e?x
dx
1+x2
0
by importance sampling method are compared. The candidates for the im-
portance functions are
f (x)=1, 0<x<1,
0
f (x)=e ?x , 0<x<?,
1
f (x)=(1+x2) ?1/?, ??<x<?,
2
f (x)=e ?x /(1?e ?1), 0<x<1,
3
f (x)=4(1+x2) ?1/?, 0<x<1.
4

Monte Carlo Integration and Variance Reduction 141
The integrand is
(cid:15)
e?x/(1+x2),if (0<x<1);
g(x)=
0, otherwise.
While all five of the possible importance functions are positive on the set
0 < x < 1 where g(x) > 0, f and f have larger ranges and many of the
1 2
simulated values will contribute zeros to the sum, which is inefficient. All of
these distributions are easy to simulate; f is standard Cauchy or t(? = 1).
2
The densities are plotted on (0,1) for comparison with g(x) in Figure 5.1(a).
The function that corresponds to the most nearly constant ratio g(x)/f(x)
appears to be f , which can be seen more clearly in Figure 5.1(b). From the
3
graphs, we might prefer f for the smallest variance.
3
m <- 10000
theta.hat <- se <- numeric(5)
g <- function(x) {
exp(-x - log(1+x^2)) * (x > 0) * (x < 1)
}
x <- runif(m) #using f0
fg <- g(x)
theta.hat[1] <- mean(fg)
se[1] <- sd(fg)
x <- rexp(m, 1) #using f1
fg <- g(x) / exp(-x)
theta.hat[2] <- mean(fg)
se[2] <- sd(fg)
x <- rcauchy(m) #using f2
i <- c(which(x > 1), which(x < 0))
x[i] <- 2 #to catch overflow errors in g(x)
fg <- g(x) / dcauchy(x)
theta.hat[3] <- mean(fg)
se[3] <- sd(fg)
u <- runif(m) #f3, inverse transform method
x <- - log(1 - u * (1 - exp(-1)))
fg <- g(x) / (exp(-x) / (1 - exp(-1)))
theta.hat[4] <- mean(fg)
se[4] <- sd(fg)
u <- runif(m) #f4, inverse transform method
x <- tan(pi * u / 4)
fg <- g(x) / (4 / ((1 + x^2) * pi))
theta.hat[5] <- mean(fg)
se[5] <- sd(fg)

142 Statistical Computing with R
0.0 0.2 0.4 0.6 0.8 1.0
0.2
5.1
0.1
5.0
0.0
g
0
1
2
3
4
0.0 0.2 0.4 0.6 0.8 1.0
x
(a)
0.3
5.2
0.2
5.1
0.1
5.0
0.0
0
1
2
3
4
x
(b)
FIGURE 5.1: Importancefunctions inExample5.10: f ,...,f (lines0:4)
0 4
with g(x) in (a) and the ratios g(x)/f(x) in (b).
Code to display Figures 5.1(a) and 5.1(b) is given on page 152.
(cid:22)
1
The estimates (labeled theta.hat) of g(x)dx and the corresponding
0
standard errors se for the simulation using each of the importance functions
are
> rbind(theta.hat, se)
[,1] [,2] [,3] [,4] [,5]
theta.hat 0.5241140 0.5313584 0.5461507 0.52506988 0.5260492
se 0.2436559 0.4181264 0.9661300 0.09658794 0.1427685
so the simulation indicates that f and possibly f produce smallest variance
3 4
amongthesefiveimportancefunctions,whilef producesthehighestvariance.
2 .
The standard Monte Carlo estimate without importance sampling has s(cid:1)e =
0.244 (f =1). The importance functions f and f do not reduce error, but
0 1 2
f and f each reduce the standard error in estimating ?.
3 4
The Cauchy density f is supported on the entire real line, while the in-
2
tegrand g(x) is evaluated on (0,1). There are a very large number of zeros
(about75%)producedintheratiog(x)/f(x)inthiscase,andallothervalues
far from0,resulting in a largevariance. The followingsummarystatistics for
the ratio g(x)/f (x) confirm this.
2
Min. 1st Qu. Median Mean 3rd Qu. Max.
0.0000 0.0000 0.0000 0.5173 0.0000 3.1380
For f there is a similar inefficiency, as f is supported on (0,?), which also
1 1
generates many zeros in the sum of g(x)/f(x) for the values outside of (0,1).
Theinefficiencyforf isnotasbadasf (about37%zeros),however,because
1 2

Monte Carlo Integration and Variance Reduction 143
the tailofthe distributionislighter. Thefollowingsummarystatisticsforthe
ratio g(x)/f (x) also confirm this.
1
Min. 1st Qu. Median Mean 3rd Qu. Max.
0.0000 0.0000 0.6891 0.5314 0.9267 1.0000
(cid:5)
Example 5.10 illustrates that care must be taken to select an importance
function that results in small variance of Y = g(X)/f(X). The importance
function should be an f that is supported on exactly the set where g(x)>0,
and such that the ratio g(x)/f(x) is nearly constant.
Variance in Importance Sampling
If ?(x) is the importance sampling distribution (envelope), f(x)=1 on A,
and X has pdf ?(x) supported on A, then
(cid:6) (cid:6) (cid:3) (cid:4)
g(x) g(X)
? = g(x)dx= ?(x)dx =E .
?(x) ?(X)
A A
If X
1
,...,Xn is a random sample from the distribution of X, the estimator
is again the sample-mean
(cid:5)n
?ˆ=g(X)=
1 g(Xi)
.
n ?(Xi)
i=1
Thus, the importance sampling method is a sample-mean method, and
(cid:6)
g2(x)
Var(?ˆ)=E[?ˆ2]?(E[?ˆ])2 = ds??2.
?(x)
A
The distribution of X can be chosen to reduce the variance of the sample-
mean estimator. The minimum variance
(cid:7)(cid:6) (cid:8)
2
|g(x)|dx ??2
A
is obtained when
|g(x)|
(cid:22)
?(x)= .
|g(x)|dx
A
(cid:22)
Unfortun(cid:22)ately, the problemis to estimate
A
g(x)dx, so itis unlikely thatthe
value of |g(x)|dx in the denominator of ?(x) is available. Although it may
A
bedifficulttochoose?(x)toattainminimumvariance,variancemaybe“close
to” optimal if ?(x) is chosen so that the shape of the density ?(x) is “close
to” |g(x)| on A.

144 Statistical Computing with R
For general f(x), choose ?(x) so that ?(x) (cid:2) |g(x)|f(x) on A. If the ratio
of the function being integrated to the importance function is bounded, then
the importance sampling estimator will have finite variance. Considering the
relativecomputationalefficiencyofestimators,oneshouldalsochoose?(x)so
that the cost (time) to generate the Monte Carlo replicates is small.
5.7 Stratified Sampling
Another approach to variance reduction is stratified sampling, which aims
to reduce the variance of the estimator by dividing the interval into strata
and estimating the integral on each of the stratum with smaller variance.
Linearity of the integral operator and the stro(cid:22)ng law of large numbers imply
that the sum of these estimates converges to g(x)dx with probability 1. In
stratified sampling, the number of replicates m and number of replicates mj
to be drawn from each of k strata are fixed so that m=m
1
+···+mk, with
the goal that
Var(?ˆ k(m
1
,...,mk))<Var(?ˆ),
where ?ˆ k(m
1
,...,mk) is the stratified estimator and ?ˆis the standardMonte
Carlo estimator based on m=m
1
+···+mk replicates.
To see how this might work, let us first see a numerical example.
Example 5.11 (Example 5.10, cont.)
In Figure 5.1(a) it is clear that our integrand g(x) is not constant on (0,1).
Divide the interval into, say, four subintervals, and compute a Monte Carlo
estimate of the integral on each subinterval using 1/4 of the total number
o(cid:22)f replicates. Then combine these four estimates to obtain the estimate of
1 e?x(1 + x2)?1 dx. Does it appear that the variance of the estimator is
0
reduced,comparedwiththe varianceofthe standardMonteCarloestimator?
The results are shown on the next page. Although 10 runs are not really
enough to get good estimates of the standard errors, in this simulation it
appears that stratification has improved variance by a factor of about 10. (cid:5)
Intuitively,therecanbemorereductioninvarianceusingstratificationwhen
the means of the strata are widely dispersed, as in Example 5.11, than if
the means of the strata are approximately equal. For integrands that are
monotonefunctions,stratificationsimilartoExample5.11shouldbeaneffec-
tive way to reduce variance.

Monte Carlo Integration and Variance Reduction 145
M <- 20 #number of replicates
T2 <- numeric(4)
estimates <- matrix(0, 10, 2)
g <- function(x) {
exp(-x - log(1+x^2)) * (x > 0) * (x < 1) }
for (i in 1:10) {
estimates[i, 1] <- mean(g(runif(M)))
T2[1] <- mean(g(runif(M/4, 0, .25)))
T2[2] <- mean(g(runif(M/4, .25, .5)))
T2[3] <- mean(g(runif(M/4, .5, .75)))
T2[4] <- mean(g(runif(M/4, .75, 1)))
estimates[i, 2] <- mean(T2)
}
> estimates
[,1] [,2]
[1,] 0.6281555 0.5191537
[2,] 0.5105975 0.5265614
[3,] 0.4625555 0.5448566
[4,] 0.4999053 0.5151490
[5,] 0.4984972 0.5249923
[6,] 0.4886690 0.5179625
[7,] 0.5151231 0.5246307
[8,] 0.5503624 0.5171037
[9,] 0.5586109 0.5463568
[10,] 0.4831167 0.5548007
> apply(estimates, 2, mean)
[1] 0.5195593 0.5291568
> apply(estimates, 2, var)
[1] 0.0023031762 0.0002012629
PROPOSITION 5.2 Denote the standard Monte Carlo estimator with M
replicates by ?ˆM, and let
(cid:5)k
1
?ˆS = ?ˆ j
k
j=1
denote the stratified estimator with equal size m = M/k strata. Denote the
mean and variance of g(U) on stratum j by ?j and ?
j
2, respectively. Then
Var(?ˆM)?Var(?ˆS).
Proof. By independence of ?ˆ j (cid:5)s,
? ?
Var(?ˆS )=Var ? k 1 (cid:5)k ?ˆ j ? = k 1 2 (cid:5)k ? m j 2 = M 1 k (cid:5)k ? j 2.
j=1 j=1 j=1

146 Statistical Computing with R
Now, if J is the randomly selected stratum, it is selected with uniform prob-
ability 1/k, and applying the conditional variance formula
Var(g(U)) 1
Var(?ˆM )= = (Var(E[g(U|J)])+E[Var(g(U|J)])
M M
(cid:11) ) *(cid:12)
1
= Var(?J)+E ?
J
2
M ? ?
(cid:5)k
=
1 ?
Var(?J)+
1
?
j
2?
M k
j=1
1
=
Var(?J)+Var(?ˆS )?Var(?ˆS
).
M
The inequality is strict except in the case where all the strata have identical
means. (cid:1)
Fromthe aboveinequalityitisclearthatthereductioninvarianceislarger
when the means of the strata are widely dispersed.
A similar proof can be applied in the general case when the strata have
unequal probabilities. See Fishman [94, Sec. 4.3] for a proof of the general
case.
Example 5.12 (Examples 5.10–5.11,cont., stratified sampling)
Stratifiedsa(cid:22)mplingisimplementedinamoregeneralway,fortheMonteCarlo
estimate of 1 e?x(1+x2)?1dx. The standard Monte Carlo estimate is also
0
obtained for comparison.
M <- 10000 #number of replicates
k <- 10 #number of strata
r <- M / k #replicates per stratum
N <- 50 #number of times to repeat the estimation
T2 <- numeric(k)
estimates <- matrix(0, N, 2)
g <- function(x) {
exp(-x - log(1+x^2)) * (x > 0) * (x < 1)
}
for (i in 1:N) {
estimates[i, 1] <- mean(g(runif(M)))
for (j in 1:k)
T2[j] <- mean(g(runif(M/k, (j-1)/k, j/k)))
estimates[i, 2] <- mean(T2)
}
The result of this simulation produces the following estimates.

Monte Carlo Integration and Variance Reduction 147
> apply(estimates, 2, mean)
[1] 0.5251321 0.5247715
> apply(estimates, 2, var)
[1] 6.188117e-06 6.504485e-08
This represents a more than 98% reduction in variance. (cid:5)
5.8 Stratified Importance Sampling
(cid:22) A modification to the importance sampling method of estimating ? =
g(x)dx is stratified importance sampling.
Choose a suitable importance function f. Suppose that X is generated
with density f and cdf F using the probability integraltransformation. If M
replicates are generated, the importance sampling estimate of ? has variance
?2/M, where ?2 =Var(g(X)/f(X)).
For the stratified importance sampling estimate, divide the real line into
k intervals Ij = {x : aj?1 ? x < aj } with endpoints a
0
= ??, aj =
F?1(j/k), j = 1,...,k ? 1, and ak = ?. (The real line is divided into
intervalscorrespondingtoequalareas1/kunderthedensityf(x). Theinterior
endpointsarethepercentilesorquantiles.) Oneachsubintervaldefinegj(x)=
g(x)ifx?Ij andgj(x)=0otherwise. Wenowhavekparameterstoestimate,
(cid:6)
aj
?j = gj(x)dx, j =1,...,k
aj?1
and ? = ?
1
+ ··· + ?k. The conditional densities provide the importance
functions oneachsubinterval. Thatis,oneachsubintervalIj,the conditional
density fj of X is defined by
fj(x)=fX|Ij (x|Ij)= f
P
(x
(
,
a
a
j?
j?
1
1
?
?
x
x
<
<
a
a
j
j
)
)
f(x)
= =kf(x), aj?1 ?x<aj.
1/k
Let ?
j
2 = Var(gj(X)/fj(X)). For each j = 1,...,k we simulate an impor-
tance sample size m, compute the importa (cid:10) nce sampling estimator ?ˆ j of ?j on
the jth subinterval, and compute ?ˆSI =
k
1 k
j=1
?ˆ j. Then by independence of
?ˆ
1
,...,?ˆ k,
? ?
Var(?ˆSI )=Var ? (cid:5)k ?ˆ j ? = (cid:5)k ? j 2 = 1 (cid:5)k ? j 2.
m m
j=1 j=1 j=1

148 Statistical Computing with R
Denote the importance sampling estimator by ?ˆI. In order to determine
whether?ˆSI isabetterestimatorof?than?ˆI,weneedtocheckthatVar(?ˆSI)
is smaller than the variance without stratification. The variance is reduced
by stratification if
(cid:5)k (cid:5)k (cid:5)k
?2 1 k
> ?2 = ?2 ??2?k ?2 >0.
j j j
M m M
j=1 j=1 j=1
Thus, we need to prove the following.
PROPOSITION 5.3 Suppose M = mk is the number of replicates for an
importance sampling estimator ?ˆI, and ?ˆSI is a stratified importance sam-
pling estimator, with estimates ?ˆ j for ?j on the individual strata, each with m
replicates. If Var(?ˆI)=?2/M and Var(?ˆ j)=?
j
2/m, j =1,...,k, then
(cid:5)k
?2?k ?2 ?0, (5.13)
j
j=1
with equality if and only if ?
1
=···=?k. Hence stratification never increases
the variance, and there exists a stratification that reduces the variance except
when g(x) is constant.
Proof. To determine when the inequality (5.13) holds, we need to consider
the relation between the random variables with densities fj and the random
variable X with density f.
Consider a two-stage experiment. First a number J is drawn at random
from the integers 1 to k. After observing J = j, a random variable X? is
generated from the density fj and
?
gj(X) gj(X?)
Y = = .
fj(X) kf(X?)
To compute the variance of Y? we apply the conditional variance formula
Var(Y
?
)=E[Var(Y
?|J)]+Var(E[Y ?|J]).
(5.14)
Here
(cid:5)k (cid:5)k
1
E[Var(Y ?|J)]= ?2P(J =j)= ?2
j j
k
j=1 j=1
and Var(E[Y?|J])=Var(?J). Thus in (5.14) we have
(cid:5)k
1
Var(Y ? )= ?
j
2+Var(?J).
k
j=1

Monte Carlo Integration and Variance Reduction 149
On the other hand,
k2Var(Y ? )=k2E[Var(Y ?|J)]+k2Var(E[Y ?|J]).
and
?2 =Var(Y)=Var(kY ? )=k2Var(Y ? )
which imply that
? ?
(cid:5)k (cid:5)k
?2 =k2Var(Y ? )=k2?1 ?
j
2+Var(?J) ? =k ?
j
2+k2Var(?J).
k
j=1 j=1
Therefore
(cid:5)k
?2?k ?
j
2 =k2Var(?J)?0,
j=1
and equality holds if and only if ?
1
=···=?k. (cid:1)
Example 5.13 (Example 5.10, cont.)
InExample5.10ourbestresultwasobtainedwithimportancefunctionf (x)=
3
e?x/(1?e?1), 0 < x < 1. From 10000 replicates we obtained the estimate
?ˆ = 0.5257801 and an estimated standard error 0.0970314. Now divide the
interval (0,1) into five subintervals, (j/5,(j+1)/5), j =0,1,...,4.
Then on the jth subinterval variables are generated from the density
5e?x j?1 j
, <x< .
1?e?1 5 5
The implementation is left as an exercise. (cid:5)
Exercises
5.1 Compute a Monte Carlo estimate of
(cid:6)
?/3
sintdt
0
and compare your estimate with the exact value of the integral.
5.2 Refer to Example 5.3. Compute a Monte Carlo estimate of the standard
normalcdf, by generatingfromthe Uniform(0,x) distribution. Compareyour
estimates with the normal cdf function pnorm. Compute an estimate of the
varianceofyourMonte Carloestimate of?(2), anda 95%confidenceinterval
for ?(2).

150 Statistical Computing with R
5.3 Compute a Monte Carlo estimate ?ˆof
(cid:6)
0.5
?x
? = e dx
0
by sampling from Uniform(0, 0.5), and estimate the variance of ?ˆ. Find an-
otherMonteCarloestimator??bysamplingfromtheexponentialdistribution.
Which of the variances (of ?ˆand ?ˆ?) is smaller, and why?
5.4 Write a function to compute a Monte Carlo estimate of the Beta(3, 3) cdf,
and use the function to estimate F(x) for x = 0.1,0.2,...,0.9. Compare the
estimates with the values returned by the pbeta function in R.
5.5 Compute(empirically)theefficiencyofthesamplemeanMonteCarlomethod
of estimation of the definite integral in Example 5.3 relative to the “hit or
miss” method in Example 5.4.
5.6 In Example 5.7 the control variate approach was illustrated for Monte Carlo
integration of (cid:6)
1
x
? = e dx.
0
Now consider the antithetic variate approach. Compute Cov(eU,e1?U) and
Var(eU +e1?U), where U ? Uniform(0,1). What is the percent reduction in
variance of ?ˆthat can be achieved using antithetic variates (compared with
simple MC)?
5.7 Refer to Exercise 5.6. Use a Monte Carlo simulation to estimate ? by the
antitheticvariateapproachandbythesimpleMonteCarlomethod. Compute
anempiricalestimateofthepercentreductioninvarianceusingtheantithetic
variate. Compare the result with the theoretical value from Exercise 5.6.
5.8 Let U ? Uniform(0,1), X = aU, and X(cid:5) = a(1?U), where a is a constant.
Showthat?(X,X(cid:5))=?1. Is?(X,X(cid:5))=?1ifU isasymmetricbetarandom
variable?
5.9 The Rayleigh density [156, (18.76)] is
f(x)= x e ?x2/(2?2), x?0, ? >0.
?2
Implement a function to generate samples from a Rayleigh(?) distribution,
usingantithetic variables. Whatis the percentreductioninvarianceof
X+X(cid:2)
2
compared with
X1+X2
for independent X , X ?
2 1 2
5.10 Use Monte Carlo integration with antithetic variables to estimate
(cid:6)
1 e?x
dx,
1+x2
0
andfindtheapproximatereductioninvarianceasapercentageofthevariance
without variance reduction.

Monte Carlo Integration and Variance Reduction 151
5.11 If ?ˆ and ?ˆ are unbiased estimators of ?, and ?ˆ and ?ˆ are antithetic, we
1 2 1 2
derived that c? = 1/2 is the optimal constant that minimizes the variance of
?ˆ c = c?ˆ 2 +(1?c)?ˆ 2 . Derive c? for the general case. That is, if ?ˆ 1 and ?ˆ 2
are any two unbiased estimators of ?, find the value c? that minimizes the
variance of the estimator ?ˆ c = c?ˆ 2 +(1?c)?ˆ 2 in equation (5.11). (c? will be
a function of the variances and the covariance of the estimators.)
(cid:22)
5.12 Let ?ˆIS be an importance sampling estimator of ? = g(x)dx, where the
f
importance function f is a density. Prove that if g(x)/f(x) is bounded, then
the variance of the importance sampling estimator ?ˆIS is finite.
f
5.13 Find two importance functions f and f that are supported on (1,?) and
1 2
are ‘close’ to
g(x)= ?
x2
e ?x2/2, x>1.
2?
Which of your two importance functions should produce the smaller variance
in estimating (cid:6)
?
?
x2
e ?x2/2 dx
2?
1
by importance sampling? Explain.
5.14 Obtain a Monte Carlo estimate of
(cid:6)
?
?
x2
e ?x2/2 dx
2?
1
by importance sampling.
5.15 ObtainthestratifiedimportancesamplingestimateinExample5.13andcom-
pare it with the result of Example 5.10.

| 152 |     |     |     | Statistical | Computing | with R |     |
| --- | --- | --- | --- | ----------- | --------- | ------ | --- |
R Code
| Code               | to display |             | the plot | of         | importance | functions      | in Figures 5.1(a) |
| ------------------ | ---------- | ----------- | -------- | ---------- | ---------- | -------------- | ----------------- |
| and                | 5.1(b)     | on page     | 142.     |            |            |                |                   |
| x                  | <- seq(0,  |             | 1, .01)  |            |            |                |                   |
| w                  | <- 2       |             |          |            |            |                |                   |
| f1                 | <- exp(-x) |             |          |            |            |                |                   |
| f2                 | <- (1      | / pi)       | / (1     | + x^2)     |            |                |                   |
| f3                 | <- exp(-x) |             | / (1     | - exp(-1)) |            |                |                   |
| f4                 | <- 4       | / ((1       | + x^2)   | *          | pi)        |                |                   |
| g                  | <- exp(-x) |             | / (1     | + x^2)     |            |                |                   |
| #figure            |            | (a)         |          |            |            |                |                   |
| plot(x,            |            | g, type     | =        | "l",       | main =     | "", ylab = "", |                   |
|                    | ylim       | =           | c(0,2),  | lwd        | = w)       |                |                   |
| lines(x,           |            | g/g,        | lty      | = 2,       | lwd = w)   |                |                   |
| lines(x,           |            | f1,         | lty =    | 3, lwd     | = w)       |                |                   |
| lines(x,           |            | f2,         | lty =    | 4, lwd     | = w)       |                |                   |
| lines(x,           |            | f3,         | lty =    | 5, lwd     | = w)       |                |                   |
| lines(x,           |            | f4,         | lty =    | 6, lwd     | = w)       |                |                   |
| legend("topright", |            |             |          | legend     | = c("g",   | 0:4),          |                   |
|                    |            | lty =       | 1:6,     | lwd =      | w, inset   | = 0.02)        |                   |
| #figure            |            | (b)         |          |            |            |                |                   |
| plot(x,            |            | g, type     | =        | "l",       | main =     | "", ylab = "", |                   |
|                    | ylim       | = c(0,3.2), |          | lwd        | = w,       | lty = 2)       |                   |
| lines(x,           |            | g/f1,       | lty      | = 3,       | lwd =      | w)             |                   |
| lines(x,           |            | g/f2,       | lty      | = 4,       | lwd =      | w)             |                   |
| lines(x,           |            | g/f3,       | lty      | = 5,       | lwd =      | w)             |                   |
| lines(x,           |            | g/f4,       | lty      | = 6,       | lwd =      | w)             |                   |
| legend("topright", |            |             |          | legend     | = c(0:4),  |                |                   |
|                    |            | lty =       | 2:6,     | lwd =      | w, inset   | = 0.02)        |                   |

Chapter 6
Monte Carlo Methods in Inference
6.1 Introduction
Monte Carlomethods encompassa vastset ofcomputationaltoolsin mod-
ern applied statistics. Monte Carlo integration was introduced in Chapter
5. Monte Carlo methods may refer to any method in statistical inference or
numerical analysis where simulation is used. However, in this chapter only
a subset of these methods are discussed. This chapter introduces some of
the Monte Carlo methods for statistical inference. Monte Carlo methods can
be applied to estimate parameters of the sampling distribution of a statistic,
meansquarederror(MSE),percentiles,orotherquantitiesofinterest. Monte
Carlostudiescanbedesignedtoassessthecoverageprobabilityforconfidence
intervals,tofindanempiricalTypeIerrorrateofatestprocedure,toestimate
the power of a test, and to compare the performance of different procedures
for a given problem.
In statistical inference there is uncertainty in an estimate. The methods
coveredinthischapteruserepeatedsamplingfromagivenprobabilitymodel,
sometimes called parametric bootstrap, to investigate this uncertainty. If
we can simulate the stochastic process that generated our data, repeatedly
drawing samples under identical conditions, then ultimately we hope to have
a close replica of the process itself reflected in the samples. Other Monte
Carlo methods, such as (nonparametric) bootstrap, are based on resampling
from an observed sample. Resampling methods are covered in Chapters 7
and 8. Monte Carlo integrationand MarkovChain Monte Carlo methods are
covered in Chapters 5 and 9. Methods for generating random variates from
specifiedprobabilitydistributionsarecoveredinChapter3. Seethereferences
in Section 5.1 on some of the early history of Monte Carlo methods, and for
general reference see e.g. [63, 84, 228].
153

154 Statistical Computing with R
6.2 Monte Carlo Methods for Estimation
Suppose X
1
,...,Xn is a random sample from the distribution of X. An
estimator ?ˆfor a parameter ? is an n variate function
?ˆ=?ˆ(X
1
,...,Xn)
of the sample. Functions of the estimator ?ˆ are therefore n-variate func-
tions of the data, also. For simplicity, let x = (x
1
,...,xn)T ? Rn, and let
x(1),x(2),... denote a sequence of independent random samples generated
from the distribution of X. Random variates from the sampling distribution
of ?ˆ can be generated by repeatedly drawing independent random samples
x(j) and computing ?ˆ(j) =?ˆ(x
1
(j),...,xn (j)) for each sample.
6.2.1 Monte Carlo estimation and standard error
Example 6.1 (Basic Monte Carlo estimation)
Suppose that X ,X are iid from a standard normal distribution. Estimate
1 2
the mean difference E|X ?X |.
1 2
ToobtainaMonteCarloestimateof? =E[g(X ,X )]=E|X ?X |based
1 2 1 2
on m replicates, generate random samples x(j) = (x(j),x(j)) of size 2 from
1 2
the standard normal distribution, j =1,...,m. Then compute the replicates
?ˆ(j) =gj(x
1
,x
2
)=|x
1
(j)?x
2
(j)|, j =1,...,m, and the mean of the replicates
(cid:5)m (cid:5)m
?ˆ= 1 ?ˆ(j) =g(X ,X )= 1 |x(j)?x(j)|.
m 1 2 m 1 2
i=1 i=1
This is easy to implement, as shown below.
m <- 1000
g <- numeric(m)
for (i in 1:m) {
x <- rnorm(2)
g[i] <- abs(x[1] - x[2])
}
est <- mean(g)
One run produces the following estimate.
> est
[1] 1.128402
?
.
One can derive by integration that E|X ? X | = 2/ ? = 1.128379 and
1 2
Va(cid:2)r(|X
1
?X
2
|)=
.
2?4/?. Inthis examplethestandarderroroftheestimate
is (2?4/?)/m=0.02695850. (cid:5)

Monte Carlo Methods in Inference 155
Estimating the standard error of the mean
(cid:2)
ThestandarderrorofameanX ofasamplesizenis Var(X)/n.Whenthe
distributionofX isunknownwecansubstituteforF theempiricaldistribution
Fn of the sample x
1
,...,xn. The “plug-in” estimate of the variance of X is
(cid:5)n
V $ ar(x)= 1 (xi ?x¯)2.
n
i=1
$
Note that Var(x) is the population variance of the finite pseudo population
{x
1
,...,xn } with cdf Fn. The corresponding estimate of the standard error
of x¯ is
(cid:13) (cid:14) (cid:13) (cid:14)
(cid:5)n 1/2 (cid:5)n 1/2
1 1 1
s(cid:1)e(x¯)= ? (xi ?x¯)2 = (xi ?x¯)2 .
n n n
i=1 i=1
Using the unbiased estimator of Var(X) we have
(cid:13) (cid:14)
(cid:5)n 1/2
1 1
s(cid:1)e(x¯)= ?
n n?1
(xi ?x¯)2 .
i=1
In a Monte Carlo experiment, the sample size is large and the two estimates
of standard error are approximately equal.
In Example 6.1 the sample size is m (the number of replicates of ?ˆ), and
the estimate of standard error of ?ˆis
> sqrt(sum((g - mean(g))^2)) / m
[1] 0.02708121
(cid:2)
.
InExample6.1wehavethe exactvaluese(?ˆ)= (2?4/?)/m=0.02695850
for comparison.
6.2.2 Estimation of MSE
Monte Carlo methods can be applied to estimate the MSE of an estima-
tor. Recall that the MSE of an estimator ?ˆ for a parameter ? is defined by
MSE(?ˆ)=E[(?ˆ??)2]. If m (pseudo) random samples x(1),...,x(m) are gen-
erated from the distribution of X, then a Monte Carlo estimate of the MSE
of ?ˆ=?ˆ(x
1
,...,xn) is
(cid:5)m
M
(cid:3)
SE =
1 (?ˆ(j)??)2,
m
j=1
where ?ˆ(j) =?ˆ(x(j))=?ˆ(x
1
(j),...,xn (j)).

156 Statistical Computing with R
Example 6.2 (Estimating the MSE of a trimmed mean)
A trimmed mean is sometimes applied to estimate the center of a continuous
symmetric distribution that is not necessarily normal. In this example, we
computeanestimateoftheMSEofatrimmedmean. SupposethatX
1
,...,Xn
is a random sample and X (1) ,...,X (n) is the corresponding ordered sample.
The trimmed sample mean is computed by averaging all but the largest and
smallest sample observations. More generally, the kth level trimmed sample
mean is defined by
n(cid:5)?k
1
X [?k] = n?2k X (i) .
i=k+1
Obtain a Monte Carlo estimate of the MSE(X [?1] ) of the first level trimmed
mean assuming that the sampled distribution is standard normal.
Inthisexample,thecenterofthedistributionis0andthetargetparameter
is ? = E[X] = E[X [?1] ] = 0. We will denote the first level trimmed sample
mean by T. A Monte Carlo estimate of MSE(T) based on m replicates can
be obtained as follows.
1. Generate the replicates T(j), j =1...,m by repeating:
(a) Generate x
1
(j),...,xn (j),
iid from the distribution of X.
(b) Sort x
1
(j),...,xn (j) in i
(cid:10)
ncreasing order, to obtain x
(
(
1
j)
)
?···?x
(
(
n
j)
)
.
(c) Compute T(j) = 1 n?1x(j).
n?2 i=2 (i)
(cid:10) (cid:10)
2. Compute M (cid:3) SE(T)= 1 m (T(j)??)2 = 1 m (T(j))2.
m j=1 m j=1
Then T(1),...,T(m) are independent and identically distributed according
tothesamplingdistributionofthelevel-1trimmedmeanforastandardnormal
(cid:3)
distribution, and we are computing the sample mean estimate MSE(T) of
MSE(T). Thisprocedurecanbe implementedbywritingaforloopasshown
below (replicate can replace the loop; see R note 6.1 on page 161).
n <- 20
m <- 1000
tmean <- numeric(m)
for (i in 1:m) {
x <- sort(rnorm(n))
tmean[i] <- sum(x[2:(n-1)]) / (n-2)
}
mse <- mean(tmean^2)
> mse
[1] 0.05176437
> sqrt(sum((tmean - mean(tmean))^2)) / m #se
[1] 0.007193428

Monte Carlo Methods in Inference 157
The estimate of MSE for the trimmed mean in this run is approximately
.
0.052 (s(cid:1)e = 0.007). For comparison, the MSE of the sample mean X is
Var(X)/n, which is 1/20 = 0.05 in this example. Note that the median is
actuallyatrimmedmean;ittrimsallbutoneortwoofthe observations. The
simulation is repeated for the median below.
n <- 20
m <- 1000
tmean <- numeric(m)
for (i in 1:m) {
x <- sort(rnorm(n))
tmean[i] <- median(x)
}
mse <- mean(tmean^2)
> mse
[1] 0.07483438
> sqrt(sum((tmean - mean(tmean))^2)) / m #se
[1] 0.008649554
The estimate of MSE for the sample median is approximately 0.075 and
s(cid:1)e(M (cid:3) SE)= . 0.0086. (cid:5)
Example 6.3 (MSE of a trimmed mean, cont.)
Compare the MSE of level-k trimmed means for the standard normal and a
“contaminated” normal distribution. The contaminated normal distribution
in this example is a mixture
pN(0,?2 =1)+(1?p)N(0,?2 =100).
The target parameter is the mean, ? =0. (This example is from [64, 9.7].)
WriteafunctiontoestimateMSE(X [?k] )fordifferentk andp. Togenerate
the contaminated normal samples, first randomly select ? according to the
probability distribution P(? = 1) = p; P(? = 10) = 1 ? p. Note that
the normal generator rnorm can accept a vector of parameters for standard
deviation. After generating the n values for ?, pass this vector as the sd
argument to rnorm (see e.g. Example 3.12 and Example 3.13).
n <- 20
K <- n/2 - 1
m <- 1000
mse <- matrix(0, n/2, 6)

158 Statistical Computing with R
trimmed.mse <- function(n, m, k, p) {
#MC est of mse for k-level trimmed mean of
#contaminated normal pN(0,1) + (1-p)N(0,100)
tmean <- numeric(m)
for (i in 1:m) {
sigma <- sample(c(1, 10), size = n,
replace = TRUE, prob = c(p, 1-p))
x <- sort(rnorm(n, 0, sigma))
tmean[i] <- sum(x[(k+1):(n-k)]) / (n-2*k)
}
mse.est <- mean(tmean^2)
se.mse <- sqrt(mean((tmean-mean(tmean))^2)) / sqrt(m)
return(c(mse.est, se.mse))
}
for (k in 0:K) {
mse[k+1, 1:2] <- trimmed.mse(n=n, m=m, k=k, p=1.0)
mse[k+1, 3:4] <- trimmed.mse(n=n, m=m, k=k, p=.95)
mse[k+1, 5:6] <- trimmed.mse(n=n, m=m, k=k, p=.9)
}
TheresultsofthesimulationareshowninTable6.1. Theresultsinthetable
are n times the estimates. This comparison suggests that a robust estimator
of the mean can lead to reduced MSE for contaminated normal samples. (cid:5)
TABLE 6.1: Estimates of Mean Squared Error for
the kth Level Trimmed Mean in Example 6.3 (n=20)
Normal p=0.95 p=0.90
k nM (cid:3) SE ns(cid:1)e nM (cid:3) SE ns(cid:1)e nM (cid:3) SE ns(cid:1)e
0 0.976 0.140 6.229 0.140 11.485 0.140
1 1.019 0.143 1.954 0.143 4.126 0.143
2 1.009 0.142 1.304 0.142 1.956 0.142
3 1.081 0.147 1.168 0.147 1.578 0.147
4 1.048 0.145 1.280 0.145 1.453 0.145
5 1.103 0.149 1.395 0.149 1.423 0.149
6 1.316 0.162 1.349 0.162 1.574 0.162
7 1.377 0.166 1.503 0.166 1.734 0.166
8 1.382 0.166 1.525 0.166 1.694 0.166
9 1.491 0.172 1.646 0.172 1.843 0.172

Monte Carlo Methods in Inference 159
6.2.3 Estimating a confidence level
One type of problem that arises frequently in statistical applications is the
need to evaluate the cdf of the sampling distribution of a statistic, when the
densityfunctionofthestatisticisunknownorintractable. Forexample,many
commonly usedestimationproceduresarederivedunder the assumptionthat
the sampled population is normally distributed. In practice, it is often the
casethatthepopulationisnon-normalandinsuchcases,thetruedistribution
of the estimator may be unknown or intractable. The following examples
illustrateaMonteCarlomethodtoassesstheconfidencelevelinanestimation
procedure.
If(U,V)isaconfidenceintervalestimateforanunknownparameter?,then
U and V are statistics with distributions that depend on the distribution FX
of the sampled population X. The confidence level is the probability that
the interval (U,V) covers the true value of the parameter ?. Evaluating the
confidence level is therefore an integration problem.
Note(cid:22)that the sample-mean Monte Carlo approaches to evaluating an in-
tegral g(x)dx do not require that the function g(x) is specified. It is only
necessary that the sample from the distribution g(X) can be generated. It is
oftenthe caseinstatisticalapplications,thatg(x)is infactnotspecified,but
the variable g(X) is easily generated.
Consider the confidence interval estimation procedure for variance. It is
wellknownthatthisprocedureissensitivetomilddeparturesfromnormality.
We use Monte Carlo methods to estimate the true confidence level when the
normal theory confidence interval for variance is applied to non-normaldata.
Theclassicalprocedurebasedontheassumptionofnormalityisoutlinedfirst.
Example 6.4 (Confidence interval for variance)
If X
1
,...,Xn is a random sample from a Normal(µ,?2) distribution, n ? 2,
and S2 is the sample variance, then
(n?1)S2
V = ??2(n?1). (6.1)
?2
Aoneside100(1??)%confidenceintervalisgivenby(0,(n?1)S2/?2),where
?
?2 is the ?-quantile of the ?2(n?1) distribution. If the sampled population
?
is normal with variance ?2, then the probability that the confidence interval
contains ?2 is 1??.
The calculation of the 95% upper confidence limit (UCL) for a random
sample size n=20 from a Normal(0,?2 =4) distribution is shown below.
n <- 20
alpha <- .05
x <- rnorm(n, mean=0, sd=2)
UCL <- (n-1) * var(x) / qchisq(alpha, df=n-1)

160 Statistical Computing with R
SeveralrunsproducetheupperconfidencelimitsUCL=6.628,UCL=7.348,
UCL = 9.621,etc. All of these intervals contain ?2 =4. In this example, the
sampled population is normal with ?2 =4, so the confidence level is exactly
(cid:7) (cid:8) (cid:7) (cid:8)
19S2 (n?1)S2
P >4 =P >?2 (n?1) =0.95.
?2 (19) ?2 .05
.05 If the sampling and estimation is repeated a large number of times, approxi-
mately 95% of the intervals based on (6.1) should contain ?2, assuming that
the sampled population is normal with variance ?2. (cid:5)
Empirical confidence level is an estimate of the confidence level obtained
by simulation. For the simulation experiment, repeat the steps above a large
number of times, and compute the proportion of intervals that contain the
target parameter.
Monte Carlo experiment to estimate a confidence level
Suppose that X ? FX is the random variable of interest and that ? is the
target parameter to be estimated.
1. For each replicate, indexed j =1,...,m:
(a) Generate the jth random sample, X
1
(j),...,Xn (j).
(b) Compute the confidence interval Cj for the jth sample.
(c) Compute yj =I(? ?Cj) for the jth sample.
(cid:10)
2. Compute the empirical confidence level y¯=
m
1 m
j=1
yj.
The estimator y¯ is a sample proportion estimating the true confidence level
1 ? ??,(cid:2)so Var(y¯) = (1???)??/m and an estimate of standard error is
s(cid:1)e(y¯)= (1?y¯)y¯/m.
Example 6.5 (MC estimate of confidence level)
Refer to Example 6.4. In this example we have µ = 0, ? = 2, n = 20,
m = 1000 replicates, and ? = 0.05. The sample proportion of intervals that
contain ?2 = 4 is a Monte Carlo estimate of the true confidence level. This
type of simulation can be conveniently implemented by using the replicate
function.
n <- 20
alpha <- .05
UCL <- replicate(1000, expr = {
x <- rnorm(n, mean = 0, sd = 2)
(n-1) * var(x) / qchisq(alpha, df = n-1)
} )

Monte Carlo Methods in Inference 161
#count the number of intervals that contain sigma^2=4
sum(UCL > 4)
#or compute the mean to get the confidence level
> mean(UCL > 4)
[1] 0.956
The result is that 956 intervals satisfied (UCL > 4), so the empirical confi-
dence level is 95.6% in this experiment. The result will vary but should be
close to the theoretical value, 95%. The standard error of the estimate is
(0.95(1?0.95)/1000)1/2= . 0.00689. (cid:5)
R note 6.1 Notice that in the replicatefunction, the lines to be repeatedly
executed are enclosed in braces { }. Alternately, the expression argument
(expr) can be a function call:
calcCI <- function(n, alpha) {
y <- rnorm(n, mean = 0, sd = 2)
return((n-1) * var(y) / qchisq(alpha, df = n-1))
}
UCL <- replicate(1000, expr = calcCI(n = 20, alpha = .05))
The intervalestimation procedure basedon (6.1) for estimating variance is
sensitive to departures from normality, so the true confidence level may be
differentthanthestatedconfidencelevelwhendataarenon-normal. Thetrue
confidence level depends on the cdf of the statistic S2. The confidence level
is the probability that the interval (0,(n?1)S2/?2) contains the true value
?
of the parameter ?2, which is
(cid:7) (cid:8) (cid:7) (cid:8) (cid:7) (cid:8)
(n?1)S2 ?2?2 ?2?2
P >?2 =P S2 > ? =1?G ? ,
?2 n?1 n?1
?
whereG(·)isthe cdfofS2. Ifthesampledpopulationisnon-normal,wehave
the problem of estimating the cdf
(cid:6)
c?
G(t)=P(S2 ?c?)= g(x)dx,
0
whereg(x)isthe(unknown)densityofS2 andc? =?2?2
?
/(n?1).Anapprox-
imate solutioncanbe computedempiricallyusing Mon(cid:22)teCarlointegrationto
estimate G(c?). The estimate of G(t)=P(S2 ?t)= t g(x)dx, is computed
0
by Monte Carlo integration. It is not necessary to have an explicit formula
for g(x), provided that we can sample from the distribution of g(X).
Example 6.6 (Empirical confidence level)
In Example 6.4, what happens if the sampled population is non-normal? For
example,supposethatthesampledpopulationis?2(2),whichhasvariance4,

162 Statistical Computing with R
but is distinctly non-normal. We repeat the simulation, replacing the N(0,4)
samples with ?2(2) samples.
n <- 20
alpha <- .05
UCL <- replicate(1000, expr = {
x <- rchisq(n, df = 2)
(n-1) * var(x) / qchisq(alpha, df = n-1)
} )
> sum(UCL > 4)
[1] 773
> mean(UCL > 4)
[1] 0.773
Inthisexperiment,only773or77.3%oftheintervalscontainedthepopulation
variance, which is far from the 95% coverage under normality. (cid:5)
Remark 6.1 The problems in Examples 6.1– 6.6 are parametric in the sense
that the distribution of the sampled population is specified. The Monte Carlo
approach here is sometimes called parametric bootstrap. The ordinaryboot-
strap discussed in Chapter 7 is a different procedure. In “parametric” boot-
strap,thepseudorandomsamplesaregeneratedfromagivenprobabilitydistri-
bution. In the “ordinary” bootstrap, the samples are generated by resampling
from an observed sample. Bootstrap methods in this book refer to resampling
methods.
Monte Carlo methods for estimation, including several types of bootstrap
confidence interval estimates, are covered in Chapter 7. Bootstrap and jack-
knife methods for estimating the bias and standard error of an estimate are
alsocoveredinChapter7. Theremainderofthischapterfocusesonhypothesis
tests, which are also coveredin Chapter 8.
6.3 Monte Carlo Methods for Hypothesis Tests
Suppose that we wish to test a hypothesis concerning a parameter ? that
lies in a parameter space ?. The hypotheses of interest are
H :? ?? vs H :? ??
0 0 1 1
where ? and ? partition the parameter space ?.
0 1
Two types of error can occur in statistical hypothesis testing. A Type I
erroroccurs if the null hypothesis is rejected when in fact the null hypothesis
is true. A Type II error occurs if the null hypothesis is not rejected when in
fact the null hypothesis is false.

Monte Carlo Methods in Inference 163
Thesignificance level ofatestisdenotedby?,and?isanupperboundon
theprobabilityofTypeIerror. Theprobabilityofrejectingthenullhypothesis
depends on the true value of ?. For a given test procedure, let ?(?) denote
the probability of rejecting H . Then
0
?= sup ?(?).
???0
The probability of Type I error is the conditional probability that the null
hypothesis is rejected given that H is true. Thus, if the test procedure is
0
replicatedalargenumberoftimesundertheconditionsofthenullhypothesis,
the observed Type I error rate should be at most (approximately)?.
If T is the test statistic and T? is the observed value of the test statistic,
then T? is significant if the test decision based on T? is to reject H . The
0
significance probability orp-value isthe smallestpossiblevalue of? suchthat
the observed test statistic would be significant.
6.3.1 Empirical Type I error rate
An empirical Type I error rate can be computed by a Monte Carlo exper-
iment. The test procedure is replicated a large number of times under the
conditions of the null hypothesis. The empirical Type I error rate for the
Monte Carlo experiment is the sample proportionof significant test statistics
among the replicates.
Monte Carlo experiment to assess Type I error rate:
1. For each replicate, indexed by j =1,...,m:
(a) Generate the jth randomsample x
1
(j),...,xn (j) fromthe nulldistri-
bution.
(b) Compute the test statistic Tj from the jth sample.
(c) RecordthetestdecisionIj =1ifH
0
isrejectedatsignificancelevel
? and otherwise Ij =0.
(cid:10)
2. Computetheproportionofsignificanttests
m
1 m
j=1
Ij. Thisproportion
is the observed Type I error rate.
FortheMonteCarloexperimentabove,theparameterestimatedisaproba-
bilityandtheestimate,theobservedTypeIerrorrate,isasampleproportion.
If we denote the observedType I errorrate by pˆ, then an estimate of se(pˆ) is
(cid:21)
pˆ(1?pˆ) 0.5
s(cid:1)e(pˆ)= ? ? .
m m
The procedure is illustrated below with a simple example.

164 Statistical Computing with R
Example 6.7 (Empirical Type I error rate)
Suppose that X ,...,X is a random sample from a N(µ,?2) distribution.
1 20
Test H :µ=500 H :µ>500 at ?=0.05. Under the null hypothesis,
0 1
X ?500
T ? = ? ?t(19),
S/ 20
where t(19) denotes the Student t distribution with 19 degrees of freedom.
Large values of T? support the alternative hypothesis. Use a Monte Carlo
method to compute an empirical probability of Type I error when ? = 100,
and check that it is approximately equal to ?=0.05.
The simulation below illustrates the procedure for the case ? = 100. The
t-testis implementedby t.testinR,andwearebasingthe testdecisionson
the reported p-values returned by t.test.
n <- 20
alpha <- .05
mu0 <- 500
sigma <- 100
m <- 10000 #number of replicates
p <- numeric(m) #storage for p-values
for (j in 1:m) {
x <- rnorm(n, mu0, sigma)
ttest <- t.test(x, alternative = "greater", mu = mu0)
p[j] <- ttest$p.value
}
p.hat <- mean(p < alpha)
se.hat <- sqrt(p.hat * (1 - p.hat) / m)
print(c(p.hat, se.hat))
[1] 0.050600000 0.002191795
TheobservedTypeIerrorrateinthis(cid:2)simulationis0.0506,andthestandard
.
error of the estimate is approximately 0.05×0.95/m = 0.0022. Estimates
of Type I error probability will vary, but should be close to the nominal rate
? = 0.05 because all samples were generated under the null hypothesis from
the assumed model for a t-test (normal distribution). In this experiment the
empirical Type I error rate differs from ? = 0.05 by less than one standard
error.
Theoretically,theprobabilityofrejectingthenullhypothesiswhenµ=500
is exactly ? = 0.05 in this example. The simulation really only investigates
empirically whether the method of computing the p-value in t.test (a nu-
merical algorithm) is consistent with the theoretical value ?=0.05. (cid:5)

Monte Carlo Methods in Inference 165
One of the simplest approaches to testing for univariate normality is the
skewness test. In the following example we investigate whether a test based
on the asymptotic distribution of the skewness statistic achieves the nominal
significance level ? under the null hypothesis of normality.
Example 6.8 (Skewness test of normality)
?
The skewness ? of a random variable X is defined by
1
(cid:2) E[(X ?µX)]3
? = ,
1 ?3
X
?
where µX = E[X] and ?
X
2 = Var(X). (The notation ?
1
is the classical
n?otation for the signed skewne?ss coefficient.) A distribution is sym?metric if
?
1
= 0, positively skewed if ?
1
> 0, and neg?atively skewed if ?
1
< 0.
The sample coefficient of skewness is denoted by b , and defined as
1
(cid:10)
(cid:2)
b = n
1
(cid:10)
n
i=1
(Xi ?X)3
. (6.2)
1 (
n
1 n
i=1
(Xi ?X)2)3/2
?
(Note that b
1
is classical notation?for the signed skewness statistic.) If the
distribution of X is normal, then b is asymptotically normal with mean
1
0 and variance 6/n [59]. Normal distributions are symmetric, and a test
for normal?ity based on skewness rejects the hypothesis of normality for large
values of | b |. The hypotheses are
1
(cid:2) (cid:2)
H : ? =0; H : ? (cid:13)=0,
0 1 1 1
where the sampling distribution of the skewnessstatistic is derivedunder the
assumption of normality. ?
However,the convergenceof b to itslimit distributionis ratherslowand
1
theasymptoticdistributionisnotagoodapproximationforsmalltomoderate
sample sizes.
Assess the Type I error rate for a skew?ness test of normality at ? = 0.05
based on the asymptotic distribution of b for sample sizes n = 10, 20, 30,
1
50, 100, and 500.
The vector of critical values cv for each of the sample sizes n=10, 20, 30,
50,100,and500arecomputedunderthenormallimitdistributionandstored
in cv.
n <- c(10, 20, 30, 50, 100, 500) #sample sizes
cv <- qnorm(.975, 0, sqrt(6/n)) #crit. values for each n
asymptotic critical values:
n 10 20 30 50 100 500
cv 1.5182 1.0735 0.8765 0.6790 0.4801 0.2147

166 Statistical Computing with R
?
Theasymptoticdistributionof b doesnotdependonthe meanandvari-
1
ance of the sampled normal distribution, so the samples can be generated
from the sta?ndard normal distribution. If the sample size is n[i] then H
0
is
rejected if | b |> cv[i].
1
First write a function to compute the sample skewness statistic.
sk <- function(x) {
#computes the sample skewness coeff.
xbar <- mean(x)
m3 <- mean((x - xbar)^3)
m2 <- mean((x - xbar)^2)
return( m3 / m2^1.5 )
}
In the code below, the outer loop varies the sample size n and the inner
loop is the simulation for the current n. In the simulation, the test decisions
are saved as 1 (reject H ) or 0 (do not reject H ) in the vector sktests.
0 0
When the simulation for n=10 ends, the mean of sktests gives the sample
proportionofsignificanttestsforn=10. Thisresultissavedinp.reject[1].
Then the simulation is repeated for n = 20, 30, 50, 100, 500, and saved in
p.reject[2:6].
#n is a vector of sample sizes
#we are doing length(n) different simulations
p.reject <- numeric(length(n)) #to store sim. results
m <- 10000 #num. repl. each sim.
for (i in 1:length(n)) {
sktests <- numeric(m) #test decisions
for (j in 1:m) {
x <- rnorm(n[i])
#test decision is 1 (reject) or 0
sktests[j] <- as.integer(abs(sk(x)) >= cv[i] )
}
p.reject[i] <- mean(sktests) #proportion rejected
}
> p.reject
[1] 0.0129 0.0272 0.0339 0.0415 0.0464 0.0539
The results of the simulation are the empirical estimates of Type I error rate
summarized below.
n 10 20 30 50 100 500
estimate 0.0129 0.0272 0.0339 0.0415 0.0464 0.0539

Monte Carlo Methods in Inference 167
With(cid:2)m = 10000 replicates the standard error of the estimate is approxi-
.
mately 0.05×0.95/m=0.0022.
The results of the simulation?suggest that the asymptotic normal approx-
imation for the distribution of b is not adequate for sample sizes n ? 50,
1
and questionable for sample sizes as large as n=500. For finite samples one
should use
(cid:2) 6(n?2)
Var( b )= ,
1
(n+1)(n+3)
the exact value of the variance [93] (also see [60] or [270]). Repeating the
simulation with
cv <- qnorm(.975, 0, sqrt(6*(n-2) / ((n+1)*(n+3))))
> round(cv, 4)
[1] 1.1355 0.9268 0.7943 0.6398 0.4660 0.2134
produces the simulation results summarized below.
n 10 20 30 50 100 500
estimate 0.0548 0.0515 0.0543 0.0514 0.0511 0.0479
These estimates are closer to the nominal level ? = 0.05. On skewness tests
and other classical tests of normality see [58] or [270]. (cid:5)
6.3.2 Power of a Test
In a test of hypotheses H vs H , a Type II error occurs when H is true,
0 1 1
but H is not rejected. The power of a test is given by the power function
0
? : ? ? [0,1], which is the probability ?(?) of rejecting H given that the
0
true value of the parameteris ?. Thus, for agiven? ?? , the probabilityof
1 1
TypeII erroris1??(? ). Ideally,wewouldpreferatestwithlowprobability
1
of error. Type I error is controlled by the choice of the significance level ?.
LowTypeIIerrorcorrespondstohighpowerunderthealternativehypothesis.
Thus, when comparing test procedures for the same hypotheses at the same
significance level, we are interested in comparing the power of the tests. In
general the comparison is not one problem but many; the power ?(? ) of a
1
test under the alternative hypothesis depends on the particular value of the
alternative ? . For the t-test in Example 6.7, ? = (500,?). In general,
1 1
however, the set ? can be more complicated.
1
If the power function of a test cannot be derived analytically, the power of
a test against a fixed alternative ? ? ? can be estimated by Monte Carlo
1 1
methods. Note that the power function is defined for all ? ? ?, but the
significance level ? controls ?(?)?? for all ? ?? .
0

168 Statistical Computing with R
Monte Carlo experiment to estimate power of a test against a fixed
alternative
1. Select a particular value of the parameter ? ??.
1
2. For each replicate, indexed by j =1,...,m:
(a) Generatethejth randomsamplex
1
(j),...,xn (j) undertheconditions
of the alternative ? =? .
1
(b) Compute the test statistic Tj from the jth sample.
(c) Recordthe testdecision: setIj =1ifH
0
isrejectedatsignificance
level ?, and otherwise set Ij =0.
(cid:10)
3. Compute the proportion of significant tests ?ˆ(?
1
)=
m
1 m
j=1
Ij.
Example 6.9 (Empirical power)
Use simulation to estimate power and plot an empirical power curve for the
t-test in Example 6.7. (For a numericalapproachthat does not involvesimu-
lation, see the remark below.)
Toplotthecurve,weneedtheempiricalpowerforasequenceofalternatives
? along the horizontal axis. Each point corresponds to a Monte Carlo exper-
iment. The outer for loop varies the points ? (mu) and the inner replicate
loop (see R Note 6.1) estimates the power at the current ?.
n <- 20
m <- 1000
mu0 <- 500
sigma <- 100
mu <- c(seq(450, 650, 10)) #alternatives
M <- length(mu)
power <- numeric(M)
for (i in 1:M) {
mu1 <- mu[i]
pvalues <- replicate(m, expr = {
#simulate under alternative mu1
x <- rnorm(n, mean = mu1, sd = sigma)
ttest <- t.test(x,
alternative = "greater", mu = mu0)
ttest$p.value } )
power[i] <- mean(pvalues <= .05)
}
The estimated power ?ˆ(?) values are now stored in the vector power. Next,
plot the empirical power curve, adding vertical error bars at ?ˆ(?)±s(cid:1)e(?ˆ(?))
using the errbar function in the Hmisc package [132].

Monte Carlo Methods in Inference 169
library(Hmisc) #for errbar
plot(mu, power)
abline(v = mu0, lty = 1)
abline(h = .05, lty = 1)
#add standard errors
se <- sqrt(power * (1-power) / m)
errbar(mu, power, yplus = power+se, yminus = power-se,
xlab = bquote(theta))
lines(mu, power, lty=3)
detach(package:Hmisc)
The power curve is shown in Figure 6.1. Note that the empirical power
?ˆ(?) is small when ? is close to ? = 500, and increasing as ? moves farther
0
away from ? , approaching 1 as ? ??. (cid:5)
0
Remark 6.2 The non-central t distribution arises in power calculations for
t-tests. The general non-central (cid:2)t with parameters (?,?) is defined as the
distribution of T(?,?) = (Z +?)/ V/? where Z ? N(0,1) and V ? ?2(?)
are independent.
Suppose X
1
,X
2
,...,Xn is a rand?om sample from a N(µ,?2) distribution,
andthet-statisticT =(X?µ )/(S/ n)is applied totestH :µ=µ . Under
0 0 0
thenullhypothesis, T has thecentralt(n?1)distribution, butifµ(cid:13)=µ ,T has
0
the non-central t distribu?tion with n?1 degrees of freedom and non-centrality
parameter ? = (µ?µ ) n/?. A numerical approach to evaluating the cdf
0
of the non-central t distribution, based on an algorithm of Lenth [175], is
implemented in the R function pt. Also see power.t.test. (cid:5)
Example 6.10 (Power of the skewness test of normality)
TheskewnesstestofnormalitywasdescribedinExample6.8. Inthisexample,
weestimatebysimulationthepoweroftheskewnesstestofnormalityagainsta
contaminatednormal(normalscalemixture)alternativedescribedinExample
6.3. The contaminated normal distribution is denoted by
(1??)N(µ=0,?2 =1)+?N(µ=0,?2 =100), 0???1.
When ? = 0 or ? = 1 the distribution is normal, but the mixture is non-
normal for 0 < ? < 1. We can estimate the power of the skewness test for a
sequence of alternatives indexed by ? and plot a power curve for the power
of the skewness test against this type of alternative. For this experiment, the
significance level is ? = 0.1 and the sample size is n = 30. The skewness
statistic sk is implemented in Example 6.8.

170 Statistical Computing with R
450 500 550 600 650
0.1
8.0
6.0
4.0
2.0
0.0
?
rewop
FIGURE6.1: Empiricalpower?ˆ(?)±s(cid:1)e(?ˆ(?))forthet-testofH :? =500
0
vs H :? >500 in Example 6.9.
1
alpha <- .1
n <- 30
m <- 2500
epsilon <- c(seq(0, .15, .01), seq(.15, 1, .05))
N <- length(epsilon)
pwr <- numeric(N)
#critical value for the skewness test
cv <- qnorm(1-alpha/2, 0, sqrt(6*(n-2) / ((n+1)*(n+3))))
for (j in 1:N) { #for each epsilon
e <- epsilon[j]
sktests <- numeric(m)
for (i in 1:m) { #for each replicate
sigma <- sample(c(1, 10), replace = TRUE,
size = n, prob = c(1-e, e))
x <- rnorm(n, 0, sigma)
sktests[i] <- as.integer(abs(sk(x)) >= cv)
}
pwr[j] <- mean(sktests)
}
#plot power vs epsilon
plot(epsilon, pwr, type = "b",
xlab = bquote(epsilon), ylim = c(0,1))
abline(h = .1, lty = 3)
se <- sqrt(pwr * (1-pwr) / m) #add standard errors
lines(epsilon, pwr+se, lty = 3)
lines(epsilon, pwr-se, lty = 3)

Monte Carlo Methods in Inference 171
0.0 0.2 0.4 0.6 0.8 1.0
0.1
8.0
6.0
4.0
2.0
0.0
?
rwp
FIGURE 6.2: Empiricalpower?ˆ(?)±s(cid:1)e(?ˆ(?))fortheskewnesstestofnor-
mality against ?-contaminated normal scale mixture alternative in Example
6.10.
The empiricalpowercurve is shownin Figure 6.2. Note that the power curve
crossesthehorizontallinecorrespondingto?=0.10atbothendpoints,?=0
and ? = 1 where the alternative is normally distributed. For 0 < ? < 1 the
empirical power of the test is greater than 0.10 and highest when ? is about
0.15. (cid:5)
6.3.3 Power comparisons
Monte Carlo methods are often applied to compare the performance of
different test procedures. A skewness test of normality was introduced in
Example 6.8. There are many tests of normality in the literature (see [58]
and [270]). In the following example three tests of univariate normality are
compared.
Example 6.11 (Power comparison of tests of normality)
Compare the empirical power of the skewness test of univariate normality
with the Shapiro-Wilk [248] test. Also compare the power of the energy test
[263], which is based on distances between sample elements.
Let N denote the family of univariate normal distributions. Then the test
hypotheses are
H :F ?N H :F ?/ N.
0 X 1 X

172 Statistical Computing with R
TheShapiro-Wilktestisbasedontheregressionofthe sampleorderstatis-
ticsontheirexpectedvaluesundernormality,soitfallsinthegeneralcategory
of tests based on regression and correlation. The approximate critical values
of the statistic are determined by a transformationof the statistic W to nor-
mality [235, 236, 237] for sample sizes 7 ? n ? 2000. The Shapiro-Wilk test
is implemented by the R function shapiro.test.
The energy testis basedonanenergydistancebetweenthe sampleddistri-
bution andnormaldistribution, so largevalues ofthe statistic are significant.
The energy test is a test of multivariate normality [263], so the test consid-
ered here is the special case d = 1. As a test of univariate normality, energy
performs very much like the Anderson-Darling test [9]. The energy statistic
for testing normality is
? ?
(cid:5)n (cid:5)n
Qn =n ?2 E(cid:16)xi ?X(cid:16)?E(cid:16)X ?X (cid:5)(cid:16)? 1 (cid:16)xi ?xj (cid:16)? , (6.3)
n n2
i=1 i,j=1
whereX,X(cid:5) areiid. LargevaluesofQn aresignificant. Intheunivariatecase,
the following computing formula is equivalent:
+ ,
(cid:5)n (cid:5)n
2 2 2
Qn =n
n
(2Yi ?(Yi)+2?(Yi))? ?
?
?
n2
(2k?1?n)Y (k) ,
i=1 k=1
(6.4)
where Yi = Xi ? ? X µX, Y (k) is the kth order statistic of the standardized sample,
? is the standard normal cdf and ? is the standard normal density. If the
parameters are unknown, substitute the sample mean and sample standard
deviation to to compute Y
1
,...,Yn. A computing formula for the multivari-
ate case is given in [263]. The energy test for univariate and multivariate
normality is implemented in mvnorm.etestin the energy package [226].
The skewness test of normality was introduced in Examples 6.8 and 6.10.
The sample skewness function sk is given in Example 6.8 on page 166.
For this comparison we set significance level ? = 0.1. The example below
comparesthepowerofthetestsagainstthecontaminatednormalalternatives
described in Example 6.3. The alternative is the normal mixture denoted by
(1??)N(µ=0,?2 =1)+?N(µ=0,?2 =100), 0???1.
When?=0or?=1thedistributionisnormal,andinthiscasetheempirical
Type I error rate should be controlled at approximately the nominal rate
?=0.1. If 0<?<1 the distributions are non-normal, and we are interested
in comparing the empirical power of the tests against these alternatives.

Monte Carlo Methods in Inference 173
# initialize input and output
library(energy)
alpha <- .1
n <- 30
m <- 2500 #try smaller m for a trial run
epsilon <- .1
test1 <- test2 <- test3 <- numeric(m)
#critical value for the skewness test
cv <- qnorm(1-alpha/2, 0, sqrt(6*(n-2) / ((n+1)*(n+3))))
# estimate power
for (j in 1:m) {
e <- epsilon
sigma <- sample(c(1, 10), replace = TRUE,
size = n, prob = c(1-e, e))
x <- rnorm(n, 0, sigma)
test1[j] <- as.integer(abs(sk(x)) >= cv)
test2[j] <- as.integer(
shapiro.test(x)$p.value <= alpha)
test3[j] <- as.integer(
mvnorm.etest(x, R=200)$p.value <= alpha)
}
print(c(epsilon, mean(test1), mean(test2), mean(test3)))
detach(package:energy)
The simulation was repeated for several choices of ? and results saved in a
matrix sim. Simulation results for n = 30 are summarized in Table 6.2 and
in Figure 6.3. The plot is obtained as follows.
# plot the empirical estimates of power
plot(sim[,1], sim[,2], ylim = c(0, 1), type = "l",
xlab = bquote(epsilon), ylab = "power")
lines(sim[,1], sim[,3], lty = 2)
lines(sim[,1], sim[,4], lty = 4)
abline(h = alpha, lty = 3)
legend("topright", 1, c("skewness", "S-W", "energy"),
lty = c(1,2,4), inset = .02)
?
Standard error of the estimates is at most 0.5/ m = 0.01. Estimates for
empirical Type I error rate correspond to ? = 0 and ? = 1. All tests achieve
approximately the nominal significance level ? = 0.10 within one standard
error. The tests are at approximately the same significance level, so it is
meaningful to compare the results for power.

174 Statistical Computing with R
The simulation results suggest that the Shapiro-Wilk and energy tests are
about equally powerful against this type of alternative when n = 30 and
? < 0.5. Both have higher power than the skewness test overall and energy
appears to have highest power for 0.5???0.8.
(cid:5)
6.4 Application: “Count Five” Test for Equal Variance
TheexamplesinthissectionillustratetheMonteCarlomethodforasimple
two sample test of equal variance.
The two sample “Count Five” test for equality of variance introduced by
McGrath and Yeh [193] counts the number of extreme points of each sample
relative to the range of the other sample. Suppose the means of the two
samples are equal and the sample sizes are equal. An observation in one
sample isconsideredextreme ifitis notwithinthe rangeofthe othersample.
If either sample has five or more extreme points, the hypothesis of equal
variance is rejected.
Example 6.12 (Count Five test statistic)
The computation ofthe test statistic is illustrated with a numericalexample.
Compare the side-by-side boxplots in Figure 6.4 and observe that there are
some extreme points in each sample with respect to the other sample.
x1 <- rnorm(20, 0, sd = 1)
x2 <- rnorm(20, 0, sd = 1.5)
y <- c(x1, x2)
group <- rep(1:2, each = length(x1))
boxplot(y ~ group, boxwex = .3, xlim = c(.5, 2.5), main = "")
points(group, y)
# now identify the extreme points
> range(x1)
[1] -2.782576 1.728505
> range(x2)
[1] -1.598917 3.710319

|     |     | Monte | Carlo | Methods | in Inference |     |     | 175 |
| --- | --- | ----- | ----- | ------- | ------------ | --- | --- | --- |
0.1
skewness
S?W
energy
8.0
6.0
rewop
4.0
2.0
0.0
|     |     | 0.0 | 0.2 | 0.4 | 0.6 | 0.8 | 1.0 |     |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
?
| FIGURE  | 6.3:        | Empiricalpowerofthree |            |              | tests       | of normalityagainsta |          | conta- |
| ------- | ----------- | --------------------- | ---------- | ------------ | ----------- | -------------------- | -------- | ------ |
| minated | normal      | alternative           | in Example |              | 6.11 (n=30, | ?=0.1,               | se?0.01) |        |
|         | TABLE       | 6.2:                  | Empirical  |              | Power       | of Three Tests       | of       |        |
|         | Normality   | against               | a          | Contaminated |             | Normal               |          |        |
|         | Alternative | in                    | Example    | 6.11         | (n=30,      | ?=0.1,               |          |        |
se?0.01)
|     |     | ? skewness  | test | Shapiro-Wilk |        | energy | test |     |
| --- | --- | ----------- | ---- | ------------ | ------ | ------ | ---- | --- |
|     |     | 0.00 0.0984 |      |              | 0.1076 | 0.1064 |      |     |
|     |     | 0.05 0.6484 |      |              | 0.6704 | 0.6560 |      |     |
|     |     | 0.10 0.8172 |      |              | 0.9008 | 0.8896 |      |     |
|     |     | 0.15 0.8236 |      |              | 0.9644 | 0.9624 |      |     |
|     |     | 0.20 0.7816 |      |              | 0.9816 | 0.9800 |      |     |
|     |     | 0.25 0.7444 |      |              | 0.9940 | 0.9924 |      |     |
|     |     | 0.30 0.6724 |      |              | 0.9960 | 0.9980 |      |     |
|     |     | 0.40 0.5672 |      |              | 0.9828 | 0.9964 |      |     |
|     |     | 0.50 0.4424 |      |              | 0.9112 | 0.9724 |      |     |
|     |     | 0.60 0.3368 |      |              | 0.7380 | 0.8868 |      |     |
|     |     | 0.70 0.2532 |      |              | 0.4900 | 0.6596 |      |     |
|     |     | 0.80 0.1980 |      |              | 0.2856 | 0.3932 |      |     |
|     |     | 0.90 0.1296 |      |              | 0.1416 | 0.1724 |      |     |
|     |     | 1.00 0.0992 |      |              | 0.0964 | 0.0980 |      |     |

176 Statistical Computing with R
1 2
3
2
1
0
1?
2?
3?
FIGURE6.4: BoxplotsshowingextremepointsfortheCountFivestatistic
in Example 6.12.
> i <- which(x1 < min(x2))
> j <- which(x2 > max(x1))
> x1[i]
[1] -2.782576
> x2[j]
[1] 2.035521 1.809902 3.710319
TheCountFivestatisticisthemaximumnumberofextremepoints,max(1,3),
so the Count Five test will not reject the hypothesis of equal variance. Note
that we only need the number of extreme points, and the extreme count can
be determined without reference to a boxplot as follows.
out1 <- sum(x1 > max(x2)) + sum(x1 < min(x2))
out2 <- sum(x2 > max(x1)) + sum(x2 < min(x1))
> max(c(out1, out2))
[1] 3
(cid:5)
Example 6.13 (Count Five test statistic, cont.)
Consider the case of two independent random samples from the same normal
distribution. Estimate the sampling distribution of the maximum number of
extreme points, and find the 0.80, 0.90, and 0.95 quantiles of the sampling
distribution.

Monte Carlo Methods in Inference 177
Thefunctionmaxoutbelowcountsthemaximumnumberofextremepoints
of each sample with respect to the range of the other sample. The sampling
distributionoftheextremecountstatisticcanbeestimatedbyaMonteCarlo
experiment.
maxout <- function(x, y) {
X <- x - mean(x)
Y <- y - mean(y)
outx <- sum(X > max(Y)) + sum(X < min(Y))
outy <- sum(Y > max(X)) + sum(Y < min(X))
return(max(c(outx, outy)))
}
n1 <- n2 <- 20
mu1 <- mu2 <- 0
sigma1 <- sigma2 <- 1
m <- 1000
# generate samples under H0
stat <- replicate(m, expr={
x <- rnorm(n1, mu1, sigma1)
y <- rnorm(n2, mu2, sigma2)
maxout(x, y)
})
print(cumsum(table(stat)) / m)
print(quantile(stat, c(.8, .9, .95)))
The “Count Five” test criterion looks reasonable for normal distributions.
The empirical cdf and quantiles are
1 2 3 4 5 6 7 8 9 10 11
0.149 0.512 0.748 0.871 0.945 0.974 0.986 0.990 0.996 0.999 1.000
80% 90% 95%
4 5 6
Notice that the quantile function gives 6 as the 0.95 quantile. However, if
?=0.05isthedesiredsignificancelevel,thecriticalvalue5appearstobethe
best choice. The quantilefunction is not always the best way to estimate a
critical value. If quantileis used, compare the resultto the empiricalcdf. (cid:5)
The “Count Five” test criterion can be applied for independent random
sampleswhenthe randomvariablesaresimilarlydistributedandsamplesizes
areequal. (RandomvariablesX andY arecalledsimilarlydistributed ifY has
the same distribution as (X ?a)/b where a and b> 0 are constants.) When
thedataarecenteredbytheirrespectivepopulationmeans,McGrathandYeh

178 Statistical Computing with R
[193]showthattheCountFivetestonthecentereddatahassignificancelevel
at most 0.0625.
Inpractice,the populationsmeans aregenerallyunknownandeachsample
would be centered by subtracting its sample mean. Also, the sample sizes
may be unequal.
Example 6.14 (Count Five test)
Use Monte Carlo methods to estimate the significance level of the test when
each sample is centered by subtracting its sample mean. Here again we con-
sider normal distributions. The function count5test returns the value 1
(reject H ) or 0 (do not reject H ).
0 0
count5test <- function(x, y) {
X <- x - mean(x)
Y <- y - mean(y)
outx <- sum(X > max(Y)) + sum(X < min(Y))
outy <- sum(Y > max(X)) + sum(Y < min(X))
# return 1 (reject) or 0 (do not reject H0)
return(as.integer(max(c(outx, outy)) > 5))
}
n1 <- n2 <- 20
mu1 <- mu2 <- 0
sigma1 <- sigma2 <- 1
m <- 10000
tests <- replicate(m, expr = {
x <- rnorm(n1, mu1, sigma1)
y <- rnorm(n2, mu2, sigma2)
x <- x - mean(x) #centered by sample mean
y <- y - mean(y)
count5test(x, y)
} )
alphahat <- mean(tests)
> print(alphahat)
[1] 0.0565
If the samples are centered by the population mean, we should expect an
empirical Type I error rate of about 0.055, from our previous simulation to
estimate the quantiles ofthe maxoutstatistic. In the simulation, eachsample
wascenteredbysubtractingthe samplemean, andthe empiricalType I error
.
rate was 0.0565 (se =0.0022). (cid:5)

Monte Carlo Methods in Inference 179
Example 6.15 (Count Five test, cont.)
Repeatingthepreviousexample,weareestimatingtheempiricalTypeIerror
rate when sample sizes differ and the “Count Five” test criterion is applied.
Each sample is centered by subtracting the sample mean.
n1 <- 20
n2 <- 30
mu1 <- mu2 <- 0
sigma1 <- sigma2 <- 1
m <- 10000
alphahat <- mean(replicate(m, expr={
x <- rnorm(n1, mu1, sigma1)
y <- rnorm(n2, mu2, sigma2)
x <- x - mean(x) #centered by sample mean
y <- y - mean(y)
count5test(x, y)
}))
print(alphahat)
[1] 0.1064
The simulation result suggests that the “Count Five” criterion does not nec-
essarilycontrolTypeIerrorat??0.0625whenthesamplesizesareunequal.
Repeatingthesimulationabovewithn =20andn =50,theempiricalType
1 2
I errorrate was0.2934. See [193]for a method to adjust the test criterionfor
unequal sample sizes. (cid:5)
Example 6.16 (Count Five, cont.)
UseMonteCarlomethodstoestimatethepoweroftheCountFivetest,where
the sampled distributions are N(µ = 0,?2 = 1), N(µ = 0,?2 = 1.52), and
1 1 2 2
the sample sizes are n =n =20.
1 2
# generate samples under H1 to estimate power
sigma1 <- 1
sigma2 <- 1.5
power <- mean(replicate(m, expr={
x <- rnorm(20, 0, sigma1)
y <- rnorm(20, 0, sigma2)
count5test(x, y)
}))

180 Statistical Computing with R
> print(power)
[1] 0.3129
Theempiricalpowerofthetestis0.3129(se?0.005)againstthealternative
(? = 1, ? = 1.5) with n = n = 20. See [193] for power comparisons with
1 2 1 2
other tests for equal variance and applications. (cid:5)
Exercises
6.1 Estimate the MSE of the level k trimmed means for random samples of size
20 generated from a standard Cauchy distribution. (The target parameter ?
is the center or median; the expected value does not exist.) Summarize the
estimates of MSE in a table for k =1,2,...,9.
6.2 Plot the empirical power curve for the t-test in Example 6.9, changing the
alternative hypothesis to H : µ (cid:13)= 500, and keeping the significance level
1
?=0.05.
6.3 Plot the power curves for the t-test in Example 6.9 for sample sizes 10, 20,
30,40,and50,butomitthe standarderrorbars. Plotthe curvesonthesame
graph, each in a different color or different line type, and include a legend.
Comment on the relation between power and sample size.
6.4 Suppose that X
1
,...,Xn are a random sample from a from a lognormal dis-
tribution with unknown parameters. Construct a 95% confidence interval for
the parameter µ. Use a Monte Carlo method to obtainan empirical estimate
of the confidence level.
6.5 Suppose a 95% symmetric t-interval is applied to estimate a mean, but the
sampledataarenon-normal. Thentheprobabilitythattheconfidenceinterval
coversthemeanisnotnecessarilyequalto0.95. UseaMonteCarloexperiment
to estimate the coverage probability of the t-interval for random samples of
?2(2) data with sample size n=20. Compareyour t-intervalresults with the
simulation results in Example 6.4. (The t-interval should be more robust to
departures from normality than the interval for variance.)
?
6.6 Estimatethe 0.025,0.05,0.95,and0.975quantilesofthe skewness b under
1
normality by a Monte Carlo experiment. Compute the standard error of the
estimates from (2.14) using the normal approximation for the density (with
exact variance formula). Compare t?he estimated quantiles with the quantiles
of the large sample approximation b ?N(0,6/n).
1
6.7 Estimate the power of the skewness test of normality against symmetric
Beta(?,?)distributionsandcommentontheresults. Aretheresultsdifferent
for heavy-tailed symmetric alternatives such as t(?)?

Monte Carlo Methods in Inference 181
6.8 Refer to Example 6.16. Repeat the simulation, but also compute the F test
.
of equal variance, at significance level ?ˆ = 0.055. Compare the power of the
CountFivetestandF testforsmall,medium,andlargesamplesizes. (Recall
that the F test is not applicable for non-normal distributions.)
6.9 LetX be anon-negativerandomvariablewithµ=E[X]<?. Forarandom
sample x
1
,...,xn from the distribution of X, the Gini ratio is defined by
(cid:5)n (cid:5)n
1
G= |xi ?xj |.
2n2µ
j=1i=1
The Gini ratio is applied in economics to measure inequality in income dis-
tribution (see e.g. [163]). Note that G can be written in terms of the order
statistics x (i) as
(cid:5)n
1
G=
n2µ
(2i?n?1)x (i) .
i=1
Ifthemeanisunknown,letGˆbethestatisticGwithµreplacedbyx¯. Estimate
by simulation the mean, median and deciles of Gˆ if X is standard lognormal.
Repeat the procedure for the uniform distribution and Bernoulli(0.1). Also
construct density histograms of the replicates in each case.
6.10 Constructanapproximate95%confidenceintervalfortheGiniratio? =E[G]
if X is lognormal with unknown parameters. Assess the coverage rate of the
estimation procedure with a Monte Carlo experiment.
Projects
6.A Use Monte Carlo simulation to investigate whether the empirical Type I er-
ror rate of the t-test is approximately equal to the nominal significance level
?, when the sampled population is non-normal. The t-test is robust to mild
departures fromnormality. Discuss the simulationresults for the caseswhere
the sampled population is (i) ?2(1), (ii) Uniform(0,2), and (iii) Exponen-
tial(rate=1). In each case, test H : µ = µ vs H : µ (cid:13)= µ , where µ is the
0 0 0 0 0
mean of ?2(1), Uniform(0,2), and Exponential(1), respectively.
6.B Tests for associationbased on Pearsonproduct moment correlation ?, Spear-
man’s rank correlation coefficient ?s, or Kendall’s coefficient ?, are imple-
mented in cor.test. Show (empirically) that the nonparametric tests based
on ?s or ? are less powerful than the correlation test when the sampled dis-
tribution is bivariate normal. Find an example of an alternative (a bivariate
distribution (X,Y) such that X and Y are dependent) such that at least one
of the nonparametric tests have better empirical power than the correlation
test against this alternative.

182 Statistical Computing with R
6.C Repeat Examples 6.8 and 6.10 for Mardia’s multivariate skewness test. Mar-
dia [187] proposed tests of multivariate normality based on multivariate gen-
eralizations of skewness and kurtosis. If X and Y are iid, the multivariate
population skewness ? 1,d is defined by Mardia as
) *
? 1,d =E (X ?µ) T ? ?1(Y ?µ) 3 .
Under normality, ? 1,d =0. The multivariate skewness statistic is
(cid:5)n
b 1,d =
n
1
2
((Xi ?X¯) T ? (cid:1)?1(Xj ?X¯))3, (6.5)
i,j=1
where ?ˆ is the maximum likelihood estimator of covariance. Large values of
b 1,d aresignificant. The asymptotic distribution ofnb 1,d/6 is chisquaredwith
d(d+1)(d+2)/6 degrees of freedom.
6.D RepeatExample6.11formultivariatetests ofnormality. Mardia[187]defines
multivariate kurtosis as
) *
? 2,d =E (X ?µ) T ? ?1(X ?µ) 2 .
For d-dimensionalmultivariate normaldistributions the kurtosiscoefficientis
? 2,d =d(d+2). The multivariate kurtosis statistic is
(cid:5)n
b 2,d = 1 ((Xi ?X¯) T ? (cid:1)?1(Xi ?X¯))2. (6.6)
n
i=1
The large sample test of multivariate normality based on b 2,d rejects the null
hypothesis at significance level ? if
(cid:29) (cid:29)
(cid:29) (cid:29)
(cid:29) (cid:29) b (cid:2)2,d ?d(d+2)(cid:29) (cid:29)?? ?1(1??/2).
(cid:29) (cid:29)
8d(d+2)/n
However,b 2,d convergesveryslowlytothenormallimitingdistribution. Com-
paretheempiricalpowerofMardia’sskewnessandkurtosistestsofmultivari-
ate normality with the energy test of multivariate normality mvnorm.etest
(energy)(6.3) [226, 263]. Consider multivariate normal location mixture al-
ternativeswherethetwosamplesaregeneratedfrommlbench.twonorminthe
mlbench package [174].

Chapter 7
Bootstrap and Jackknife
7.1 The Bootstrap
The bootstrap was introduced in 1979 by Efron [80], with further develop-
ments in 1981 [82, 81], 1982 [83], and numerous other publications including
the monograph of Efron and Tibshirani [84]. Chernick [45] has an extensive
bibliography. Davison and Hinkley [63] is a comprehensive reference with
many applications. Also see Barbe and Bertail [19], Shao and Tu [247], and
Mammen [186].
BootstrapmethodsareaclassofnonparametricMonteCarlomethodsthat
estimatethedistributionofapopulationbyresampling. Resamplingmethods
treat an observed sample as a finite population, and random samples are
generated(resampled)fromittoestimatepopulationcharacteristicsandmake
inferences about the sampled population. Bootstrap methods are often used
when the distribution of the target population is not specified; the sample is
the only information available.
The term “bootstrap” can refer to nonparametric bootstrap or parametric
bootstrap. Monte Carlo methods that involvesampling from a fully specified
probability distribution, such as methods of Chapter 6 are sometimes called
parametricbootstrap. Nonparametricbootstrapisthesubjectofthischapter.
In nonparametric bootstrap, the distribution is not specified.
The distribution of the finite population represented by the sample can be
regardedasapseudo-populationwithsimilarcharacteristicsasthetruepopu-
lation. Byrepeatedlygeneratingrandomsamplesfromthispseudo-population
(resampling),the samplingdistributionofastatistic canbe estimated. Prop-
erties of an estimator such as bias or standard error can be estimated by
resampling.
Bootstrap estimates of a sampling distribution are analogous to the idea
of density estimation. We construct a histogram of a sample to obtain an
estimateoftheshapeofthedensityfunction. Thehistogramisnotthedensity,
but in a nonparametric problem, can be viewed as a reasonable estimate of
the density. We have methods to generate random samples from completely
specified densities; bootstrap generates random samples from the empirical
distribution of the sample.
183

184 Statistical Computing with R
Suppose that x=(x
1
,...,xn) is an observedrandomsample from a distri-
bution with cdf F(x). If X? is selected at random from x, then
1
?
P(X =xi)= , i=1,...,n.
n
ResamplinggeneratesarandomsampleX?,...,X? bysamplingwithreplace-
1 n
ment from x. The random variables X? are iid, uniformly distributed on the
i
set {x
1
,...,xn }.
The empirical distribution function (ecdf) Fn(x) is an estimator of F(x).
It can be shown that Fn(x) is a sufficient statistic for F(x); that is, all the
information about F(x) that is contained in the sample is also contained
in Fn(x). Moreover, Fn(x) is itself the distribution function of a random
variable; namely the randomvariable that is uniformly distributed on the set
{x
1
,...,xn }. Hencethe empiricalcdfFn isthe cdfofX?. Thusinbootstrap,
therearetwoapproximations. TheecdfFn isanapproximationtothecdfFX.
The ecdf F
m
? of the bootstrap replicates is an approximation to the ecdf Fn.
Resampling from the sample x is equivalent to generating random samples
from the distribution Fn(x). The two approximations can be represented by
the diagram
F ?X ?Fn
Fn ?X ? ?F
n
? .
To generate a bootstrap random sample by resampling x, generate n ran-
dom integers {i
1
,...,in } uniformly distributed on {1,...,n} and select the
bootstrap sample x? =(xi1 ,...,xin ).
Suppose ? is the parameter of interest (? could be a vector), and ?ˆ is an
estimatorof?. Thenthebootstrapestimateofthedistributionof?ˆisobtained
as follows.
1. For each bootstrap replicate, indexed b=1,...,B:
(a) Generate sample x?(b) =x?,...,x? by sampling with replacement
1 n
from the observed sample x
1
,...,xn.
(b) Compute the bth replicate ?ˆ(b) from the bth bootstrap sample.
2. ThebootstrapestimateofF (·)istheempiricaldistributionoftherepli-
?ˆ
cates ?ˆ(1),...,?ˆ(B).
The bootstrap is applied to estimate the standard error and the bias of an
estimatorinthefollowingsections. Firstletusseeanexampletoillustratethe
relationbetween the ecdf Fn and the distribution of the bootstrap replicates.

Bootstrap and Jackknife 185
Example 7.1 (Fn and bootstrap samples)
Suppose that we have observed the sample
x={2,2,1,1,5,4,4,3,1,2}.
Resampling from x we select 1, 2, 3, 4, or 5 with probabilities 0.3, 0.3, 0.1,
0.2, and 0.1 respectively, so the cdf F ? of a randomly selected replicate is
X
exactly the ecdf Fn(x):
?
??????? 0
0
,
.3,
x
1?
<
x
1;
<2;
0.6, 2?x<3;
F
X
?(x)=Fn(x)=
??????? 0
0
.
.
7
9
,
,
3
4
?
?
x
x
<
<
4
5
;
;
1, x?5.
Note that if Fn is not close to FX then the distribution of the replicates will
notbeclosetoFX. ThesamplexaboveisactuallyasamplefromaPoisson(2)
distribution. Resamplingfromxalargenumberofreplicatesproducesagood
estimateofFn butnotagoodestimateofFX,becauseregardlessofhowmany
replicates are drawn, the bootstrap samples will never include 0. (cid:5)
7.1.1 Bootstrap Estimation of Standard Error
The bootstrap estimate of standard error of an estimator ?ˆ is the sample
standard deviation of the bootstrap replicates ?ˆ(1),...,?ˆ(B).
.
/
/ (cid:5)B
s(cid:1)e(?ˆ? )= 0 1 (?ˆ(b)??ˆ?)2, (7.1)
B?1
b=1
(cid:10)
where ?ˆ? = 1 B ?ˆ(b) [84, (6.6)].
B b=1
According to Efron and Tibshirani [84, p. 52], the number of replicates
needed for good estimates of standard error is not large; B = 50 is usually
largeenough,andrarelyisB >200necessary. (MuchlargerB willbe needed
for confidence interval estimation.)
Example 7.2 (Bootstrap estimate of standard error)
Thelawschooldatasetlawinthebootstrap[271]packageisfromEfronand
Tibshirani [84]. The data frame contains LSAT (average score on law school
admission test score) and GPA (average undergraduate grade-point average)
for 15 law schools.
LSAT 576 635 558 578 666 580 555 661 651 605 653 575 545 572 594
GPA 339 330 281 303 344 307 300 343 336 313 312 274 276 288 296

186 Statistical Computing with R
Thisdatasetisarandomsamplefromtheuniverseof82lawschoolsinlaw82
(bootstrap). Estimate the correlation between LSAT and GPA scores, and
compute the bootstrap estimate of the standard error of the sample correla-
tion.
1. For each bootstrap replicate, indexed b=1,...,B:
(a) Generate sample x?(b) =x?,...,x? by sampling with replacement
1 n
from the observed sample x
1
,...,xn.
(b) Computethebthreplicate?ˆ(b)fromthebthbootstrapsample,where
?ˆis the sample correlation R between (LSAT, GPA).
2. Thebootstrapestimateofse(R)isthesamplestandarddeviationofthe
replicates ?ˆ(1),...,?ˆ(B) =R(1),...,R(B).
library(bootstrap) #for the law data
print(cor(law$LSAT, law$GPA))
[1] 0.7763745
print(cor(law82$LSAT, law82$GPA))
[1] 0.7599979
The sample correlation is R = 0.7763745. The correlation for the universe
of 82 law schools is R = 0.7599979. Use bootstrap to estimate the standard
error of the correlation statistic computed from the sample of scores in law.
#set up the bootstrap
B <- 200 #number of replicates
n <- nrow(law) #sample size
R <- numeric(B) #storage for replicates
#bootstrap estimate of standard error of R
for (b in 1:B) {
#randomly select the indices
i <- sample(1:n, size = n, replace = TRUE)
LSAT <- law$LSAT[i] #i is a vector of indices
GPA <- law$GPA[i]
R[b] <- cor(LSAT, GPA)
}
#output
> print(se.R <- sd(R))
[1] 0.1358393
> hist(R, prob = TRUE)
The bootstrap estimate of se(R) is 0.1358393. The normal theory estimate
for standard error of R is 0.115. The jackknife-after-bootstrap method of

Bootstrap and Jackknife 187
estimatings(cid:1)e(s(cid:1)e(?ˆ))iscoveredinSection7.3. Thehistogramofthereplicates
of R is shown in Figure 7.1. (cid:5)
In the next example, the boot function in recommended packageboot [34]
is applied to run the bootstrap. See Appendix B.1 for a note about how to
write the function for the statisticargument in boot.
Example 7.3 (Bootstrap estimate of standard error: boot function)
Example 7.2 is repeated, using the boot function in boot. First, write a
function that returns ?ˆ(b), where the first argument to the function is the
sample data, and the second argument is the vector {i
1
,...,in } of indices. If
the data is x and the vector of indices is i, we need x[i,1] to extract the
firstresampledvariable,andx[i,2]toextractthesecondresampledvariable.
The code and output is shown below.
r <- function(x, i) {
#want correlation of columns 1 and 2
cor(x[i,1], x[i,2])
}
The printed summary of output from the boot function is obtained by the
command boot or the result can be saved in an object for further analysis.
Here we save the result in obj and print the summary.
library(boot) #for boot function
> obj <- boot(data = law, statistic = r, R = 2000)
> obj
ORDINARY NONPARAMETRIC BOOTSTRAP
Call: boot(data = law, statistic = r, R = 2000)
Bootstrap Statistics :
original bias std. error
t1* 0.7763745 -0.004795305 0.1303343
Theobservedvalue?ˆofthecorrelationstatisticislabeledt1*. Thebootstrap
.
estimate of standard error of the estimate is s(cid:1)e(?ˆ) = 0.13, based on 2000
replicates. To compare with formula (7.1), extract the replicates in $t.
> y <- obj$t
> sd(y)
[1] 0.1303343
(cid:5)

188 Statistical Computing with R
R note 7.1 The syntax and options for the boot (boot) function and the
bootstrap (bootstrap) function are different. Note that the bootstrap
package [271] is a collection of functions and data for the book by Efron and
Tibshirani [84], and the boot package [34] is a collection of functions and
data for the book by Davison and Hinkley [63].
Histogram of R
R
ytisneD
0.2 0.4 0.6 0.8 1.0
3
2
1
0
FIGURE 7.1: Bootstrap replicates for law school data in Example 7.2.
7.1.2 Bootstrap Estimation of Bias
If ?ˆis an unbiased estimator of ?, E[?ˆ]=?. The bias of an estimator ?ˆfor
? is
bias(?ˆ)=E[?ˆ??]=E[?ˆ]??.
Thus, every statistic is an unbiased estimator of its expected value, and in
particular, the sample mean of a random sample is an unbiased estimator
of the mean of the distribution. An example of a biased estimator is the
maximum likelihood estimator of variance, ?ˆ2 =
n
1?n
i=1
(Xi ?X)2, which has
expected value (1 ? 1/n)?2. Thus, ?ˆ2 underestimates ?2, and the bias is
??2/n.
The bootstrap estimation of bias uses the bootstrap replicates of ?ˆto esti-
matethesamplingdistributionof?ˆ. Forthefinitepopulationx=(x
1
,...,xn),
theparameteris?ˆ(x)andthereareB independentandidenticallydistributed
estimators ?ˆ(b). The sample mean of the replicates {?ˆ(b)} is unbiased for its
expected value E[?ˆ?], so the bootstrap estimate of bias is
b $ ias(?ˆ)=?ˆ???ˆ, (7.2)
(cid:10)
where ?ˆ? = 1 B ?ˆ(b), and ?ˆ = ?ˆ(x) is the estimate computed from the
B b=1
original observed sample. (In bootstrap Fn is sampled in place of FX, so

Bootstrap and Jackknife 189
we replace ? with ?ˆ to estimate the bias.) Positive bias indicates that ?ˆ on
average tends to overestimate ?.
Example 7.4 (Boostrap estimate of bias)
In the law data of Example 7.2, compute the bootstrap estimate of bias in
the sample correlation.
#sample estimate for n=15
theta.hat <- cor(law$LSAT, law$GPA)
#bootstrap estimate of bias
B <- 2000 #larger for estimating bias
n <- nrow(law)
theta.b <- numeric(B)
for (b in 1:B) {
i <- sample(1:n, size = n, replace = TRUE)
LSAT <- law$LSAT[i]
GPA <- law$GPA[i]
theta.b[b] <- cor(LSAT, GPA)
}
bias <- mean(theta.b - theta.hat)
> bias
[1] -0.005797944
Theestimateofbiasis-0.005797944. Notethatthisisclosetotheestimate
of bias returned by the boot function in Example 7.3. See Section 7.3 for
the jackknife-after-bootstrap method to estimate the standard error of the
bootstrap estimate of bias. (cid:5)
Example 7.5 (Bootstrap estimate of bias of a ratio estimate)
The patch (bootstrap) data from Efron and Tibshirani [84, 10.3] contains
measurementsofacertainhormoneinthebloodstreamofeightsubjectsafter
wearing a medical patch. The parameter of interest is
E(new)?E(old)
? = .
E(old)?E(placebo)
If |?| ? 0.20, this indicates bioequivalence of the old and new patches. The
statistic is Y/Z. Compute a bootstrap estimate of bias in the bioequivalence
ratio statistic.

190 Statistical Computing with R
data(patch, package = "bootstrap")
> patch
subject placebo oldpatch newpatch z y
1 1 9243 17649 16449 8406 -1200
2 2 9671 12013 14614 2342 2601
3 3 11792 19979 17274 8187 -2705
4 4 13357 21816 23798 8459 1982
5 5 9055 13850 12560 4795 -1290
6 6 6290 9806 10157 3516 351
7 7 12412 17208 16570 4796 -638
8 8 18806 29044 26325 10238 -2719
n <- nrow(patch) #in bootstrap package
B <- 2000
theta.b <- numeric(B)
theta.hat <- mean(patch$y) / mean(patch$z)
#bootstrap
for (b in 1:B) {
i <- sample(1:n, size = n, replace = TRUE)
y <- patch$y[i]
z <- patch$z[i]
theta.b[b] <- mean(y) / mean(z)
}
bias <- mean(theta.b) - theta.hat
se <- sd(theta.b)
print(list(est=theta.hat, bias = bias,
se = se, cv = bias/se))
$est [1] -0.0713061
$bias [1] 0.007901101
$se [1] 0.1046453
$cv [1] 0.07550363
If |bias|/se ? 0.25, it is not usually necessary to adjust for bias [84, 10.3].
The bias is small relative to standard error (cv <0.08), so in this example it
is not necessary to adjust for bias. (cid:5)
7.2 The Jackknife
The jackknife is another resampling method, proposed by Quenouille [215,
216] for estimating bias, and by Tukey [274] for estimating standard error, a

Bootstrap and Jackknife 191
few decades earlier than the bootstrap. Efron [83] is a good introduction to
the jackknife.
The jackknife is like a “leave-one-out” type of cross-validation. Let x =
(x
1
,...,xn)beanobservedrandomsample,anddefinetheithjackknifesample
x (i) to be the subset of x that leaves out the ith observation xi. That is,
x (i) =(x 1 ,...,xi?1 ,xi+1 ,...,xn).
If ?ˆ=Tn(x), define the ith jackknife replicate ?ˆ (i) =Tn?1 (x (i) ), i=1,...,n.
Suppose the parameter ? = t(F) is a function of the distribution F. Let
Fn be the ecdf of a random sample from the distribution F. The “plug-in”
estimate of ? is ?ˆ= t(Fn). A “plug-in” ?ˆis smooth in the sense that small
changesinthedatacorrespondtosmallchangesin?ˆ. Forexample,thesample
mean is a plug-in estimate for the population mean, but the sample median
is not a plug-in estimate for the population median.
The Jackknife Estimate of Bias
If ?ˆis a smooth (plug-in) statistic, then ?ˆ (i) =t(Fn?1 (x (i) )), and the jack-
knife estimate of bias is
b $ iasjack =(n?1)(?ˆ (·) ??ˆ), (7.3)
(cid:10)
where ?ˆ (·) = n 1 n i=1 ?ˆ (i) is the mean of the estimates from the leave-one-out
samples, and ?ˆ= ?ˆ(x) is the estimate computed from the original observed
sample.
To see why the jackknife estimator (7.3) has the factor n?1, consider the
casewhere?isthepopulationvariance. Ifx
1
,...,xn isarandomsamplefrom
the distribution of X, the plug-in estimate of the variance of X is
(cid:5)n
1
?ˆ= (xi ?x¯)2.
n
i=1
The estimator ?ˆis biased for ?2 with
X
n?1 ?2
bias(?ˆ)=E[?ˆ??2 ]= ?2 ??2 =? X.
X X X
n n
Eachjackknife replicate computes the estimate ?ˆ (i) ona sample size n?1, so
that the bias in the jackknife replicate is ??2 /(n?1). Thus, for i=1,...,n
X
we have
E[?ˆ
(i)
??ˆ]=E[?ˆ
(i)
??]?E[?ˆ??]
=bias(?ˆ
(i)
)?bias(?ˆ)
(cid:7) (cid:8)
?2 ?2 ?2 bias(?ˆ)
=? X ? ? X =? X = .
n?1 n n(n?1) n?1

192 Statistical Computing with R
Thus, the jackknife estimate (7.3) with factor (n?1) gives the correct esti-
mate of bias in the plug-in estimator of variance, which is also the maximum
likelihood estimator of variance.
R note 7.2 (leave-one-out) The [ ] operator provides a very simple way to
leave out the ith element of a vector.
x <- 1:5
for (i in 1:5)
print(x[-i])
[1] 2 3 4 5
[1] 1 3 4 5
[1] 1 2 4 5
[1] 1 2 3 5
[1] 1 2 3 4
Note that the jackknife requires only n replications to estimate the bias;
the bootstrap estimate of bias typically requires severalhundred replicates.
Example 7.6 (Jackknife estimate of bias)
Compute the jackknife estimate of bias for the patch data in Example 7.5.
data(patch, package = "bootstrap")
n <- nrow(patch)
y <- patch$y
z <- patch$z
theta.hat <- mean(y) / mean(z)
print (theta.hat)
#compute the jackknife replicates, leave-one-out estimates
theta.jack <- numeric(n)
for (i in 1:n)
theta.jack[i] <- mean(y[-i]) / mean(z[-i])
bias <- (n - 1) * (mean(theta.jack) - theta.hat)
> print(bias) #jackknife estimate of bias
[1] 0.008002488
(cid:5)

Bootstrap and Jackknife 193
The jackknife estimate of standard error
A jackknife estimate of standard error [274], [84, (11.5)] is
.
/
s(cid:1)ejack =
/ 0n?
n
1 (cid:5)n "
?ˆ (i) ??ˆ (·)
# 2
, (7.4)
i=1
for smooth statistics ?ˆ.
To see why the jackknife estimator of standard error (7.4) has the factor
(n?1)/n, consider the case where ?(cid:2)is the population mean and ?ˆ=X. The
standarderrorofthe mean ofX is Var(X)/n. A factor of(n?1)/n under
the radial makes s(cid:1)ejack an unbiased estimator of the standard error of the
mean.
We can also consider the plug-in estimate of the standard error of the
mean. Inthe caseofacontinuousrandomvariableX,the plug-inestimate of
the variance of a random sample is the variance of Y, where Y is uniformly
distributed on the sample x
1
,...,xn. That is,
V $ ar(Y)= 1 E[Y ?E[Y]]2 = 1 E[Y ?X]2
n n
(cid:5)n
1 1
= (Xi ?X)2·
n n
i=1
n?1 n?1
= S2 = [s(cid:1)e(X)]2.
n2 X n
Thus, for the jackknife estimator of standard error, a factor of ((n?1)/n)2
givestheplug-inestimateofvariance. Thefactors((n?1)/n)2and((n?1)/n)
are approximately equal if n is not small. Efron and Tibshirani [84] remark
that the choice of the factor (n?1)/n instead of ((n?1)/n)2 is somewhat
arbitrary.
Example 7.7 (Jackknife estimate of standard error)
To compute the jackknife estimate of standard error for the patch data in
Example 7.5, use the jackknife replicates from Example 7.6.
se <- sqrt((n-1) *
mean((theta.jack - mean(theta.jack))^2))
> print(se)
[1] 0.1055278
The jackknife estimate of standard error is 0.1055278. From the previous
result for the bias, we have the estimated coefficient of variation
> .008002488/.1055278
[1] 0.07583298
(cid:5)

194 Statistical Computing with R
When the Jackknife Fails
The jackknife can fail when the statistic ?ˆis not “smooth.” The statistic
is a function of the data. Smoothness means that small changes in the data
correspond to small changes in the statistic. The median is an example of a
statistic that is not smooth.
Example 7.8 (Failure of jackknife)
In this example the jackknife estimate of standard error of the median is
computed for a random sample of 10 integers from 1, 2 ..., 100.
n <- 10
x <- sample(1:100, size = n)
#jackknife estimate of se
M <- numeric(n)
for (i in 1:n) { #leave one out
y <- x[-i]
M[i] <- median(y)
}
Mbar <- mean(M)
print(sqrt((n-1)/n * sum((M - Mbar)^2)))
#bootstrap estimate of se
Mb <- replicate(1000, expr = {
y <- sample(x, size = n, replace = TRUE)
median(y) })
print(sd(Mb))
# details and results:
# the sample, x: 29 79 41 86 91 5 50 83 51 42
# jackknife medians: 51 50 51 50 50 51 51 50 50 51
# jackknife est. of se: 1.5
# bootstrap medians: 46 50 46 79 79 51 81 65 ...
# bootstrap est. of se: 13.69387
Clearly something is wrong here, because the bootstrap estimate and the
jackknife estimate are far apart. The jackknife fails, because the median is
not smooth. (cid:5)
Inthiscase,whenthestatisticisnotsmooth,thedelete-djackknife(leaved
observations out?on each replicate) can be applied (see Efron and Tibshirani
[84, 11.7]). If n/d ? 0 and n ? d ? ? then the delete-d jackknife is
consistent for the median. The computing time increases because there are a
large number of jackknife replicates when n and d are large.

Bootstrap and Jackknife 195
7.3 Jackknife-after-Bootstrap
In this chapter, bootstrap estimates of standard error and bias have been
introduced. These estimates are randomvariables. If we are interestedinthe
variance of these estimates, one idea is to try the jackknife.
Recallthats(cid:1)e(?ˆ)isthesamplestandarddeviationofB bootstrapreplicates
of ?ˆ. Now, if we leave out the ith observation, the algorithm for estimation
of standarderror is to resample B replicates from the n?1 remaining obser-
vations – for each i. In other words, we would replicate the bootstrap itself.
Fortunately, there is a way to avoid replicating the bootstrap.
Thejackknife-after-bootstrap computesanestimateforeach“leave-one-out”
sample. Let J(i) denote the indices of bootstrapsamples that do not contain
xi, and let B(i) denote number of bootstrap samples that do not contain
xi. Then we can compute the jackknife replication leaving out the B?B(i)
samples thatcontainxi [84,p. 277]. The jackknife estimate of standarderror
is computed by the formula (7.4). Compute
s(cid:1)e(?ˆ)=s(cid:1)ejack(s(cid:1)eB(1) ,...,s(cid:1)eB(n) ),
where .
/ (cid:5) 1 2
/ 1 2
s(cid:1)eB(i) =0
B(i)
?ˆ (j) ??ˆ (J(i)) , (7.5)
j?J(i)
and (cid:5)
1
?ˆ (J(i)) =
B(i)
?ˆ (j)
j?J(i)
is the sample mean of the estimates from the leave-xi-out jackknife samples.
Example 7.9 (Jackknife-after-bootstrap)
Use the jackknife-after-bootstrapprocedure to estimate the standarderrorof
s(cid:1)e(?ˆ) for the patch data in Example 7.7.
# initialize
data(patch, package = "bootstrap")
n <- nrow(patch)
y <- patch$y
z <- patch$z
B <- 2000
theta.b <- numeric(B)
# set up storage for the sampled indices
indices <- matrix(0, nrow = B, ncol = n)

196 Statistical Computing with R
# jackknife-after-bootstrap step 1: run the bootstrap
for (b in 1:B) {
i <- sample(1:n, size = n, replace = TRUE)
y <- patch$y[i]
z <- patch$z[i]
theta.b[b] <- mean(y) / mean(z)
#save the indices for the jackknife
indices[b, ] <- i
}
#jackknife-after-bootstrap to est. se(se)
se.jack <- numeric(n)
for (i in 1:n) {
#in i-th replicate omit all samples with x[i]
keep <- (1:B)[apply(indices, MARGIN = 1,
FUN = function(k) {!any(k == i)})]
se.jack[i] <- sd(theta.b[keep])
}
> print(sd(theta.b))
[1] 0.1027102
> print(sqrt((n-1) * mean((se.jack - mean(se.jack))^2)))
[1] 0.03050501
The bootstrap estimate of standard error is 0.1027102 and jackknife-after-
bootstrap estimate of its standard error is 0.03050501. (cid:5)
Jackknife-after-bootstrap: Empirical influence values
The empirical influence values in jackknife-after-bootstrap are empirical
quantities that measure the difference between each jackknife replicate and
the observedstatistic. There areseveralmethods forestimating the influence
values. Oneapproachusestheusualjackknifedifferences?ˆ (i) ??ˆ,i=1,...,n.
Theempinffunctioninthebootpackagecomputesempiricalinfluencevalues
by four methods. The jack.after.boot function in the boot package [34]
produces a plot of empirical influence values. The plots can be used as a
diagnostic tool to see the effect or influence of individual observations. See
[63, Ch. 3] for examples and a discussion of how to interpret the plots.

Bootstrap and Jackknife 197
7.4 Bootstrap Confidence Intervals
In this section several approaches to obtaining approximate confidence in-
tervals for the target parameter in a bootstrap are discussed. The methods
include the standard normal bootstrap confidence interval, the basic bootstrap
confidence interval, the bootstrap percentile confidence interval, and the boot-
straptconfidenceinterval. Readersarereferredto[63]and[84]fortheoretical
properties and discussion of empirical performance of methods for bootstrap
confidence interval estimates.
7.4.1 The Standard Normal Bootstrap Confidence Interval
Thestandardnormalbootstrapconfidenceintervalisthesimplestapproach,
but not necessarily the best. Suppose that ?ˆis an estimator of parameter ?,
andassumethestandarderroroftheestimatorisse(?ˆ). If?ˆisasamplemean
and the sample size is large, then the Central Limit Theorem implies that
?ˆ?E[?ˆ]
Z = (7.6)
se(?ˆ)
is approximately standard normal. Hence, if ?ˆ is unbiased for ?, then an
approximate 100(1??)% confidence interval for ? is the Z-interval
?ˆ±z?/2 se(?ˆ),
where z?/2 = ??1(1??/2). This interval is easy to compute, but we have
made severalassumptions. To apply the normaldistribution, we assume that
the distribution of ?ˆis normal or ?ˆis a sample mean and the sample size is
large. We have also implicitly assumed that ?ˆis unbiased for ?.
Biascanbe estimatedandused to center the Z statistic, but the estimator
isarandomvariable,sothetransformedvariableisnotnormal. Herewehave
treated se(?ˆ) as a known parameter, but in the bootstrap se(?ˆ) is estimated
(the sample standard deviation of the replicates).
7.4.2 The Basic Bootstrap Confidence Interval
The basic bootstrap confidence interval transforms the distribution of the
replicates by subtracting the observed statistic. The quantiles of the trans-
formed sample are used to determine the confidence limits.
The100(1??)%confidencelimitsforthebasicbootstrapconfidenceinterval
are
(2?ˆ??ˆ 1??/2 , 2?ˆ??ˆ ?/2 ). (7.7)

198 Statistical Computing with R
To see how the confidence limits in (7.7) are determined, consider first the
parametriccase. SupposethatT isanestimatorof? anda? isthe ?quantile
of T ??. Then
P(T ?? >a?)=1???P(T ?a? >?)=1??.
Thus, a 100(1? 2?)% confidence interval with equal lower and upper tail
errors ? is given by (t?a 1??, t?a?).
In bootstrap the distribution of T is generally unknown, but quantiles can
be estimated and an approximate method applied.
Compute the sample ? quantiles ?ˆ ? from the ecdf of the replicates ?ˆ?.
Denotethe ?quantileof?ˆ???ˆbyb?. Thenˆb? =?ˆ ? ??ˆisanestimatorofb?.
An approximate upper confidence limit for a 100(1??)% confidence interval
for ? is given by
?ˆ?ˆb?/2 =?ˆ?(?ˆ ?/2 ??ˆ)=2?ˆ??ˆ ?/2 .
Similarlyanapproximatelowerconfidencelimitisgivenby2?ˆ??ˆ 1??/2 . Thus,
a 100(1??) basic bootstrap confidence interval for ? is given by (7.7). See
Davison and Hinkley [63, 5.2] for more details.
7.4.3 The Percentile Bootstrap Confidence Interval
A bootstrap percentile interval uses the empirical distribution of the boot-
strap replicates as the reference distribution. The quantiles of the empirical
distribution are estimators of the quantiles of the sampling distribution of ?ˆ,
sothatthese(random)quantilesmaymatchthetruedistributionbetterwhen
the distribution of ?ˆis not normal. Suppose that ?ˆ(1),...,?ˆ(B) are the boot-
strap replicates of the statistic ?ˆ. From the ecdf of the replicates, compute
the ?/2 quantile ?ˆ ?/2 , and the 1??/2 quantile ?ˆ 1??/2 .
Efron and Tibshirani [84, 13.3] show that the percentile interval has some
theoreticaladvantagesoverthestandardnormalintervalandsomewhatbetter
coverage performance.
Adjustments to percentile methods have been proposed. For example, the
bias-correctedandaccelerated (BCa)percentileintervals(seeSection7.5)area
modifiedversionofpercentileintervalsthathavebettertheoreticalproperties
and better performance in practice.
The boot.ci (boot) function [34] computes five types of bootstrap con-
fidence intervals: basic, normal, percentile, studentized, and BCa. To use
this function, first call boot for the bootstrap, and pass the returned boot
object to boot.ci (along with other required arguments). For more details
see Davison and Hinkley [63, Ch. 5] and the boot.ci help topic.
Example 7.10 (Bootstrap confidence intervals for patch ratio statistic.)
This example illustrates how to obtain the normal, basic, and percentile
bootstrap confidence intervals using the boot and boot.ci functions in the

Bootstrap and Jackknife 199
boot package. The code generates 95% confidence intervals for the ratio sta-
tistic in Example 7.5.
library(boot) #for boot and boot.ci
data(patch, package = "bootstrap")
theta.boot <- function(dat, ind) {
#function to compute the statistic
y <- dat[ind, 1]
z <- dat[ind, 2]
mean(y) / mean(z)
}
Run the bootstrap and compute confidence interval estimates for the bioe-
quivalence ratio.
y <- patch$y
z <- patch$z
dat <- cbind(y, z)
boot.obj <- boot(dat, statistic = theta.boot, R = 2000)
The output for the bootstrap and bootstrap confidence intervals is below.
print(boot.obj)
ORDINARY NONPARAMETRIC BOOTSTRAP
Call: boot(data = dat, statistic = theta.boot, R = 2000)
Bootstrap Statistics :
original bias std. error
t1* -0.0713061 0.01047726 0.1010179
print(boot.ci(boot.obj,
type = c("basic", "norm", "perc")))
BOOTSTRAP CONFIDENCE INTERVAL CALCULATIONS
Based on 2000 bootstrap replicates
CALL : boot.ci(boot.out = boot.obj, type = c("basic",
"norm", "perc"))
Intervals :
Level Normal Basic Percentile
95% (-0.2798, 0.1162 ) (-0.3045, 0.0857 ) (-0.2283, 0.1619 )
Calculations and Intervals on Original Scale
Recallthattheoldandnewpatchesarebioequivalentif|?|?0.20. Hence,the
interval estimates do not support bioequivalence of the old and new patches.
Next we compute the bootstrap confidence intervals according to their defin-
itions. Compare the following results with the boot.ci output.

200 Statistical Computing with R
#calculations for bootstrap confidence intervals
alpha <- c(.025, .975)
#normal
print(boot.obj$t0 + qnorm(alpha * sd(boot.obj$t)))
-0.2692975 0.1266853
#basic
print(2*boot.obj$t0 -
quantile(boot.obj$t, rev(alpha), type=1))
97.5% 2.5%
-0.3018698 0.0857679
#percentile
print(quantile(boot.obj$t, alpha, type=6))
2.5% 97.5%
-0.2283370 0.1618647
(cid:5)
R note 7.3 The normal interval computed by boot.cicorrects for bias. No-
tice that the boot.ci normal interval differs from our result by the bias esti-
mate shown in the output from boot. This is confirmed by reading the source
code for the function. To view the source code for this calculation, when the
boot package is loaded, enter the command getAnywhere(norm.ci) at the
console. Also see norm.inter and [63] for details of calculations of quan-
tiles.
Example 7.11 (Bootstrap confidence intervals for the correlation statistic)
Compute 95%bootstrap confidence interval estimates for the correlationsta-
tistic in the law data of Example 7.2.
library(boot)
data(law, package = "bootstrap")
boot.obj <- boot(law, R = 2000,
statistic = function(x, i){cor(x[i,1], x[i,2])})
print(boot.ci(boot.obj, type=c("basic","norm","perc")))
...
Intervals :
Level Normal Basic Percentile
95% (0.5182, 1.0448) (0.5916, 1.0994) (0.4534, 0.9611)
Calculations and Intervals on Original Scale

Bootstrap and Jackknife 201
All three intervals cover the correlation ? = .76 of the universe of all law
schools in law82. One reason for the difference in the percentile and normal
confidence intervals could be that the sampling distribution of correlation
statistic is not close to normal (see the histogram in Figure 7.1). When the
sampling distribution of the statistic is approximately normal, the percentile
interval will agree with the normal interval. (cid:5)
7.4.4 The Bootstrap t interval
Even if the distribution of ?ˆis normal and ?ˆis unbiased for ?, the normal
distribution is not exactly correct for the Z statistic (7.6), because we esti-
mate se(?ˆ). Nor can we claim that it is a Student t statistic, because the
distribution of the bootstrap estimator s(cid:1)e(?ˆ) is unknown. The bootstrap t
interval does not use a Student t distribution as the reference distribution.
Instead, the sampling distribution of a “t type” statistic (a studentized sta-
tistic) is generated by resampling. Suppose x = (x
1
,...,xn) is an observed
sample. The 100(1??)% bootstrap t confidence interval is
(?ˆ?t ? s(cid:1)e(?ˆ), ?ˆ?t ? s(cid:1)e(?ˆ)),
1??/2 ?/2
where s(cid:1)e(?ˆ), t? and t? are computed as outlined below.
?/2 1??/2
Bootstrap t interval (studentized bootstrap interval)
1. Compute the observed statistic ?ˆ.
2. For each replicate, indexed b=1,...,B:
(a) Sample with replacement from x to get the bth sample
x(b) =(x(
1
b),...,x(
n
b)).
(b) Compute ?ˆ(b) from the bth sample x(b).
(c) Compute or estimate the standard error s(cid:1)e(?ˆ(b)) (a separate esti-
mateforeachbootstrapsample;abootstrapestimatewillresample
from the current bootstrap sample x(b), not x).
(d) Compute the bth replicate of the “t” statistic, t(b) = ?ˆ(b)??ˆ
(cid:0)
.
se(?ˆ(b))
3. The sample of replicates t(1),...,t(B) is the reference distribution for
bootstrapt. Findthesamplequantilest? andt? fromtheordered
?/2 1??/2
sample of replicates t(b).
4. Compute s(cid:1)e(?ˆ), the sample standard deviation of the replicates ?ˆ(b).
5. Compute confidence limits
(?ˆ?t ? s(cid:1)e(?ˆ), ?ˆ?t ? s(cid:1)e(?ˆ)).
1??/2 ?/2

202 Statistical Computing with R
Onedisadvantageto the bootstraptintervalis thattypically the estimates
ofstandarderrors(cid:1)e(?ˆ(b))mustbe obtainedbybootstrap. Thisis a bootstrap
nestedinsideabootstrap. IfB =1000,forexample,thebootstraptconfidence
interval method takes approximately 1000times longer than any of the other
methods.
Example 7.12 (Bootstrap t confidence interval)
Thisexampleprovidesafunctiontocomputeabootstraptconfidenceinterval
for a univariate or a multivariate sample. The required arguments to the
function are the sample data x, and the function statistic that computes
the statistic. The default confidence level is 95%, the number of bootstrap
replicatesdefaultsto500,andthenumberofreplicatesforestimatingstandard
error defaults to 100.
boot.t.ci <-
function(x, B = 500, R = 100, level = .95, statistic){
#compute the bootstrap t CI
x <- as.matrix(x); n <- nrow(x)
stat <- numeric(B); se <- numeric(B)
boot.se <- function(x, R, f) {
#local function to compute the bootstrap
#estimate of standard error for statistic f(x)
x <- as.matrix(x); m <- nrow(x)
th <- replicate(R, expr = {
i <- sample(1:m, size = m, replace = TRUE)
f(x[i, ])
})
return(sd(th))
}
for (b in 1:B) {
j <- sample(1:n, size = n, replace = TRUE)
y <- x[j, ]
stat[b] <- statistic(y)
se[b] <- boot.se(y, R = R, f = statistic)
}
stat0 <- statistic(x)
t.stats <- (stat - stat0) / se
se0 <- sd(stat)
alpha <- 1 - level
Qt <- quantile(t.stats, c(alpha/2, 1-alpha/2), type = 1)
names(Qt) <- rev(names(Qt))
CI <- rev(stat0 - Qt * se0)
}

Bootstrap and Jackknife 203
Note that the boot.se function is a local function, visible only inside the
boot.t.cifunction. The next example applies the boot.t.cifunction. (cid:5)
Example 7.13 (Bootstrap t confidence interval for patch ratio statistic.)
Compute a 95% bootstrap t confidence interval for the ratio statistic in Ex-
amples 7.5 and 7.10.
dat <- cbind(patch$y, patch$z)
stat <- function(dat) {
mean(dat[, 1]) / mean(dat[, 2]) }
ci <- boot.t.ci(dat, statistic = stat, B=2000, R=200)
print(ci)
2.5% 97.5%
-0.2547932 0.4055129
The upper confidence limit of the bootstrap t confidence interval is much
larger than the three intervals in Example 7.10 and the bootstrap t is the
widest interval in this example. (cid:5)
7.5 Better Bootstrap Confidence Intervals
Betterbootstrapconfidenceintervals(see[84,Sec.14.3])areamodifiedver-
sion of percentile intervals that have better theoretical properties and better
performanceinpractice. Fora100(1??)%confidenceinterval,theusual?/2
and1??/2quantiles are adjustedby two factors: a correctionfor bias anda
correction for skewness. The bias correction is denoted z and the skewness
0
or“acceleration”adjustmentis a. Thebetter bootstrapconfidence intervalis
called BCa for “bias corrected” and “adjusted for acceleration.”
For a 100(1??)% BCa bootstrap confidence interval compute
(cid:7) (cid:8)
zˆ
0
+z?/2
? =? zˆ + , (7.8)
1
(cid:7)
0 1?aˆ(zˆ
0
+z?/2 )
(cid:8)
zˆ 0 +z 1??/2
? =? zˆ + , (7.9)
2 0 1?aˆ(zˆ 0 +z 1??/2 )
wherez? =??1(?), andzˆ
0
,aˆ aregivenbyequations(7.10)and(7.11)below.
The BCa interval is
(?ˆ? ,?ˆ?
).
?1 ?2
The upper and lower confidence limits of the BCa confidence interval are the
empirical ? and ? quantiles of the bootstrap replicates.
1 2

204 Statistical Computing with R
The bias correction factor is in effect measuring the median bias of the
replicates ?ˆ? for ?ˆ. The estimate of this bias is
!
(cid:5)B
1
zˆ =? ?1 I(?ˆ(b) <?ˆ) , (7.10)
0 B
b=1
where I(·) is the indicator function. Note that zˆ = 0 if ?ˆ is the median of
0
the bootstrap replicates.
The acceleration factor is estimated from jackknife replicates:
(cid:10)
aˆ= (cid:10) n i=1 (? (.) ?? (i) )3 , (7.11)
6 n i=1 ((? (.) ?? (i) )2)3/2
which measures skewness.
Othermethods forestimatingthe accelerationhavebeenproposed(seee.g.
Shao and Tu [247]). Formula (7.11) is given by Efron and Tibshirani [84,
p. 186]. The acceleration factor aˆ is so named because it estimates the rate
of change of the standard error of ?ˆ with respect to the target parameter ?
(on a normalized scale). When we use a standard normal bootstrap confi-
dence interval, we suppose that ?ˆis approximately normal with mean ? and
constant variance ?2(?ˆ) that does not depend on the parameter ?. However,
it is not always true that the variance of an estimator has constant variance
with respect to the targetparameter. Consider,for example, the sample pro-
portion pˆ=X/n as an estimator of the probability of success p in a binomial
experiment, which has variance p(1?p)/n. The acceleration factor aims to
adjust the confidence limits to accountfor the possibility that the varianceof
the estimator may depend on the true value of the target parameter.
Properties of BCa intervals
There are two important theoretical advantages to BCa bootstrap confi-
dence intervals. The BCa confidence intervals are transformation respecting
and BCa intervals have second order accuracy.
Transformation respecting means that if (?ˆ? ,?ˆ? ) is a confidence interval
?1 ?2
for?, andt(?) isa transformationofthe parameter?, thenthe corresponding
intervalfort(?)is(t(?ˆ
?
?
1
),t(?ˆ
?
?
2
)). A?confidenceintervalisfirstorderaccurate
if the error tends to zero at rate 1/ n for sample size n, and second order
accurate if the error tends to zero at rate 1/n.
The bootstrap t confidence interval is secondorder accurate but not trans-
formation respecting. The bootstrap percentile interval is transformation re-
specting but only firstorderaccurate. The standardnormalconfidence inter-
val is neither transformation respecting nor second order accurate. See [63]
fordiscussionandcomparisonoftheoreticalpropertiesofbootstrapconfidence
intervals.

Bootstrap and Jackknife 205
Example 7.14 (BCa bootstrap confidence interval)
This example implements a function to compute a BCa confidence interval.
The BCa interval is (?ˆ? ,?ˆ? ), where ?ˆ? and ?ˆ? are given by equations
?1 ?2 ?1 ?2
(7.8)–(7.11). (cid:5)
boot.BCa <-
function(x, th0, th, stat, conf = .95) {
# bootstrap with BCa bootstrap confidence interval
# th0 is the observed statistic
# th is the vector of bootstrap replicates
# stat is the function to compute the statistic
x <- as.matrix(x)
n <- nrow(x) #observations in rows
N <- 1:n
alpha <- (1 + c(-conf, conf))/2
zalpha <- qnorm(alpha)
# the bias correction factor
z0 <- qnorm(sum(th < th0) / length(th))
# the acceleration factor (jackknife est.)
th.jack <- numeric(n)
for (i in 1:n) {
J <- N[1:(n-1)]
th.jack[i] <- stat(x[-i, ], J)
}
L <- mean(th.jack) - th.jack
a <- sum(L^3)/(6 * sum(L^2)^1.5)
# BCa conf. limits
adj.alpha <- pnorm(z0 + (z0+zalpha)/(1-a*(z0+zalpha)))
limits <- quantile(th, adj.alpha, type=6)
return(list("est"=th0, "BCa"=limits))
}

206 Statistical Computing with R
Example 7.15 (BCa bootstrap confidence interval)
Compute a BCa confidence interval for the bioequivalence ratio statistic of
Example 7.10 using the function boot.BCaprovided in Example 7.14.
data(patch, package = "bootstrap")
n <- nrow(patch)
B <- 2000
y <- patch$y
z <- patch$z
x <- cbind(y, z)
theta.b <- numeric(B)
theta.hat <- mean(y) / mean(z)
#bootstrap
for (b in 1:B) {
i <- sample(1:n, size = n, replace = TRUE)
y <- patch$y[i]
z <- patch$z[i]
theta.b[b] <- mean(y) / mean(z)
}
#compute the BCa interval
stat <- function(dat, index) {
mean(dat[index, 1]) / mean(dat[index, 2]) }
boot.BCa(x, th0 = theta.hat, th = theta.b, stat = stat)
In the result shown below, notice that the probabilities ?/2 = 0.025 and
1??/2=0.975 have been adjusted to 0.0339,and 0.9824.
$est
[1] -0.0713061
$BCa
3.391094% 98.24405%
-0.2252715 0.1916788
Thus bioequivalence (|?| ? 0.20) is not supported by the BCa confidence
interval estimate of ?. (cid:5)
R note 7.4 (Empirical influence values) Bydefault,thetype="bca"op-
tion of the boot.ci function computes empirical influence values by a regres-
sionmethod. Themethodinexample7.14correspondstothe“usualjackknife”
method of computing empirical jackknife values. See [63, Ch. 5] and the code
for empinf, usual.jack.

Bootstrap and Jackknife 207
Example 7.16 (BCa bootstrap confidence interval using boot.ci)
Compute a BCa confidence interval for the bioequivalence ratio statistic of
Examples 7.5 and 7.10, using the function boot.ci provided in the boot
package [34].
boot.obj <- boot(x, statistic = stat, R=2000)
boot.ci(boot.obj, type=c("perc", "bca"))
The percentile confidence interval is also given for comparison.
BOOTSTRAP CONFIDENCE INTERVAL CALCULATIONS
Based on 2000 bootstrap replicates
CALL : boot.ci(boot.out = boot.obj, type = c("perc", "bca"))
Intervals :
Level Percentile BCa
95% (-0.2368, 0.1824 ) (-0.2221, 0.2175 )
Calculations and Intervals on Original Scale
(cid:5)
7.6 Application: Cross Validation
Cross validation is a data partitioning method that can be used to assess
thestabilityofparameterestimates,theaccuracyofaclassificationalgorithm,
theadequacyofafittedmodel,andinmanyotherapplications. Thejackknife
could be considered a special case of cross validation, because it is primarily
used to estimate bias and standard error of an estimator.
Inbuildingaclassifier,aresearchercanpartitionthedataintotrainingand
test sets. The model is estimated using the data in the training set only, and
the misclassificationrateisestimatedbyrunningthe classifieronthetestset.
Similarly,the fitofanymodelcanbe assessedbyholdingbackatestsetfrom
the model estimation, and then using the test set to see how well the model
fits the new test data.
Another version of cross validation is the “n-fold” cross validation, which
partitions the data into n test sets (now test points). This “leave-one-out”
procedure is like the jackknife. The data could be divided into any number
K partitions, so that there are K test sets. Then the model fitting leaves out
one test set in turn, so that the models are fitted K times.

208 Statistical Computing with R
Example 7.17 (Model selection)
The ironslag(DAAG)data [185] has 53 measurements of ironcontent by two
methods, chemical and magnetic (see “iron.dat” in [126]). A scatterplot of
the data in Figure 7.2 suggests that the chemical and magnetic variables are
positively correlated, but the relation may not be linear. From the plot, it
appearsthataquadraticpolynomial,orpossiblyanexponentialorlogarithmic
model might fit the data better than a line.
There are severalsteps to model selection, but we will focus on the predic-
tionerror. Thepredictionerrorcanbe estimatedbycrossvalidation,without
making strong distributional assumptions about the error variable.
Theproposedmodelsforpredictingmagneticmeasurement(Y)fromchem-
ical measurement (X) are:
1. Linear: Y =? +? X +?.
0 1
2. Quadratic: Y =? +? X+? X2+?.
0 1 2
3. Exponential: log(Y)=log(? )+? X+?.
0 1
4. Log-Log: log(Y)=? +? log(X)+?.
0 1
The code to estimate the parameters of the four models follows. Plots of
the predicted response with the data are also constructedfor eachmodel and
shown in Figure 7.2. To display four plots use par(mfrow=c(2,2)).
library(DAAG); attach(ironslag)
a <- seq(10, 40, .1) #sequence for plotting fits
L1 <- lm(magnetic ~ chemical)
plot(chemical, magnetic, main="Linear", pch=16)
yhat1 <- L1$coef[1] + L1$coef[2] * a
lines(a, yhat1, lwd=2)
L2 <- lm(magnetic ~ chemical + I(chemical^2))
plot(chemical, magnetic, main="Quadratic", pch=16)
yhat2 <- L2$coef[1] + L2$coef[2] * a + L2$coef[3] * a^2
lines(a, yhat2, lwd=2)
L3 <- lm(log(magnetic) ~ chemical)
plot(chemical, magnetic, main="Exponential", pch=16)
logyhat3 <- L3$coef[1] + L3$coef[2] * a
yhat3 <- exp(logyhat3)
lines(a, yhat3, lwd=2)
L4 <- lm(log(magnetic) ~ log(chemical))
plot(log(chemical), log(magnetic), main="Log-Log", pch=16)
logyhat4 <- L4$coef[1] + L4$coef[2] * log(a)
lines(log(a), logyhat4, lwd=2)
(cid:5)

Bootstrap and Jackknife 209
10 15 20 25 30
04
53
03
52
02
51
01
Linear
chemical
citengam
10 15 20 25 30
04
53
03
52
02
51
01
Quadratic
chemical
citengam
10 15 20 25 30
04
53
03
52
02
51
01
Exponential
chemical
citengam
2.4 2.6 2.8 3.0 3.2 3.4
6.3
2.3
8.2
4.2
Log?Log
log(chemical)
)citengam(gol
FIGURE 7.2: Four proposedmodels for ironslagdata in Example 7.17.
Once the model is estimated, we want to assess the fit. Cross validation
can be used to estimate the prediction errors.
Procedure to estimate prediction error by n-fold (leave-one-out)
cross validation
1. For k = 1,...,n, let observation (xk,yk) be the test point and use the
remaining observations to fit the model.
(a) Fit the model(s) using only the n?1 observations in the training
set, (xi,yi), i(cid:13)=k.
(b) Compute the predictedresponse yˆk =?ˆ
0
+?ˆ
1
xk for the test point.
(c) Compute the prediction error ek =yk ?yˆk.
(cid:10)
2. Estimate the mean of the squared prediction errors ?ˆ2 = 1 n e2.
? n k=1 k

210 Statistical Computing with R
Example 7.18 (Model selection: Cross validation)
Cross validation is applied to select a model in Example 7.17.
n <- length(magnetic) #in DAAG ironslag
e1 <- e2 <- e3 <- e4 <- numeric(n)
# for n-fold cross validation
# fit models on leave-one-out samples
for (k in 1:n) {
y <- magnetic[-k]
x <- chemical[-k]
J1 <- lm(y ~ x)
yhat1 <- J1$coef[1] + J1$coef[2] * chemical[k]
e1[k] <- magnetic[k] - yhat1
J2 <- lm(y ~ x + I(x^2))
yhat2 <- J2$coef[1] + J2$coef[2] * chemical[k] +
J2$coef[3] * chemical[k]^2
e2[k] <- magnetic[k] - yhat2
J3 <- lm(log(y) ~ x)
logyhat3 <- J3$coef[1] + J3$coef[2] * chemical[k]
yhat3 <- exp(logyhat3)
e3[k] <- magnetic[k] - yhat3
J4 <- lm(log(y) ~ log(x))
logyhat4 <- J4$coef[1] + J4$coef[2] * log(chemical[k])
yhat4 <- exp(logyhat4)
e4[k] <- magnetic[k] - yhat4
}
Thefollowingestimatesforpredictionerrorareobtainedfromthen-foldcross
validation.
> c(mean(e1^2), mean(e2^2), mean(e3^2), mean(e4^2))
[1] 19.55644 17.85248 18.44188 20.45424
According to the prediction error criterion, Model 2, the quadratic model,
would be the best fit for the data.
> L2
Call:
lm(formula = magnetic ~ chemical + I(chemical^2))
Coefficients:
(Intercept) chemical I(chemical^2)
24.49262 -1.39334 0.05452
The fitted regression equation for Model 2 is
Yˆ =24.49262?1.39334X+0.05452X2.

Bootstrap and Jackknife 211
The residual plots for Model 2 are shown in Figure 7.3. An easy way to
get several residual plots is by plot(L2). Alternately, similar plots can be
displayed as follows.
par(mfrow = c(2, 2)) #layout for graphs
plot(L2$fit, L2$res) #residuals vs fitted values
abline(0, 0) #reference line
qqnorm(L2$res) #normal probability plot
qqline(L2$res) #reference line
par(mfrow = c(1, 1)) #restore display
Part of the summary for the fitted quadratic model is below.
Residuals:
Min 1Q Median 3Q Max
-8.4335 -2.7006 -0.2754 2.5446 12.2665
Residual standard error: 4.098 on 50 degrees of freedom
Multiple R-Squared: 0.5931, Adjusted R-squared: 0.5768
In the quadratic model the predictors X and X2 are highly correlated. See
poly for another approach with orthogonalpolynomials. (cid:5)
15 20 25 30 35
01
5
0
5?
L2$fit
ser$2L
?2 ?1 0 1 2
01
5
0
5?
Normal Q?Q Plot
Theoretical Quantiles
selitnauQ
elpmaS
FIGURE 7.3: Residuals of the quadratic model for ironslag data, from
Example 7.17.

212 Statistical Computing with R
Exercises
7.1 Compute a jackknife estimate ofthe bias andthe standarderrorofthe corre-
lation statistic in Example 7.2.
7.2 Refertothelawdata(bootstrap). Usethejackknife-after-bootstrapmethod
to estimate the standard error of the bootstrap estimate of se(R).
7.3 Obtain a bootstrap t confidence interval estimate for the correlationstatistic
in Example 7.2 (law data in bootstrap).
7.4 Refer to the air-conditioning data set airconditprovided in the boot pack-
age. The 12 observations are the times in hours between failures of air-
conditioning equipment [63, Example 1.1]:
3,5,7,18,43,85,91,98,100,130,230,487.
Assume that the times between failures follow an exponential model Exp(?).
Obtain the MLE of the hazard rate ? and use bootstrap to estimate the bias
and standard error of the estimate.
7.5 Refer to Exercise 7.4. Compute 95% bootstrap confidence intervals for the
mean time between failures 1/? by the standard normal, basic, percentile,
and BCa methods. Compare the intervals and explain why they may differ.
7.6 EfronandTibshiranidiscussthescor (bootstrap)testscoredataon88stu-
dentswhotookexaminationsinfivesubjects[84,Table7.1],[188,Table1.2.1].
The first two tests (mechanics, vectors) were closed book and the last three
tests (algebra, analysis, statistics) were open book. Each row of the data
frame is a set of scores (xi1 ,...,xi5 ) for the ith student. Use a panel display
todisplaythescatterplotsforeachpairoftestscores. Comparetheplotwith
the sample correlation matrix. Obtain bootstrap estimates of the standard
errors for each of the following estimates: ?ˆ = ?ˆ(mec, vec), ?ˆ = ?ˆ(alg,
12 34
ana), ?ˆ =?ˆ(alg, sta), ?ˆ =?ˆ(ana, sta).
35 45
7.7 RefertoExercise7.6. EfronandTibshiranidiscussthefollowingexample[84,
Ch. 7]. The five-dimensional scores data have a 5 × 5 covariance matrix ?,
with positive eigenvalues ? >···>? . In principal components analysis,
1 5
?
? = (cid:10) 1
5
j=1
?j
measures the proportion of variance explained by the first principal compo-
nent. Let ?ˆ > ··· > ?ˆ be the eigenvalues of ?ˆ, where ?ˆ is the MLE of ?.
1 5
Compute the sample estimate
?ˆ
?ˆ= (cid:10) 1
5
j=1
?ˆ
j

Bootstrap and Jackknife 213
of ?. Use bootstrap to estimate the bias and standard error of ?ˆ.
7.8 Refer to Exercise 7.7. Obtain the jackknife estimates of bias and standard
error of ?ˆ.
7.9 Refer to Exercise 7.7. Compute 95% percentile and BCa confidence intervals
for ?ˆ.
7.10 In Example 7.18, leave-one-out (n-fold) cross validation was used to select
the best fitting model. Repeat the analysis replacing the Log-Log model
with a cubic polynomial model. Which of the four models is selected by the
cross validation procedure? Which model is selected according to maximum
adjusted R2?
7.11 InExample7.18,leave-one-out(n-fold)crossvalidationwasusedtoselectthe
bestfitting model. Useleave-two-outcrossvalidationtocomparethe models.
Projects
7.A Conduct a Monte Carlo study to estimate the coverage probabilities of the
standardnormalbootstrapconfidenceinterval,thebasicbootstrapconfidence
interval, and the percentile confidence interval. Sample from a normal pop-
ulation and check the empirical coverage rates for the sample mean. Find
the proportionoftimes that the confidence intervals miss onthe left, andthe
porportion of times that the confidence intervals miss on the right.
7.B Repeat Project 7.A for the sample skewness statistic. Compare the coverage
rates for normal populations (skewness 0) and ?2(5) distributions (positive
skewness).

Chapter 8
Permutation Tests
8.1 Introduction
Permutation tests are based on resampling, but unlike the ordinary boot-
strap,thesamplesaredrawnwithoutreplacement. Permutationtestsareoften
applied as a nonparametric test of the general hypothesis
H :F =G vs H :F (cid:13)=G, (8.1)
0 1
where F and G are two unspecified distributions. Under the null hypothesis,
two samples from F and G, and the pooled sample, are all random samples
from the same distribution F. Replicates of a two sample test statistic that
compares the distributions are generated by resampling without replacement
from the pooled sample. Nonparametric tests of independence, association,
location, common scale, etc. can also be implemented as permutation tests.
For example, in a test of multivariate independence
H :F =F F vs H :F (cid:13)=F F (8.2)
0 X,Y X Y 1 X,Y X Y
under the null hypothesis the data in a sample need not be matched, and all
pairs of samples obtained by permutations of the rowlabels (observations)of
either sample are equally likely. Any statistic that measures dependence can
be applied in a permutation test.
Permutationtests also can be applied to multi-sample problems, with sim-
ilar methodology. For example, to test
H
0
:F
1
=···=Fk vs H
1
:Fi (cid:13)=Fj for some i,j (8.3)
the samples are drawn without replacement from the k pooled samples. Any
test statistic for the multi-sample problemcan then be applied in a permuta-
tion test.
Thischaptercoversseveralapplicationsofpermutationtestsforthegeneral
hypotheses (8.1) and (8.2). See Efron and Tibshirani [84, Ch. 15] or Davison
andHinkley forbackground,examples,andfurther discussionofpermutation
tests.
215

216 Statistical Computing with R
Permutation Distribution
Suppose that two independent randomsamples X
1
,...,Xn and Y
1
,...,Ym
are observed from the distributions FX and FY, respectively. Let Z be the
ordered set {X
1
,...,Xn,Y
1
,...,Ym }, indexed by
? ={1,...,n,n+1,...,n+m}={1,...,N}.
Then Zi = Xi if 1 ? i ? n and Zi = Yi?n if n +1 ? i ? n +m. Let
Z? =(X?,Y?) represent a partition of the pooled sample Z =X ?Y, where
X? hasnelements and Y? has N?n=m elements. ThenZ? correspondsto
a permutation ? of the integers?, w
(cid:11)
he
(cid:12)
re Z
i
? =Z?(i) . The number of possible
N
partitions is equal to the number of different ways to select the first n
(cid:11) n(cid:12)
N
indices of ?(?), hence there are different ways to partition the pooled
n
sample Z into two subsets of size n and m.
The Permutation Lemma [84, p. 207] states that under H : F = F , a
0 X Y
randomly selected Z? has probability
1 n!m!
(cid:11) (cid:12) =
N N!
n
of equaling any of its possible values. That is, if F =F then all permuta-
X Y
tions are equally likely.
If ?ˆ(X,Y) = ?ˆ(Z,?) is a statistic, then the permutation distribution of ?ˆ?
is the distribution of the replicates
(cid:15) (cid:7) (cid:8)(cid:16)
N
{?ˆ?}= ?ˆ(Z, ?j(?)), j =1,...,
n
={?ˆ(j) |?j(?) is a permutation of ?}.
The cdf of ?ˆ? is given by
(cid:7) (cid:8)
N
?1(cid:5)N
F??(t)=P(?ˆ? ?t)= I(?ˆ(j) ?t). (8.4)
n
j=1
Thus,if?ˆisappliedtotestahypothesisandlargevaluesof?ˆaresignificant,
then the permutation test rejects the null hypothesis when ?ˆis large relative
to the distribution of the permutation replicates. The achieved significance
level (ASL) of the observed statistic ?ˆis the probability
(cid:7) (cid:8)
N
?1(cid:5)N
P(?ˆ? ??ˆ)= I(?ˆ(j) ??ˆ),
n
j=1
where?ˆ=?ˆ(Z,?)isthestatisticcomputedontheobservedsample. TheASL
for a lower-tailor two-tail test based on ?ˆis computed in a similar way.

Permutation Tests 217
Inpractice(cid:11),un(cid:12)lessthesamplesizeisverysmall,evaluatingtheteststatistic
N
forallofthe permutationsiscomputationallyexcessive. Anapproximate
n
permutation test is implemented by randomly drawing a large number of
samples without replacement.
Approximate permutation test procedure
1. Compute the observed test statistic ?ˆ(X,Y)=?ˆ(Z,?).
2. For each replicate, indexed b=1,...,B:
(a) Generate a random permutation ?b =?(?).
(b) Compute the statistic ?ˆ(b) =?ˆ?(Z,?b).
3. If large values of ?ˆsupport the alternative, compute the ASL (the em-
pirical p-value) by
3 4
(cid:10)
1+#{?ˆ(b) ??ˆ} 1+ B b=1 I(?ˆ(b) ??ˆ)
pˆ= = .
B+1 B+1
For a lower-tail or two-tail test pˆis computed in a similar way.
4. Reject H at significance level ? if pˆ??.
0
TheformulaforpˆisgivenbyDavisonandHinkley[63,p.159],whostatethat
“at least 99 and at most 999 random permutations should suffice.”
Methods forimplementing anapproximatepermutationtestareillustrated
in the examples that follow. Although the boot function [34] can be used to
generate the replicates, it is not necessary to use boot. For a multivariate
permutation test using boot see the examples in Section 8.3.
Example 8.1 (Permutation distribution of a statistic)
The permutation distribution of a statistic is illustrated for a small sample,
from the chickwts data in R. Weights in grams are recorded, for six groups
ofnewly hatchedchicksfeddifferentsupplements. There aresix types offeed
supplements. A quick graphical summary of the data can be displayed by
boxplot(formula(chickwts)). The plot (not shown) suggests that soybean
and linseed groups may be similar. The distribution of weights for these two
groups are compared below.
attach(chickwts)
x <- sort(as.vector(weight[feed == "soybean"]))
y <- sort(as.vector(weight[feed == "linseed"]))
detach(chickwts)
The ordered chick weights for the two samples are

218 Statistical Computing with R
X: 158 171 193 199 230 243 248 248 250 267 271 316 327 329
Y: 141 148 169 181 203 213 229 244 257 260 271 309
The groups can be compared in several ways. For example, sample means,
sample medians, or other trimmed means can be compared. More generally,
one canask whether the distributions ofthe twovariables differ andcompare
the groups by any statistic that measures a distance between two samples.
Consider the sample mean. If the two samples are drawn from normal
populations with equal variances, we can apply the two-sample t-test. The
samplemeansareX =246.4286andY =218.7500. Thetwosampletstatistic
is T =1.3246. In this problem, however, the distributions of the weights are
unknown. The achieved significance level of T can be computed from the
permutation distribution without requiring distributional assumptions.
The sample sizes are n=14 and m=12, so there are a total of
(cid:7) (cid:8) (cid:7) (cid:8)
n+m 26 26!
= = =9,657,700
n 14 14!12!
different partitions of the pooled sample into two subsets of size 14 and 12.
Thus,evenforsmallsamples,enumeratingallpossiblepartitionsofthepooled
sample is not practical. An alternate approachis to generate a large number
of the permutation samples, to obtain the approximate permutation distrib-
ution of the replicates. Draw a randomsample of n indices from 1:N without
replacement, which determines a randomly selected partition (X?,Y?). In
this way we can generate a large number of the permutation samples. Then
compare the observed statistic T to the replicates T?.
The approximate permutation test procedure is illustrated below with the
two-sample t statistic.
R <- 999 #number of replicates
z <- c(x, y) #pooled sample
K <- 1:26
reps <- numeric(R) #storage for replicates
t0 <- t.test(x, y)$statistic
for (i in 1:R) {
#generate indices k for the first sample
k <- sample(K, size = 14, replace = FALSE)
x1 <- z[k]
y1 <- z[-k] #complement of x1
reps[i] <- t.test(x1, y1)$statistic
}
p <- mean(c(t0, reps) >= t0)
> p
[1] 0.101

Permutation Tests 219
The value of pˆ is the proportion of replicates T? that are at least as large
as the observed test statistic (an approximate p-value). For a two-tail test
the ASL is 2pˆif pˆ? 0.5 (it is 2(1?pˆ) if pˆ> 0.5). The ASL is 0.202 so the
null hypothesisis notrejected. For comparison,the two-samplet-testreports
p-value = 0.198. A histogram of the replicates of T is displayed by
hist(reps, main = "", freq = FALSE, xlab = "T (p = 0.202)",
breaks = "scott")
points(t0, 0, cex = 1, pch = 16) #observed T
which is shown in Figure 8.1. (cid:5)
T (p = 0.202)
ytisneD
?4 ?2 0 2 4
4.0
3.0
2.0
1.0
0.0
D (p = 0.46)
ytisneD
0.1 0.2 0.3 0.4 0.5 0.6 0.7
5
4
3
2
1
0
FIGURE 8.1: Permutationdistribution of replicates in Example 8.1 (left)
and Example 8.2 (right).
8.2 Tests for Equal Distributions
Suppose that X = (X
1
,...,Xn) and Y = (Y
1
,...,Ym) are independent
randomsamples fromdistributions F andGrespectively,andwe wishto test
the hypothesis H : F = G vs the alternative H : F (cid:13)= G. Under the null
0 1
hypothesis,samples X,Y, andthe pooledsampleZ =X?Y, areallrandom
samples from the same distribution F. Moreover, under H , any subset X?
0
of size n from the pooled sample, and its complement Y?, also represent
independent random samples from F.
Supposethat?ˆisatwo-samplestatisticthatmeasuresthedistanceinsome
sense between F and G. Without loss of generality, we can suppose that
large values of ?ˆsupport the alternative F (cid:13)=G. By the permutation lemma,
under the null hypothesis all values of ?ˆ? =?ˆ(X?,Y?) are equally likely. The

220 Statistical Computing with R
permutation distribution of ?ˆ? is given by (8.4), and an exact permutation
testorthe approximatepermutationtestproceduregivenonpage217canbe
applied.
Two-sample tests for univariate data
To apply a permutation test of equal distributions, choose a test statistic
thatmeasuresthedifferencebetweentwodistributions. Forexample,thetwo-
sample Kolmogorov-Smirnov (K-S) statistic or the two-sample Cram´er-von
Mises statistic can be applied in the univariate case. Many other statistics
are in the literature, although the K-S statistic is one of the most widely
applied for univariate distributions. It is applied in the following example.
Example 8.2 (Permutation distribution of the K-S statistic)
In Example 8.1 the means of the soybean and linseed groups were compared.
Supposenowthatweareinterestedintestingforanytypeofdifferenceinthe
two groups. The hypotheses ofinterestareH :F =G vs H :F (cid:13)=G, where
0 1
F isthedistributionofweightofchicksfedsoybeansupplementsandGisthe
distribution of weight of chicks fed linseed supplements. The Kolmogorov-
Smirnovstatistic D is the maximumabsolutedifferencebetweenthe ecdf’s of
the two samples, defined by
D = sup |Fn(zi)?Gm(zi)|,
1?i?N
where Fn is the ecdf of the first sample x
1
,...,xn and Gm is the ecdf of
the second sample y
1
,...,ym. Note that 0 ? D ? 1 and large values of
D support the alternative F (cid:13)= G. The observed value of D = D(X,Y) =
0.2976190can be computed using ks.test. To determine whether this value
of D is strong evidence for the alternative, we compare D with the replicates
D? =D(X?,Y?).
R <- 999 #number of replicates
z <- c(x, y) #pooled sample
K <- 1:26
D <- numeric(R) #storage for replicates
options(warn = -1)
D0 <- ks.test(x, y, exact = FALSE)$statistic
for (i in 1:R) {
#generate indices k for the first sample
k <- sample(K, size = 14, replace = FALSE)
x1 <- z[k]
y1 <- z[-k] #complement of x1
D[i] <- ks.test(x1, y1, exact = FALSE)$statistic
}

Permutation Tests 221
p <- mean(c(D0, D) >= D0)
options(warn = 0)
> p
[1] 0.46
The approximate ASL 0.46 does not support the alternative hypothesis that
distributions differ. A histogram of the replicates of D is displayed by
hist(D, main = "", freq = FALSE, xlab = "D (p = 0.46)",
breaks = "scott")
points(D0, 0, cex = 1, pch = 16) #observed D
which is shown in Figure 8.1. (cid:5)
R note 8.1 In Example 8.2 the Kolmogorov-Smirnov test ks.testgenerates
a warning each time it tries to compute a p-value, because there are ties in
the data. We are not using the p-value, so it is safe to ignore these warnings.
Display of warnings or messages at the console regarding warnings can be
suppressed by options(warn = -1). The default value is warn = 0.
Example 8.3 (Two-sample K-S test)
Test whether the distributions of chick weights for the sunflower and linseed
groups differ. The K-S test can be applied as in Example 8.2.
attach(chickwts)
x <- sort(as.vector(weight[feed == "sunflower"]))
y <- sort(as.vector(weight[feed == "linseed"]))
detach(chickwts)
The sample sizes are n = m = 12, and the observed K-S test statistic is
D = 0.8333. The summary statistics below suggest that the distributions of
weights for these two groups may differ.
> summary(cbind(x, y))
x y
Min. :226.0 Min. :141.0
1st Qu.:312.8 1st Qu.:178.0
Median :328.0 Median :221.0
Mean :328.9 Mean :218.8
3rd Qu.:340.2 3rd Qu.:257.8
Max. :423.0 Max. :309.0
Repeating the simulationinExample8.2withthe sunflowersamplereplacing
the soybean sample produces the following result.
p <- mean(c(D0, D) >= D0)
> p
[1] 0.001

222 Statistical Computing with R
Thus, none of the replicates are as large as the observed test statistic. Here
thesampleevidencesupportsthealternativehypothesisthatthedistributions
differ. (cid:5)
Anotherunivariatetestforthetwo-sampleproblemistheCram´er-vonMises
test[56,281]. TheCram´er-vonMisesstatistic,whichestimatestheintegrated
squared distance between the distributions, is defined by
? ?
(cid:5)n (cid:5)m
W
2
=
(m
m
+
n
n)2
? (Fn(xi)?Gm(xi))2+ (Fn(yj)?Gm(yj))2? ,
i=1 j=1
where Fn is the ecdf of the sample x
1
,...,xn and Gm is the ecdf of the
sampley
1
,...,ym. Largevalues ofW
2
aresignificant. Theimplementationof
the Cram´er-vonMises test is left as an exercise.
The multivariate tests discussed in the next section can also be applied for
testing H :F =G in the univariate case.
0
8.3 Multivariate Tests for Equal Distributions
Classical approaches to the two-sample problem in the univariate case
basedoncomparingempiricaldistributionfunctions,suchastheKolmogorov–
Smirnov and Cram´er-vonMises tests, do not have a natural distribution free
extension to the multivariate case. Multivariate tests based on maximum
likelihood depend on distributional assumptions about the underlying popu-
lations. Hence although likelihood tests may apply in special cases, they do
not apply to the general two-sample or k-sample problem, and may not be
robust to departures from these assumptions.
Many of the procedures that are available for the multivariate two-sample
problem (8.1) require a computational approach for implementation. Bickel
[27] constructed a consistent distribution free multivariate extension of the
univariate Smirnov test by conditioning on the pooled sample. Friedman
and Rafsky [101] proposed distribution free multivariate generalizations of
the Wald-Wolfowitz runs test and Smirnov test for the two-sample problem,
based on the minimal spanning tree of the pooled sample. A class of con-
sistent, asymptotically distribution free tests for the multivariate problem is
based on nearest neighbors [28, 139, 240]. The nearest neighbor tests apply
to testing the k-sample hypothesis when all distributions are continuous. A
multivariate nonparametric test for equal distributions was developed inde-
pendently by Baringhaus and Franz [20] and Sz´ekely and Rizzo [261, 262],
which is implemented as an approximate permutation test. We will discuss
the latter two, the nearest neighbor tests and the energy test [226, 261].

Permutation Tests 223
In the following sections multivariate samples will be denoted by boldface
type. Suppose that
X={X
1
,...,Xn1 }?Rd , Y ={Y
1
,...,Yn2 }?Rd ,
are independent random samples, d ? 1. The pooled data matrix is Z, an
n×d matrix with observations in rows:
? ?
x 1,1 x 1,2 ... x 1,d
? ?
?x 2,1 x 2,2 ... x 2,d?
? . . . ?
? . . . ?
? . . . ?
? ?
Zn×d =
?
?
xn1,1 xn1,2 ... xn1,d?
?, (8.5)
?y 1,1 y 1,2 ... y 1,d ?
? ?
?y 2,1 y 2,2 ... y 2,d ?
? ?
. . .
? . . . ?
. . .
yn2,1 yn2,2 ... yn2,d
where n=n +n .
1 2
Nearest neighbor tests
A multivariate test for equal distributions is based on nearest neighbors.
Thenearestneighbor(NN)tests areatypeoftestbasedonordereddistances
between sample elements, which can be applied when the distributions are
continuous.
Usually the distance is the Euclidean norm (cid:16)zi ?zj (cid:16). The NN tests are
based on the first through rth nearest neighbor coincidences in the pooled
sample. Consider the simplest case, r = 1. For example, if the observed
samples are the weights in Example 8.3
[,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10] [,11] [,12]
x 423 340 392 339 341 226 320 295 334 322 297 318
y 309 229 181 141 260 203 148 169 213 257 244 271
then the first nearest neighbor of x = 423 is x = 392, which are in the
1 3
same sample. The first nearest neighbor of x =226 is y =229, in different
6 2
samples. In general, if the sampled distributions are equal, then the pooled
sample has on average less nearest neighbor coincidences than under the al-
ternativehypothesis. Inthisexample,mostofthenearestneighborsarefound
in the same sample.
Let Z = {X
1
,...,Xn1 ,Y
1
,...,Yn2 } as in (8.5). Denote the first nearest
neighbor of Zi by NN
1
(Zi). Count the number of first nearest neighbor
coincidences by the indicator function Ii(1), which is defined by
Ii(1)=1 if Zi and NN
1
(Zi) belong to the same sample;
Ii(1)=0 if Zi and NN
1
(Zi) belong to different samples.

224 Statistical Computing with R
The first nearest neighbor statistic is the proportion of first nearest neighbor
coincidences
(cid:5)n
1
Tn,1 = Ii(1),
n
i=1
where n = n
1
+n
2
. Large values of Tn,1 support the alternative hypothesis
that the distributions differ.
Similarly, denote the second nearest neighbor of a sample element Zi by
NN
2
(Zi) and define the indicator function Ii(2), which is 1 if NN
2
(Zi) is in
the same sample as Zi and otherwise Ii(2)=0. The second nearest neighbor
statisticisbasedonthefirstandsecondnearestneighborcoincidences,defined
by
(cid:5)n
1
Tn,2 = (Ii(1)+Ii(2)).
2n
i=1
Ingeneral,therth nearestneighborofZiisdefinedtobethesampleelement
Zj satisfying (cid:16)Zi ?Z(cid:12) (cid:16) < (cid:16)Zi ?Zj (cid:16) for exactly r ?1 indices 1 ? (cid:19) ? n,
(cid:19) (cid:13)= i. Denote the rth nearest neighbor of a sample element Zi by NNr(Zi).
For i = 1,...,n the indicator function Ii(r) is defined by Ii(r) = 1 if Zi
and NNr(Zi) belong to the same sample, and otherwise Ii(r) = 0. The Jth
nearestneighborstatisticmeasurestheproportionoffirstthroughJth nearest
neighbor coincidences:
(cid:5)n (cid:5)J
1
Tn,J = Ii(r). (8.6)
nJ
i=1r=1
Underthehypothesisofequaldistributions,thepooledsamplehasonaver-
age less nearest neighbor coincidences than under the alternative hypothesis,
so the test rejects the null hypothesis for large values of Tn,J. Henze [139]
proved that the limiting distribution of a class of nearest neighbor statistics
is normalforany distancegeneratedby anormonRd. Schilling [240]derived
the mean and variance of the distribution of Tn,2 for selected values of n
1
/n
and d in the case of Euclidean norm. In general, the parameters of the nor-
maldistributionmaybedifficulttoobtainanalytically. Ifweconditiononthe
pooled sample to implement an exact permutation test, the procedure is dis-
tribution free. The test can be implemented as an approximate permutation
test, following the procedure outlined on page 217.
Remark 8.1 Nearestneighborstatisticsarefunctionsoftheordereddistances
between sample elements. The sampled distributions are assumed to be con-
tinuous, so there are no ties. Thus, resampling without replacement is the
correct resampling method and the permutation test rather than the ordinary
bootstrap should be applied. In the ordinary bootstrap, many ties would occur
in the bootstrap samples.

Permutation Tests 225
Searchingfor nearestneighborsis notatrivialcomputationalproblem,but
fast algorithms have been developed [25, 12, 13]. A fast nearest neighbor
method nn is available in the knnFinder package. The algorithm uses a kd-
tree. According to the package author Kemp [160], “The advantage of the
kd-tree isthat itruns inO(MlogM)time ...where M is the numberofdata
points using Bentley’s kd-tree.”
Example 8.4 (Finding nearest neighbors)
Thefollowingnumericalexampleillustratestheusageofthenn (knnFinder)
[160] function as a method to find the indices of the first through rth nearest
neighbors. The pooled data matrix Z is assumed to be in the layout (8.5).
library(knnFinder) #for nn function
#generate a small multivariate data set
x <- matrix(rnorm(12), 3, 4)
y <- matrix(rnorm(12), 3, 4)
z <- rbind(x, y)
o <- rep(0, nrow(z))
DATA <- data.frame(cbind(z, o))
NN <- nn(DATA, p = nrow(z)-1)
In the distance matrix below, for example, the first through fifth nearest
neighbors of Z are Z ,Z ,Z ,Z ,Z .
1 4 2 3 5 6
> D <- dist(z)
> round(as.matrix(D), 2)
1 2 3 4 5 6
1 0.00 2.29 2.69 1.88 2.87 3.94
2 2.29 0.00 2.60 3.27 2.45 3.69
3 2.69 2.60 0.00 2.14 0.43 3.52
4 1.88 3.27 2.14 0.00 2.52 3.66
5 2.87 2.45 0.43 2.52 0.00 3.48
6 3.94 3.69 3.52 3.66 3.48 0.00
The indexmatrixreturnedbythe functionnnidentifies the nearestneighbors
as follows. The ith row of $nn.idx on the next page contains the subscripts
(indices) of NN
1
(Zi), NN
2
(Zi),..., the nearest neighbors of Zi. According
to the first row of the index matrix $nn.idx, the indices of the first through
fifth nearest neighbors of Z are 4, 2, 3, 5, and 6, respectively.
1

| 226 |     |     |     | Statistical | Computing | with R |     |     |
| --- | --- | --- | --- | ----------- | --------- | ------ | --- | --- |
> NN$nn.idx
|     | X1 X2             | X3   | X4 X5 |       |                 |             |          |             |
| --- | ----------------- | ---- | ----- | ----- | --------------- | ----------- | -------- | ----------- |
| 1   | 4                 | 2 3  | 5 6   |       |                 |             |          |             |
| 2   | 1                 | 5 3  | 4 6   |       |                 |             |          |             |
| 3   | 5                 | 4 2  | 1 6   |       |                 |             |          |             |
| 4   | 1                 | 3 5  | 2 6   |       |                 |             |          |             |
| 5   | 3                 | 2 4  | 1 6   |       |                 |             |          |             |
| 6   | 5                 | 3 4  | 2 1   |       |                 |             |          |             |
| >   | round(NN$nn.dist, |      |       |       | 2)              |             |          |             |
|     | X1                | X2   | X3    | X4    | X5              |             |          |             |
| 1   | 1.88              | 2.29 | 2.69  | 2.87  | 3.94            |             |          |             |
| 2   | 2.29              | 2.45 | 2.60  | 3.27  | 3.69            |             |          |             |
| 3   | 0.43              | 2.14 | 2.60  | 2.69  | 3.52            |             |          |             |
| 4   | 1.88              | 2.14 | 2.52  | 3.27  | 3.66            |             |          |             |
| 5   | 0.43              | 2.45 | 2.52  | 2.87  | 3.48            |             |          |             |
| 6   | 3.48              | 3.52 | 3.66  | 3.69  | 3.94            |             |          |             |
| In  | this small        | data | set   | it is | easy to compute | the nearest | neighbor | statistics. |
.
| For example, |     | Tn,1 | =2/6=0.333 |     | and |     |     |     |
| ------------ | --- | ---- | ---------- | --- | --- | --- | --- | --- |
(cid:5)n
|     |     |      | 1   |                |     | 1           |     |     |
| --- | --- | ---- | --- | -------------- | --- | ----------- | --- | --- |
|     |     | Tn,2 | =   | (Ii(1)+Ii(2))= |     | (2+1)=0.25. |     |     |
|     |     |      | 2n  |                |     | 12          |     |     |
i=1
(cid:5)
| Example | 8.5     | (Nearest    |        | neighbor | statistic)        |          |                  |          |
| ------- | ------- | ----------- | ------ | -------- | ----------------- | -------- | ---------------- | -------- |
| In this | example | a           | method | of       | computing nearest | neighbor | statistics       | from the |
| result  | of nn   | (knnFinder) |        | is       | shown. Compute    | Tn,3     | for the chickwts | data     |
| from    | Example | 8.3.        |        |          |                   |          |                  |          |
library(knnFinder)
attach(chickwts)
| x   | <- as.vector(weight[feed |     |     |     | == "sunflower"]) |     |     |     |
| --- | ------------------------ | --- | --- | --- | ---------------- | --- | --- | --- |
| y   | <- as.vector(weight[feed |     |     |     | == "linseed"])   |     |     |     |
detach(chickwts)
| z        | <- c(x,                   | y)    |            |        |              |       |               |       |
| -------- | ------------------------- | ----- | ---------- | ------ | ------------ | ----- | ------------- | ----- |
| o        | <- rep(0,                 |       | length(z)) |        |              |       |               |       |
| z        | <- as.data.frame(cbind(z, |       |            |        | o))          |       |               |       |
| NN       | <-                        | nn(z, | p=3)       |        |              |       |               |       |
| The data | and                       | the   | index      | matrix | NN$nn.idxare | shown | on the facing | page. |

Permutation Tests 227
pooled sample $nn.idx
[,1] X1 X2 X3
[1,] 423 1 3 5 2
[2,] 340 2 4 5 9
[3,] 392 3 1 5 2
[4,] 339 4 2 5 9
[5,] 341 5 2 4 9
[6,] 226 6 14 21 23
[7,] 320 7 12 10 13
[8,] 295 8 11 13 12
[9,] 334 9 4 2 5
[10,] 322 10 7 12 9
[11,] 297 11 8 13 12
[12,] 318 12 7 10 13 I=1 if index <= 12
--------------------------------------------------------
[13,] 309 13 12 7 11 I=1 if index > 12
[14,] 229 14 6 23 21
[15,] 181 15 20 18 21
[16,] 141 16 19 20 15
[17,] 260 17 22 24 23
[18,] 203 18 21 15 6
[19,] 148 19 16 20 15
[20,] 169 20 15 19 16
[21,] 213 21 18 6 14
[22,] 257 22 17 23 24
[23,] 244 23 22 14 17
[24,] 271 24 17 22 8
The first three nearest neighbors of each sample element Zi are in the ith
row. In the first block, count the number of entries that are between 1 and
n = 12. In the second block, count the number of entries that are between
1
n +1=13 and n +n =24.
1 1 2
block1 <- NN$nn.idx[1:12, ]
block2 <- NN$nn.idx[13:24, ]
i1 <- sum(block1 < 12.5)
i2 <- sum(block2 > 12.5)
> c(i1, i2)
[1] 29 29
Then
(cid:5)n (cid:5)3
1 1 58
Tn,3 = Ii(j)= (29+29)= =0.8055556.
3n 3(24) 72
i=1j=1
(cid:5)

228 Statistical Computing with R
Example 8.6 (Nearest neighbor test)
The permutation test for Tn,3 in Example 8.5 can be applied using the boot
function in the boot package [34] as follows.
library(boot)
Tn3 <- function(z, ix, sizes) {
n1 <- sizes[1]
n2 <- sizes[2]
n <- n1 + n2
z <- z[ix, ]
o <- rep(0, NROW(z))
z <- as.data.frame(cbind(z, o))
NN <- nn(z, p=3)
block1 <- NN$nn.idx[1:n1, ]
block2 <- NN$nn.idx[(n1+1):n, ]
i1 <- sum(block1 < n1 + .5)
i2 <- sum(block2 > n1 + .5)
return((i1 + i2) / (3 * n))
}
N <- c(12, 12)
boot.obj <- boot(data = z, statistic = Tn3,
sim = "permutation", R = 999, sizes = N)
Note: Thepermutationsamplescanalsobegeneratedbythesamplefunction.
The result of the simulation is
> boot.obj
DATA PERMUTATION
Call: boot(data = z, statistic = Tn3, R = 999,
sim = "permutation", sizes = N)
Bootstrap Statistics :
original bias std. error
t1* 0.8055556 -0.3260066 0.07275428
The output from boot does not include a p-value, of course, because boot
has no way of knowing what hypotheses are being tested. What is printed at
the console is a summary of the boot object. The boot object itself is a list
that contains several things including the permutation replicates of the test
statistic. The testdecisioncanbe obtainedfromthe observedstatistic in$t0
and the replicates in $t.
> tb <- c(boot.obj$t, boot.obj$t0)
> mean(tb >= boot.obj$t0)
[1] 0.001
The ASL is pˆ = 0.001, so the hypothesis of equal distributions is rejected.
The histogram of replicates of Tn,3 is shown in Figure 8.2.

Permutation Tests 229
hist(tb, freq=FALSE, main="",
xlab="replicates of T(n,3) statistic")
points(boot.obj$t0, 0, cex=1, pch=16)
(cid:5)
replicates of T(n,3) statistic
ytisneD
0.3 0.4 0.5 0.6 0.7 0.8
6
5
4
3
2
1
0
FIGURE 8.2: Permutation distribution of Tn,3 in Example 8.6.
The multivariate rth nearest neighbor test can be implemented by an ap-
proximate permutation test. The steps are to write a general function that
computes the statistic Tn,r for any given (n
1
,n
2
,r) and permutation of the
row indices of the pooled sample. Thenapply bootor generatepermutations
using sample, similar to the implementation of the permutation test shown
in Example 8.6.
Energy test for equal distributions
The energy distance or e-distance statistic E n is defined by
(cid:7)
n n 2
(cid:5)n1 (cid:5)n2
E n =e(X,Y)= 1 2 (cid:16)Xi ?Yj (cid:16)
n +n n n
1 2 1 2 i=1j=1
(cid:8)
1
(cid:5)n1 (cid:5)n1
1
(cid:5)n2 (cid:5)n2
? (cid:16)Xi ?Xj (cid:16)? (cid:16)Yi ?Yj (cid:16) . (8.7)
n2 n2
1 i=1j=1 2 i=1j=1
On the name “energy” and concept of energy statistics in general see [258,
259]. The non-negativity of e(X,Y) is a special case of the following in-

230 Statistical Computing with R
equality. If X,X(cid:5),Y,Y(cid:5) are independent random vectors in Rd with finite
expectations, X = D X(cid:5) and Y = D Y(cid:5), then
2E(cid:16)X?Y(cid:16)?E(cid:16)X?X (cid:5)(cid:16)?E(cid:16)Y ?Y (cid:5)(cid:16)?0, (8.8)
andequalityholdsifandonlyifX andY areidenticallydistributed[262,263].
The E distance between the distribution of X and Y is
E(X,Y)=2E(cid:16)X?Y(cid:16)?E(cid:16)X?X (cid:5)(cid:16)?E(cid:16)Y ?Y (cid:5)(cid:16)
and the empirical distance E n = e(X,Y) is a constant times the plug-in
estimator of E(X,Y).
Clearlylargee-distancecorrespondstodifferentdistributions,andmeasures
the distancebetweendistributions in asimilar senseasthe univariateempiri-
caldistributionfunction(edf)statistics. Incontrasttoedfstatistics,however,
e-distancedoes notdependonthe notionofa sortedlist, ande-distanceis by
definition a multivariate measure of distance between distributions.
If X and Y are not identically distributed, and n = n
1
+n
2
, then E[E n]
is asymptotically a positive constant times n. As the sample size n tends to
infinity, under the null hypothesis E[E n] tends to a positive constant, while
underthealternativehypothesisE[E n]tendstoinfinity. Notonlytheexpected
valueofE n,butE nitself,converges(indistribution)underthenullhypothesis,
and tends to infinity (stochastically)otherwise. A test for equaldistributions
based on E n is universally consistent against all alternatives with finite first
moments [261, 262]. The asymptotic distribution of E n is a quadratic form
of centered Gaussian random variables, with coefficients that depend on the
distributions of X and Y.
To implement the test, suppose that Z is the n × d data matrix of the
pooled sample as in (8.5). The permutation operation is applied to the row
indices of Z. The calculation of the test statistic has O(n2) time complexity,
wheren=n +n isthesizeofthepooledsample. (Intheunivariatecasethe
1 2
statistic can be written as a linear combination of the order statistics, with
O(nlogn) complexity.)
Example 8.7 (Two-sample energy statistic)
The approximate permutation energy test is implemented in eqdist.etest
in the energypackage [226]. However,in order to illustrate the details ofthe
implementation for a multivariate permutation test, we provide an R version
below. Note that the energy implementation is considerably faster than the
example below, because in eqdist.etestthe calculation of the test statistic
is implemented in an external C library.
The E n statistic is a function of the pairwise distances between sample ele-
ments. The distances remain invariantunder any permutation of the indices,
so it is not necessary to recalculate distances for each permutation sample.

Permutation Tests 231
However, it is necessary to provide a method for looking up the correct dis-
tance in the original distance matrix given the permutation of indices.
edist.2 <- function(x, ix, sizes) {
# computes the e-statistic between 2 samples
# x: Euclidean distances of pooled sample
# sizes: vector of sample sizes
# ix: a permutation of row indices of x
dst <- x
n1 <- sizes[1]
n2 <- sizes[2]
ii <- ix[1:n1]
jj <- ix[(n1+1):(n1+n2)]
w <- n1 * n2 / (n1 + n2)
# permutation applied to rows & cols of dist. matrix
m11 <- sum(dst[ii, ii]) / (n1 * n1)
m22 <- sum(dst[jj, jj]) / (n2 * n2)
m12 <- sum(dst[ii, jj]) / (n1 * n2)
e <- w * ((m12 + m12) - (m11 + m22))
return (e)
}
Below, the simulated samples in Rd are generated from distributions that
differ in location. The first distribution is centered at µ = (0,...,0)T and
1
the second distribution is centered at µ =(a,...,a)T.
2
d <- 3
a <- 2 / sqrt(d)
x <- matrix(rnorm(20 * d), nrow = 20, ncol = d)
y <- matrix(rnorm(10 * d, a, 1), nrow = 10, ncol = d)
z <- rbind(x, y)
dst <- as.matrix(dist(z))
> edist.2(dst, 1:30, sizes = c(20, 10))
[1] 9.61246
The observed value of the test statistic is E n =9.61246. (cid:5)
Thefunctionedist.2isdesignedtobeusedwiththeboot (boot)function
[34] to perform the permutation test. Alternately, generate the permutation
vectors ix using the sample function. The boot method is shown in the
following example.

232 Statistical Computing with R
Example 8.8 (Two-sample energy test)
This example shows how to apply the boot function to perform an approxi-
mate permutation test using a multivariate test statistic function. Apply the
permutation test to the data matrix z in Example 8.7.
library(boot) #for boot function
dst <- as.matrix(dist(z))
N <- c(20, 10)
boot.obj <- boot(data = dst, statistic = edist.2,
sim = "permutation", R = 999, sizes = N)
> boot.obj
DATA PERMUTATION
Call: boot(data = dst, statistic = edist.2, R = 999,
sim = "permutation", sizes = N)
Bootstrap Statistics :
original bias std. error
t1* 9.61246 -7.286621 1.025068
The permutation vectors generated by boot will have the same length as the
data argument. If data is a vector then the permutation vector generated
by boot will have length equal to the data vector. If data is a matrix, then
the permutation vector will have length equal to the number of rows of the
matrix. Forthis reason,itisnecessaryto convertthe distobjectto ann×n
distance matrix.
The ASL is computed from the replicates in the bootstrap object.
e <- boot.obj$t0
tb <- c(e, boot.obj$t)
mean(tb >= e)
[1] 0.001
hist(tb, main = "", breaks="scott", freq=FALSE,
xlab="Replicates of e")
points(e, 0, cex=1, pch=16)
None of the replicates exceed the observedvalue 9.61246of the test statis-
tic. The approximate achieved significance level is 0.001, and we reject the
hypothesisofequaldistributions. ReplicatesofE n areshowninFigure8.3(a).
Thelargeestimateofbiasreportedbythebootfunctiongivesanindication
that the test statistic is large, because E(X,Y) ? 0 and E(X,Y) = 0 if and
only if the sampled distributions are equal.

Permutation Tests 233
Finally, let us check the result of the test when the sampled distributions
are identical.
d <- 3
a <- 0
x <- matrix(rnorm(20 * d), nrow = 20, ncol = d)
y <- matrix(rnorm(10 * d, a, 1), nrow = 10, ncol = d)
z <- rbind(x, y)
dst <- as.matrix(dist(z))
N <- c(20, 10)
dst <- as.matrix(dist(z))
boot.obj <- boot(data = dst, statistic = edist.2,
sim="permutation", R=999, sizes=N)
> boot.obj
...
Bootstrap Statistics :
original bias std. error
t1* 1.664265 0.7325929 1.051064
e <- boot.obj$t0
E <- c(boot.obj$t, e)
mean(E >= e)
[1] 0.742
hist(E, main = "", breaks="scott",
xlab="Replicates of e", freq=FALSE)
points(e, 0, cex=1, pch=16)
Inthesecondexampletheapproximateachievedsignificancelevelis0.742and
the hypothesis ofequaldistributions is not rejected. Notice thatthe estimate
of bias here is small. The histogramof replicates is shownin Figure 8.3(b). (cid:5)
The E distance and two-sample e-statistic E n are easily generalized to the
k-sample problem. See e.g. the function edist (energy), which returns a
dissimilarity object like the dist object.
Example 8.9 (k-sample energy distances)
The function edist.2 in Example 8.7 is a two-sample version of the func-
tion edist in the energy package [226], which summarizes the empirical E-
distances between k ?2 samples. The syntax is
edist(x, sizes, distance=FALSE, ix=1:sum(sizes), alpha=1)
The argument alpha is an exponent 0<??2 on the Euclidean distance.

234 Statistical Computing with R
Replicates of e
ytisneD
2 4 6 8 10
5.0
4.0
3.0
2.0
1.0
0.0
Replicates of e
(a)
ytisneD
2 4 6 8
5.0
4.0
3.0
2.0
1.0
0.0
(b)
FIGURE 8.3: Permutationdistributionofthe two-samplee-statisticrepli-
cates in Example 8.7.
It can be shown that for all 0 < ? < 2 the corresponding e(?)-distance
determines a statistically consistent test of equal distributions for all random
vectors with finite first moments [262].
Considerthefour-dimensionalirisdata. Computethee-distancematrixfor
the three species of iris.
library(energy) #for edist
z <- iris[ , 1:4]
dst <- dist(z)
> edist(dst, sizes = c(50, 50, 50), distance = TRUE)
1 2
2 123.55381
3 195.30396 38.85415
Atestforthek-samplehypothesisofequaldistributionsisbasedonk-sample
e-distances with a suitable weight function. (cid:5)
Comparison of nearest neighbor and energy tests
Example 8.10 (Power comparison)
In a simulation experiment, we compared the empirical power of the third
nearest neighbor test based on Tn,3 (8.6) and the energy test based on E n
(8.7). The distributions compared,
F =N (µ=(0,0)2,?=I ), F =N (µ=(0,?) T ,?=I ),
1 2 2 2 2 2
differ in location. The empirical power was estimated for ? = 0,0.5,0.75,1,
froma simulationof permutationtests on 10,000pairsofsamples. Eachper-

Permutation Tests 235
mutation test decision was based on 499 permutation replicates (each entry
in the table required 5·106 calculations of the test statistic). Empirical re-
sults are given below for selected alternatives, sample sizes, and dimension,
at significance level ? = 0.1. Both the E n and Tn,3 statistics achieved ap-
proximately correct empirical significance in our simulations (see case ? = 0
in Table 8.1), although the Type I errorrate for Tn,3 may be slightly inflated
when n is small.
TABLE 8.1: Significant Tests (nearest whole percent
at ?=0.1, se?0.5%) of Bivariate Normal Location
Alternatives F =N ((0,0)T,I ), F =N ((0,?)T,I )
1 2 2 2 2 2
? =0 ? =0.5 ? =0.75 ? =1
n 1 n 2 E n Tn,3 E n Tn,3 E n Tn,3 E n Tn,3
10 10 10 12 23 19 40 29 58 42
15 15 9 11 30 21 53 34 75 52
20 20 10 12 37 23 64 38 86 58
25 25 10 11 43 25 73 42 93 65
30 30 10 11 48 25 81 47 96 70
40 40 11 10 59 28 90 52 99 78
50 50 10 11 69 29 95 58 100 82
75 75 10 11 85 37 99 69 100 93
100 100 10 10 92 40 100 79 100 100
These alternatives differ in location only, and the empirical evidence summa-
rized in Table 8.1 suggests that E n is more powerful than Tn,3 against this
class of alternatives. (cid:5)
8.4 Application: Distance Correlation
A test of independence of random vectors X ?Rp and Y ?Rq
H
0
:FXY =FXFY vs H
1
:FXY (cid:13)=FXFY
can be implemented as a permutation test. The permutation test does not
require distributional assumptions, or any type of model specification for the
dependence structure. Not many universally consistent nonparametric tests
exist for the general hypothesis above. In this section we will discuss a new
multivariate nonparametric test of independence based on distance correla-
tion [265] thatis consistentagainstall dependent alternativeswith finite first
moments. The test will be implemented as a permutation test.

236 Statistical Computing with R
Distance Correlation
Distance correlationis a new measure of dependence between random vec-
torsintroducedbySz´ekely,Rizzo,andBakirov[265]. Foralldistributionswith
finite firstmoments,distance correlationR generalizesthe idea ofcorrelation
in two fundamental ways:
1. R(X,Y) is defined for X and Y in arbitrary dimension.
2. R(X,Y)=0 characterizes independence of X and Y.
Distance correlation satisfies 0 ? R ? 1, and R = 0 only if X and Y are
independent. Distance covariance V provides a new approachto the problem
of testing the joint independence of random vectors. The formal definitions
of the population coefficients V and R are given in [265]. The definitions of
the empirical coefficients are as follows.
Definition 8.1 The empirical distance covariance V n(X,Y) is the nonnega-
tive number defined by
(cid:5)n
1
V
n
2(X,Y)=
n2
AklBkl, (8.9)
k,l=1
where Akl and Bkl are defined in equations (8.11-8.12) below. Similarly,
V n(X) is the nonnegative number defined by
(cid:5)n
1
V2(X)=V2(X,X)= A2 . (8.10)
n n n2 kl
k,l=1
The formulas for Akl and Bkl in (8.9–8.10)are given by
Akl =akl ?a¯k. ?a¯.l+a¯..; (8.11)
Bkl =bkl ?¯bk. ?¯b.l+¯b.., (8.12)
where
akl =(cid:16)Xk ?Xl (cid:16) p, bkl =(cid:16)Yk ?Yl (cid:16) q, k,l=1,...,n,
and the subscript “.” denotes that the mean is computed for the index that
it replaces. Note that these formulas are similar to computing formulas in
analysis of variance, so the distance covariance statistic is very easy to com-
pute. Although it may not be obvious that V2(X,Y)?0, this fact as well as
n
the motivation for the definition of V n is explained in [265].
Definition 8.2 The empirical distance correlation R n(X,Y) is the square
root of (cid:13)
?V n 2(X,Y) ,V2(X)V2(Y)>0;
R2
n
(X,Y)= V
n
2(X)V
n
2(Y) n n (8.13)
0, V2(X)V2(Y)=0.
n n

Permutation Tests 237
The asymptotic distribution of nV2 is a quadratic form of centered Gaussian
n
randomvariables,withcoefficientsthatdependonthe distributionsofX and
Y. For the general problem of testing independence when the distributions
of X and Y are unknown, the test based on nV2 can be implemented as a
n
permutation test.
Beforeproceeding to the details of the permutationtest, we implement the
calculation of the distance covariance statistic (dCov).
Example 8.11 (Distance covariance statistic)
InthedistancecovariancefunctiondCov,operationsontherowsandcolumns
of the distance matrix generate the matrix with entries Akl. Note that each
term
Akl =akl ?a¯k. ?a¯.l+a¯..; akl =(cid:16)Xk ?Xl (cid:16)
is a functionofthe distance matrixofthe X sample. Inthe functionAkl,the
sweep operator is used twice. The first sweep subtracts a¯.l, the row means,
from the distances akl. The second sweep subtracts a¯k., the column means,
from the result of the first sweep. (The column means and row means are
equal because the distance matrix is symmetric.) If the samples are x and y,
thenthematrixA=(Akl)isreturnedbyAkl(x)andthematrixB =(Bkl)is
returnedby Akl(y). Theremainingcalculationsaresimplefunctions ofthese
two matrices.
dCov <- function(x, y) {
x <- as.matrix(x)
y <- as.matrix(y)
n <- nrow(x)
m <- nrow(y)
if (n != m || n < 2) stop("Sample sizes must agree")
if (! (all(is.finite(c(x, y)))))
stop("Data contains missing or infinite values")
Akl <- function(x) {
d <- as.matrix(dist(x))
m <- rowMeans(d)
M <- mean(d)
a <- sweep(d, 1, m)
b <- sweep(a, 2, m)
return(b + M)
}
A <- Akl(x)
B <- Akl(y)
dCov <- sqrt(mean(A * B))
dCov
}

238 Statistical Computing with R
A simple example to try out the dCov function is the following. Compute
V n forthebivariatedistributionsofirissetosa(petallength,petalwidth)and
(sepal length, sepal width).
z <- as.matrix(iris[1:50, 1:4])
x <- z[ , 1:2]
y <- z[ , 3:4]
# compute the observed statistic
> dCov(x, y)
[1] 0.06436159
The returned value is V n = 0.06436159. Here n = 50 so the test statistic for
.
a test of independence is nV2 =0.207. (cid:5)
n
Example 8.12 (Distance correlation statistic)
The distance covariance must be computed to get the distance correlation
statistic. Ratherthancallthedistancecovariancefunctionthreetimes,which
means repeated calculation of the distances and the A and B matrices, it is
more efficient to combine all operations in one function.
DCOR <- function(x, y) {
x <- as.matrix(x)
y <- as.matrix(y)
n <- nrow(x)
m <- nrow(y)
if (n != m || n < 2) stop("Sample sizes must agree")
if (! (all(is.finite(c(x, y)))))
stop("Data contains missing or infinite values")
Akl <- function(x) {
d <- as.matrix(dist(x))
m <- rowMeans(d)
M <- mean(d)
a <- sweep(d, 1, m)
b <- sweep(a, 2, m)
return(b + M)
}
A <- Akl(x)
B <- Akl(y)
dCov <- sqrt(mean(A * B))
dVarX <- sqrt(mean(A * A))
dVarY <- sqrt(mean(B * B))
dCor <- sqrt(dCov / sqrt(dVarX * dVarY))
list(dCov=dCov, dCor=dCor, dVarX=dVarX, dVarY=dVarY)
}

Permutation Tests 239
Applying the function DCOR to the iris data we obtain all of the distance
dependence statistics in one step.
z <- as.matrix(iris[1:50, 1:4])
x <- z[ , 1:2]
y <- z[ , 3:4]
> unlist(DCOR(x, y))
dCov dCor dVarX dVarY
0.06436159 0.61507138 0.28303069 0.10226284
(cid:5)
Permutation tests of independence
A permutation test of independence is implemented as follows. Suppose
that X ? Rp and Y ? Rq and Z = (X,Y). Then Z is a random vector in
Rp+q. In the following,we suppose that a randomsample is in an n×(p+q)
data matrix Z with observations in rows:
? ?
x 1,1 x 1,2 ... x 1,p y 1,1 y 1,2 ... y 1,q
? ?
?x 2,1 x 2,2 ... x 2,p y 2,1 y 2,2 ... y 2,q?
Zn×d =?
?
.
.
.
.
.
.
?
?
.
. . .
xn,1 xn,2 ... xn,p yn,1 yn,2 ... xn,q
Let? bethe rowlabelsofthe X sampleandlet ? be therowlabelsofthe
1 2
Y sample. Then(Z,? ,? ) is the sample fromthe jointdistributionofX and
1 2
Y. If X and Y are dependent, the samples must be paired and the ordering
oflabels ? cannotbe changedindependently of? . Under independence, the
2 1
samplesX andY neednotbematched. Anypermutationofthe rowlabelsof
the X or Y sample generates a permutation replicate. The permutation test
procedure for independence permutes the row indices of one of the samples
(it is not necessary to permute both ? and ? ).
1 2
Approximate permutation test procedure for independence
Let ?ˆbe a two sample statistic for testing multivariate independence.
1. Compute the observed test statistic ?ˆ(X,Y)=?ˆ(Z,? ,? ).
1 2
2. For each replicate, indexed b=1,...,B:
(a) Generate a random permutation ?b =?(?
2
).
(b) Compute the statistic ?ˆ(b) =?ˆ?(Z,?b)=?ˆ(X,Y?,?(?
2
)).
3. If large values of ?ˆsupport the alternative, compute the ASL by
3 4
(cid:10)
1+#{?ˆ(b) ??ˆ} 1+ B b=1 I(?ˆ(b) ??ˆ)
pˆ= = .
B+1 B+1

240 Statistical Computing with R
The ASL for a lower-tail or two-tail test based on ?ˆ is computed in a
similar way.
4. Reject H at significance level ? if pˆ??.
0
Example 8.13 (Distance covariance test)
This example tests whether the bivariate distributions (petal length, petal
width) and (sepal length, sepal width) of iris setosa are independent. To
implement a permutation test, write a function to compute the replicates of
the test statistic nV2 that takes as its first argument the data matrix and as
n
its second argument the permutation vector.
ndCov2 <- function(z, ix, dims) {
#dims contains dimensions of x and y
p <- dims[1]
q1 <- dims[2] + 1
d <- p + dims[2]
x <- z[ , 1:p] #leave x as is
y <- z[ix, q1:d] #permute rows of y
return(nrow(z) * dCov(x, y)^2)
}
library(boot)
z <- as.matrix(iris[1:50, 1:4])
boot.obj <- boot(data = z, statistic = ndCov2, R = 999,
sim = "permutation", dims = c(2, 2))
tb <- c(boot.obj$t0, boot.obj$t)
hist(tb, nclass="scott", xlab="", main="",
freq=FALSE)
points(boot.obj$t0, 0, cex=1, pch=16)
> mean(tb >= boot.obj$t0)
[1] 0.066
> boot.obj
DATA PERMUTATION
Call: boot(data = z, statistic = ndCov2, R = 999,
sim = "permutation", dims = c(2, 2))
Bootstrap Statistics :
original bias std. error
t1* 0.2071207 -0.05991699 0.0353751
Theachievedsignificancelevelis0.066sothenullhypothesisofindependence
is rejected at ? = 0.10. The histogram of replicates of the dCov statistic is
shown in Figure 8.4. (cid:5)

Permutation Tests 241
ytisneD
0.10 0.15 0.20 0.25 0.30 0.35
51
01
5
0
FIGURE 8.4: Permutation replicates of dCov in Example 8.13.
One of the advantages of the dCov test is that it is sensitive to all types of
dependence structures in data. Procedures based on the classical definition
of covariance, or measures of association based on ranks are generally less
effective against non-monotone types of dependence. An alternative with
non-monotone dependence is tested in the following example.
Example 8.14 (Power of dCov)
Consider the data generated by the following nonlinear model. Suppose that
Yij =Xij?ij, i=1,...,n, j =1,...,5,
where X ? N (0,I ) and ? ? N (0,?2I ) are independent. Then X and Y
5 5 5 5
are dependent, but if the parameter ? is large, the dependence can be hard
to detect. We compared the permutation test implementation of dCov with
the parametricWilks Lambda (W) likelihoodratio test [296] using Bartlett’s
approximation for the critical value (see e.g. [188, Sec. 5.3.2b]). Recall that
Wilks Lambda tests whether the covariance ? = Cov(X,Y) is the zero
12
matrix.
Froma powercomparisonwith 10,000test decisions for eachof the sample
sizes we have obtained the results shown in Table 8.2 and Figure 8.5. Figure
8.5 shows a plot of power vs sample size. Table 8.2 reports the empirical
power for a subset of the cases in the plot.
The dCov test is clearly more powerful in this empirical comparison. This
exampleillustratesthattheparametricWilksLambdatestbasedonproduct-
moment correlation is not always powerful against non-monotone types of
dependence. ThedCovtestisstatistically consistentwithpowerapproaching
1 as n?? (theoretically and empirically). (cid:5)

| 242 |     |     |     | Statistical | Computing | with R |     |     |
| --- | --- | --- | --- | ----------- | --------- | ------ | --- | --- |
0.1
dCov
Wilks
8.0
6.0
rewoP
4.0
2.0
|     |     |     |     | 50 100 |     | 150 200 |     |     |
| --- | --- | --- | --- | ------ | --- | ------- | --- | --- |
n
| FIGURE | 8.5:            | Empirical |       | power        | comparisonof  | the            | distance | covariance test |
| ------ | --------------- | --------- | ----- | ------------ | ------------- | -------------- | -------- | --------------- |
| dCov   | and Wilks       | Lambda    |       | W in Example | 8.14.         |                |          |                 |
|        | TABLE           |           | 8.2:  | Example      | 8.14: Percent | of Significant |          | Tests           |
|        | of Independence |           |       | of Y =X?     | at ?=0.1      | (se?0.5%)      |          |                 |
|        | n               | dCov      |       | W n dCov     |               | W n            | dCov     | W               |
|        | 25              | 48.56     | 38.43 | 55 61.39     |               | 42.74 100      | 75.40    | 44.36           |
|        | 30              | 50.89     | 39.16 | 60 63.09     |               | 42.60 120      | 79.97    | 45.20           |
|        | 35              | 54.56     | 40.86 | 65 63.96     |               | 42.64 140      | 84.51    | 45.21           |
|        | 40              | 55.79     | 41.88 | 70 66.43     |               | 43.08 160      | 87.31    | 45.17           |
|        | 45              | 57.93     | 41.91 | 75 68.32     |               | 44.28 180      | 91.13    | 45.46           |
|        | 50              | 59.63     | 42.05 | 80 70.27     |               | 44.34 200      | 93.43    | 46.12           |
Forpropertiesofdistancecovarianceanddistancecorrelation,proofsofcon-
| vergence                           | and      | consistency, |        | and more | empirical | results,                      | see [265]. | The distance |
| ---------------------------------- | -------- | ------------ | ------ | -------- | --------- | ----------------------------- | ---------- | ------------ |
| correlationandcovariancestatistics |          |              |        |          | andthe    | correspondingpermutationtests |            |              |
| are                                | provided | in the       | energy | package  | [226].    |                               |            |              |
Exercises
8.1 Implement the two-sampleCram´er-vonMises testfor equaldistributions asa
| permutation |     | test. Apply |     | the test to | the data | in Examples | 8.1 | and 8.2. |
| ----------- | --- | ----------- | --- | ----------- | -------- | ----------- | --- | -------- |
8.2 Implement the bivariate Spearman rank correlation test for independence
| [255] | as a permutation |     | test. | The Spearman |     | rank correlationtest |     | statistic can |
| ----- | ---------------- | --- | ----- | ------------ | --- | -------------------- | --- | ------------- |

|               |              |          | Permutation |                 | Tests  |               |     |         | 243      |
| ------------- | ------------ | -------- | ----------- | --------------- | ------ | ------------- | --- | ------- | -------- |
| be obtained   | from         | function | cor         | with            | method | = "spearman". |     | Compare | the      |
| achieved      | significance | level    | of          | the permutation |        | test with     | the | p-value | reported |
| by cor.teston |              | the same | samples.    |                 |        |               |     |         |          |
8.3 The Count 5 test for equalvariances in Section 6.4 is based on the maximum
| number                  | of extreme | points.     | Example         |        | 6.15   | shows that | the           | Count | 5 criterion |
| ----------------------- | ---------- | ----------- | --------------- | ------ | ------ | ---------- | ------------- | ----- | ----------- |
| is not applicable       |            | for unequal |                 | sample | sizes. | Implement  | a permutation |       | test for    |
| equalvariancebasedonthe |            |             | maximum         |        | number | ofextreme  | points        |       | thatapplies |
| when sample             | sizes      | are         | not necessarily |        | equal. |            |               |       |             |
implementarth-nearestneighborstestforequaldistri-
| 8.4 Complete  | thestepsto  |            |              |            |           |                 |              |          |             |
| ------------- | ----------- | ---------- | ------------ | ---------- | --------- | --------------- | ------------ | -------- | ----------- |
| butions.      | Write a     | function   | to           | compute    | the       | test statistic. | The          | function | should      |
| take the      | data matrix |            | as its first | argument,  |           | and an          | index vector |          | as the sec- |
| ond argument. |             | The number |              | of nearest | neighbors | r               | should       | follow   | the index   |
argument.
Projects
8.A Replicate the power comparison in Example 8.10, reducing the number of
| permutation | tests            | from | 10000 | to 2000         | and | number | of replicates | from  | 499 to |
| ----------- | ---------------- | ---- | ----- | --------------- | --- | ------ | ------------- | ----- | ------ |
| 199. Use    | the eqdist.etest |      |       | (energy)version |     | of the | energy        | test. |        |
8.B The aml (boot) [34] data contains estimates of the times to remission for
| two groups                              | of patients |         | with acute   | myelogenousleukaemia |          |                            | (AML).    |               | One group |
| --------------------------------------- | ----------- | ------- | ------------ | -------------------- | -------- | -------------------------- | --------- | ------------- | --------- |
| received                                | maintenance |         | chemotherapy |                      | treament | and                        | the other | group         | did not.  |
| Seethedescriptionintheamldatahelptopic. |             |         |              |                      |          | FollowingDavisonandHinkley |           |               |           |
| [63, Example                            | 4.12],      | compute |              | the log-rank         |          | statistic                  | and apply | a permutation |           |
testproceduretotestwhetherthesurvivaldistributionsofthetwogroupsare
equal.

Chapter 9
Markov Chain Monte Carlo Methods
9.1 Introduction
MarkovChainMonte Carlo(MCMC) methods encompassageneralframe-
work of methods introduced by Metropolis et al. [197] and Hastings [138] for
Monte Carlo integration. Recall (see Section 5.2) that Monte Carlo integra-
tion estimates the integral
(cid:6)
g(t)dt
A
with a sample mean, by restating the integration problem as an expectation
with respect to some density function f(·). The integration problem then is
reduced to finding a way to generate samples from the target density f(·).
TheMCMCapproachtosamplingfromf(·)istoconstructaMarkovchain
withstationarydistributionf(·),andrunthechainforasufficientlylongtime
until the chain converges (approximately) to its stationary distribution.
This chapter is a brief introduction to MCMC methods, with the goal of
understanding the main ideas and how to implement some of the methods in
R. In the following sections, methods of constructing the Markov chains are
illustrated, such as the Metropolis and Metropolis-Hastings algorithms, and
the Gibbs sampler, with applications. Methods of checking for convergence
are briefly discussed. In addition to references listed in Section 5.1, see e.g.
Casella and George [40], Chen, Shao, and Ibrahim [44], Chib and Greenberg
[47], Gamerman [103], Gelman et al. [108], or Tierney [272]. For a thorough,
accessibletreatmentwithapplications,seeGilks,Richardson,andSpiegelhal-
ter[120]. ForreferenceonMonteCarlomethodsincludingextensivetreatment
of MCMC methods see Robert and Casella [228].
9.1.1 Integration problems in Bayesian inference
Many applications of Markov Chain Monte Carlo methods are problems
that arise in Bayesianinference. From a Bayesianperspective, in a statistical
model both the observables and the parameters are random. Given observed
datax={x
1
,...,xn },andparameters?, xdepends ontheprior distribution
245

246 Statistical Computing with R
f?(?). This dependence is expressed by the likelihood f(x
1
,...,xn |?). The
joint distribution of (x,?) is therefore
fx,?(x,?)=fx|?(x
1
,...,xn |?)f?(?).
Onecanthenupdatethedistributionof?conditionalontheinformationinthe
samplex={x
1
,...,xn },sothatbyBayesTheoremtheposterior distribution
of ? is given by
f?|x(?|x)= (cid:22)
f
f
x
x
|
|
?
?
(
(
x
x
1
1
,
,
.
.
.
.
.
.
,
,
x
x
n
n
|
|
?
?
)
)
f
f
?
?
(
(
?
?
)
)
d?
= (cid:22)
f
f
x
x
|
|
?
?
(
(
x
x
)
)
f
f
?
?
(
(
?
?
)
)
d?
.
Then the conditional expectation of a function g(?) with respect to the pos-
terior density is
(cid:6) (cid:22)
E[g(?|x)]= g(?)f?|x(?)d? =
g
(cid:22)
(?)fx|?(x)f?(?)d?
. (9.1)
fx|?(x)f?(?)d?
To state the problem in more general terms,
(cid:22)
g(t)?(t)dt
(cid:22)
E[g(Y)]= , (9.2)
?(t)dt
where ?(·) is (proportional to) a density or a likelihood.(cid:22) If ?(·) is a density
function,then(9.2)isjusttheusualdefinitionE[g(Y)]= g(t)fY(t)dt. If?(·)
is a likelihood, then the normalizing constant in the denominator is needed.
In Bayesian analysis, ?(·) is a posterior density. The expectation (9.2) can
be evaluated even if ?(·) is known only up to a constant. This simplifies the
problem because in practice the normalizing constant for a posterior density
f?|x(?) is often difficult to evaluate.
The practical problem, however, is that the integrations in (9.2) are of-
ten mathematically intractable, and difficult to compute by numerical meth-
ods, especially in higher dimensions. Markov Chain Monte Carlo provides a
method for this type of integration problem.
9.1.2 Markov Chain Monte Carlo Integration
(cid:22)
The Monte Carloestimate of E[g(?)]= g(?)f?|x(?)d? is the sample mean
(cid:5)m
1
g = g(xi),
m
i=1
where x
1
,...,xm is a sample from the distribution with density f?|x. If
x
1
,...,xm are independent (it is a random sample) then by the laws of large
numbers,thesamplemeangconvergesinprobabilitytoE[g(?)]assamplesize
n tends to infinity. In this case, one can in principle draw as large a Monte

Markov Chain Monte Carlo Methods 247
Carlo sample as required to obtain the desired precision in the estimate g.
Here the first “MC” in “MCMC” is not needed; Monte Carlo integrationcan
be used.
However,inaproblemsuchas(9.1)itmaybequitedifficulttoimplementa
method for generating independent observations from the density f?|x. Nev-
ertheless, even if the sample observationsare dependent, a Monte Carlo inte-
grationcanbe appliedif the observationscanbe generatedsothattheir joint
density is roughly the same as the joint density of a random sample. This is
where the first“MC”comes to the rescue. MarkovChainMonte Carlometh-
odsestimatetheintegralin(9.1)or(9.2)byMonteCarlo integration,andthe
Markov Chain provides the sampler that generates the random observations
from the target distribution.
By a generalization of the strong law of large numbers, if {X ,X ,X ,...}
0 1 2
is a realization of an irreducible, ergodic Markov Chain with stationary dis-
tribution ?, then
(cid:5)m
1
g(X)
m
=
m
g(Xt)
t=0
converges with probability one to E[g(X)] as m ??, where X has the sta-
tionarydistribution?andtheexpectationistakenwithrespectto?(provided
the expectation exists).
For a brief review of discrete-time discrete-state-space Markov Chains see
Section 2.8. For an introduction to Markov chains and stochastic processes
see Ross [234].
9.2 The Metropolis-Hastings Algorithm
The Metropolis-Hastings algorithms are a class of Markov Chain Monte
CarlomethodsincludingthespecialcasesoftheMetropolissampler,theGibbs
sampler, the independence sampler, and the random walk. The main idea
is to generate a Markov Chain {Xt |t = 0,1,2,...} such that its stationary
distribution is the target distribution. The algorithm must specify, for a
givenstate Xt, howto generatethe next stateXt+1 . Inallofthe Metropolis-
Hastings (M-H) sampling algorithms, there is a candidate point Y generated
from a proposal distribution g(·|Xt). If this candidate point is accepted, the
chainmovesto stateY attime t+1andXt+1 =Y;otherwisethe chainstays
in state Xt and Xt+1 = Xt. Note that the proposal distribution can depend
onthe previousstate Xt. Forexample, if the proposaldistribution is normal,
one choice for g(·|Xt) might be Normal(µt =Xt,?2) for some fixed ?2.
Thechoiceofproposaldistributionisveryflexible,but the chaingenerated
bythischoicemustsatisfycertainregularityconditions. Theproposaldistrib-
utionmustbechosensothatthegeneratedchainwillconvergetoastationary

248 Statistical Computing with R
distribution–thetargetdistributionf. Requiredconditionsforthegenerated
chain are irreducibility, positive recurrence, and aperiodicity (see [229]). A
proposaldistributionwiththesamesupportsetasthetargetdistributionwill
usuallysatisfytheseregularityconditions. Referto[121,Ch.7-8],[228,Ch.7]
or [229] for further details on the choice of proposal distribution.
9.2.1 Metropolis-Hastings Sampler
TheMetropolis-Hastings sampler generatestheMarkovchain{X ,X ,...}
0 1
as follows.
1. Choose a proposaldistribution g(·|Xt) (subject to regularityconditions
stated above).
2. Generate X from a distribution g.
0
3. Repeat (until the chain has converged to a stationary distribution ac-
cording to some criterion):
(a) Generate Y from g(·|Xt).
(b) Generate U from Uniform(0,1).
(c) If
U ?
f(Y)g(Xt |Y)
f(Xt)g(Y|Xt)
accept Y and set Xt+1 =Y; otherwise set Xt+1 =Xt.
(d) Increment t.
Observe that in step (3c) the candidate point Y is accepted with probability
(cid:7) (cid:8)
f(Y)g(Xt |Y)
?(Xt,Y)=min 1,
f(Xt)g(Y|Xt)
, (9.3)
so that it is only necessary to know the density of the target distribution f
up to a constant.
Assuming that the proposaldistribution satisfies the regularity conditions,
the Metropolis-Hastings chain will converge to a unique stationary distribu-
tion ?. The algorithm is designed so that the stationary distribution of the
Metropolis-Hastings chain is indeed the target distribution, f.
Suppose(r,s)aretwoelements ofthestate spaceofthe chain,andwithout
loss of generality suppose that f(s)g(r|s)?f(r)g(s|r). Thus, ?(r,s)=1 and
the joint density of (Xt,Xt+1 ) at (r,s) is f(r)g(s|r). The joint density of
(Xt,Xt+1 ) at (s,r) is
(cid:7) (cid:8)
f(r)g(s|r)
f(s)g(r|s)?(s,r)=f(s)g(r|s) =f(r)g(s|r).
f(s)g(r|s)
The transition kernel is
(cid:3) (cid:6) (cid:4)
K(r,s)=?(r,s)g(s|r)+I(s=r) 1? (r,s)g(s|r)ds .
?

Markov Chain Monte Carlo Methods 249
(The second term in K(r,s) arises when the candidate point is rejected and
Xt+1 =Xt.) Hence we have the system of equations
?(r,s)f(r)g(s|r) =?(s,r)f(s)g(r|s),
(cid:3) (cid:6) (cid:4) (cid:3) (cid:6) (cid:4)
I(s=r) 1? (r,s)g(s|r)ds]f(r) =I(r =s) 1? (s,r)g(r|s)ds]f(s)
? ?
for the Metropolis-Hastings chain, and f satisfies the detailed balance condi-
tion K(s,r)f(s) = K(r,s)f(r). Therefore f is the stationary distribution of
the chain. See Theorems 6.46 and 7.2 in [228].
Example 9.1 (Metropolis-Hastings sampler)
Use the Metropolis-Hastings sampler to generate a sample from a Rayleigh
distribution. The Rayleigh density [156, (18.76)] is
f(x)= x e ?x2/(2?2), x?0, ? >0.
?2
The Rayleigh distribution is used to model lifetimes subject to rapid aging,
because the hazar(cid:2)d rate is linearly increasing. The mode of the distribution
is at ?, E[X]=? ?/2 and Var(X)=?2(4??)/2.
For the proposal distribution, try the chisquared distribution with degrees
of freedom Xt. Implementation of a Metropolis-Hastings sampler for this
exampleisasfollows. NotethatthebaseofthearrayinRis1,soweinitialize
the chain at X in x[1].
0
1. Set g(·|X) to the density of ?2(X).
2. Generate X from distribution ?2(1) and store in x[1].
0
3. Repeat for i=2,...,N:
(a) Generate Y from ?2(df=Xt) = ?2(df=x[i-1]).
(b) Generate U from Uniform(0, 1).
(c) With Xt = x[i-1],compute
f(Y)g(Xt |Y)
r(Xt,Y)=
f(Xt)g(Y|Xt)
,
where f is the Rayleigh density with parameter ?, g(Y|Xt) is the
?2(df=Xt)densityevaluatedatY,andg(Xt |Y)isthe?2(df=Y)
density evaluated at Xt.
If U ?r(Xt,Y) acceptY and set Xt+1 =Y; otherwiseset Xt+1 =
Xt. Store Xt+1 in x[i].
(d) Increment t.

250 Statistical Computing with R
The constants in the densities cancel, so
r(xt,y)=
f
f
(
(
x
y
t
)
)
g
g
(
(
x
y
t
|
|
x
y
t
)
)
=
x
y
t
e
e
?
?
y
x
2
2 t
/
/
2
2
?
?
2
2
× ?
?
(
(
x 2
y 2
t)
)
2
2
x
y/
t/
2
2
y
x
x
y t
t/
/
2
2
?
?
1
1
e
e
?
?
y
x
/
t/
2
2 .
Thisratiocanbesimplifiedfurther,butinthefollowingsimulationforclarity
wewillevaluatetheRayleighandchisquaredensitiesseparately. Thefollowing
function evaluates the Rayleigh(?) density.
f <- function(x, sigma) {
if (any(x < 0)) return (0)
stopifnot(sigma > 0)
return((x / sigma^2) * exp(-x^2 / (2*sigma^2)))
}
In the simulation below, a Rayleigh(? = 4) sample is generated using the
chisquare proposal distribution. At each transition, the candidate point Y is
generated from ?2(? =Xi?1 )
xt <- x[i-1]
y <- rchisq(1, df = xt)
andforeachy,thenumeratoranddenominatorofr(Xi?1 ,Y)arecomputedin
num andden. The counter k recordsthe number of rejected candidate points.
m <- 10000
sigma <- 4
x <- numeric(m)
x[1] <- rchisq(1, df=1)
k <- 0
u <- runif(m)
for (i in 2:m) {
xt <- x[i-1]
y <- rchisq(1, df = xt)
num <- f(y, sigma) * dchisq(xt, df = y)
den <- f(xt, sigma) * dchisq(y, df = xt)
if (u[i] <= num/den) x[i] <- y else {
x[i] <- xt
k <- k+1 #y is rejected
}
}
> print(k)
[1] 4009
In this example, approximately 40% of the candidate points are rejected, so
the chain is somewhat inefficient.

Markov Chain Monte Carlo Methods 251
Tosee the generatedsample asa realizationofa stochasticprocess,wecan
plot the sample vs the time index. The following code will display a partial
plot starting at time index 5000.
index <- 5000:5500
y1 <- x[index]
plot(index, y1, type="l", main="", ylab="x")
The plot is shown in Figure 9.1. Note that at times the candidate point is
rejected and the chain does not move at these time points; this corresponds
to the short horizontal paths in the graph. (cid:5)
5000 5100 5200 5300 5400 5500
01
8
6
4
2
index
x
FIGURE 9.1: Partof a chaingeneratedby a Metropolis-Hastingssampler
of a Rayleigh distribution in Example 9.1.
Example 9.1 is a simple example intended to illustrate how to implement
a Metropolis-Hastings sampler. There are better ways to generate samples
from Rayleigh distributions. In fact, an explicit formula for the quantiles of
the Rayleigh distribution are given by
xq =F
?1(q)=?{?2log(1?q)}1/2,
0<q <1. (9.4)
Using F?1 one could write a simple generator for Rayleigh using the inverse
transform method of Section 3.2.1 with antithetic sampling (Section 5.4).

252 Statistical Computing with R
Example 9.2 (Example 9.1, cont.)
The following code compares the quantiles of the target Rayleigh(? = 4)
distribution with the quantiles of the generated chain in a quantile-quantile
plot (QQ plot).
b <- 2001 #discard the burnin sample
y <- x[b:m]
a <- ppoints(100)
QR <- sigma * sqrt(-2 * log(1 - a)) #quantiles of Rayleigh
Q <- quantile(x, a)
qqplot(QR, Q, main="",
xlab="Rayleigh Quantiles", ylab="Sample Quantiles")
hist(y, breaks="scott", main="", xlab="", freq=FALSE)
lines(QR, f(QR, 4))
The histogram of the generated sample with the Rayleigh(? = 4) density
superimposed is shown in Figure 9.2(a) and the QQ plot is shown in Figure
9.2(b). TheQQplotisaninformalapproachtoassessingthegoodness-of-fitof
the generated sample with the target distribution. From the plot, it appears
that the sample quantiles are in approximate agreement with the theoretical
quantiles. (cid:5)
ytisneD
0 5 10 15
51.0
01.0
50.0
00.0
0 2 4 6 8 10 12
(a)
21
01
8
6
4
2
0
Rayleigh Quantiles
selitnauQ
elpmaS
(b)
FIGURE 9.2: Histogram with target Rayleigh density and QQ plot for a
Metropolis-Hastings chain in Example 9.1.

Markov Chain Monte Carlo Methods 253
9.2.2 The Metropolis Sampler
TheMetropolis-Hastingssampler[138,197]isageneralizationoftheMetropo-
lis sampler [197]. In the Metropolis algorithm, the proposal distribution is
symmetric. That is, the proposal distribution g(·|Xt) satisfies
g(X|Y)=g(Y|X),
so that in (9.3) the proposal distribution g cancels from
f(Y)g(Xt |Y)
r(Xt,Y)=
f(Xt)g(Y|Xt)
,
and the candidate point Y is accepted with probability
(cid:7) (cid:8)
f(Y)
?(Xt,Y)=min 1, .
f(Xt)
9.2.3 Random Walk Metropolis
The random walk Metropolis sampler is an example of a Metropolis sam-
pler. Suppose the candidate point Y is generatedfrom a symmetric proposal
distribution g(Y|Xt)=g(|Xt ?Y|). Then at each iteration, a random incre-
mentZ isgeneratedfromg(·),andY isdefinedbyY =Xt+Z. Forexample,
therandomincrementmightbenormalwithzeromean,sothatthecandidate
point is Y|Xt ?Normal(Xt,?2) for some fixed ?2 >0.
Convergenceof the randomwalk Metropolis is often sensitive to the choice
of scale parameter. When variance of the increment is too large, most of
the candidate points are rejected and the algorithm is very inefficient. If the
variance of the increment is too small, the candidate points are almost all
accepted,sotherandomwalkMetropolisgeneratesachainthatisalmostlike
a true random walk, which is also inefficient. One approach to selecting the
scale parameter is to monitor the acceptance rates, which should be in the
range [0.15, 0.5] [230].
Example 9.3 (Random walk Metropolis)
ImplementtherandomwalkversionoftheMetropolissamplertogeneratethe
target distribution Student t with ? degrees of freedom, using the proposal
distribution Normal(Xt,?2). In order to see the effect of different choices
of variance of the proposal distribution, try repeating the simulation with
different choices of ?.
The t(?) density is proportional to (1+x2/?)?(?+1)/2, so
" #
y2
?(?+1)/2
1+
f(Y) ?
r(xt,y)=
f(Xt)
= "
x2
#
?(?+1)/2
.
1+ t
?

254 Statistical Computing with R
In this simulationbelow,the t densities inr(xi?1 ,y)willbe computedby the
dt function. Then y is accepted or rejected and Xi generated by
if (u[i] <= dt(y, n) / dt(x[i-1], n))
x[i] <- y
else
x[i] <- x[i-1]
These steps are combined into a function to generate the chain, given the
parameters n and ?, initial value X , and the length of the chain, N.
0
rw.Metropolis <- function(n, sigma, x0, N) {
x <- numeric(N)
x[1] <- x0
u <- runif(N)
k <- 0
for (i in 2:N) {
y <- rnorm(1, x[i-1], sigma)
if (u[i] <= (dt(y, n) / dt(x[i-1], n)))
x[i] <- y else {
x[i] <- x[i-1]
k <- k + 1
}
}
return(list(x=x, k=k))
}
Four chains are generated for different variances ?2 of the proposal distribu-
tion.
n <- 4 #degrees of freedom for target Student t dist.
N <- 2000
sigma <- c(.05, .5, 2, 16)
x0 <- 25
rw1 <- rw.Metropolis(n, sigma[1], x0, N)
rw2 <- rw.Metropolis(n, sigma[2], x0, N)
rw3 <- rw.Metropolis(n, sigma[3], x0, N)
rw4 <- rw.Metropolis(n, sigma[4], x0, N)
#number of candidate points rejected
> print(c(rw1$k, rw2$k, rw3$k, rw4$k))
[1] 14 136 891 1798
Only the third chain has a rejection rate in the range [0.15, 0.5]. The plots
in Figure 9.3show thatthe randomwalk Metropolis sampleris verysensitive
to the variance of the proposal distribution. Recall that the variance of the

|                                              |               | Markov       |                                                 | Chain Monte    | Carlo         | Methods |                        |                | 255        |
| -------------------------------------------- | ------------- | ------------ | ----------------------------------------------- | -------------- | ------------- | ------- | ---------------------- | -------------- | ---------- |
| t(?) distribution                            |               | is           | ?/(??2?),                                       | ? >            | 2. Here       | ? = 4   | and the                | standard       | deviation  |
| of the target                                |               | distribution | is                                              | 2.             |               |         |                        |                |            |
| In the                                       | first         | plot of      | Figure                                          | 9.3 with       | ? =0.05,      | the     | ratios                 | r(Xt,Y)        | tend to be |
| largeandalmosteverycandidatepointisaccepted. |               |              |                                                 |                |               |         | The incrementsaresmall |                |            |
| and the                                      | chain         | is almost    | like                                            | a true         | random        | walk.   | Chain 1                | has not        | converged  |
| to the target                                |               | in 2000      | iterations.                                     | The            | chain         | in the  | second                 | plot generated | with       |
| ? =0.5                                       | is converging |              | very                                            | slowly and     | requires      | a       | much longer            | burn-in        | period.    |
| Inthethirdplot(?                             |               |              | =2)thechainismixingwellandconvergingtothetarget |                |               |         |                        |                |            |
| distribution                                 | after         | a            | short                                           | burn-in period | of            | about   | 500. Finally,          | in             | the fourth |
| plot, where                                  | ?             | =16,the      | ratiosr(Xt,Y)                                   |                | aresmaller    |         | andmostofthe           |                | candidate  |
| points are                                   | rejected.     |              | The fourth                                      | chain          | converges,but |         | it is                  | inefficient.   |            |
03
72
02
62
| X   |     |     |     |     | X   |     |     |     |     |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|     | 52  |     |     |     |     | 01  |     |     |     |
5
42
0
|     | 0   | 500 | 1000   | 1500 2000 |     | 0   | 500 1000 | 1500 | 2000 |
| --- | --- | --- | ------ | --------- | --- | --- | -------- | ---- | ---- |
|     |     |     | ?=0.05 |           |     |     | ?=0.5    |      |      |
52
52
|     | 02  |     |     |     |     | 02  |     |     |     |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
51
51
01
| X   | 01  |     |     |     | X   |     |     |     |     |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
5
5
0
0
|            | 5?   |           |           |                 |            | 01?    |           |             |      |
| ---------- | ---- | --------- | --------- | --------------- | ---------- | ------ | --------- | ----------- | ---- |
|            | 0    | 500       | 1000      | 1500 2000       |            | 0      | 500 1000  | 1500        | 2000 |
|            |      |           | ?=2       |                 |            |        | ?=16      |             |      |
| FIGURE     | 9.3: | Random    |           | walk Metropolis |            | chains | generated | by proposal | dis- |
| tributions | with | different | variances |                 | in Example | 9.3.   |           |             |      |
(cid:5)

256 Statistical Computing with R
Example 9.4 (Example 9.3, cont.)
Usually in MCMC problems one does not have the theoretical quantiles of
the target distribution available for comparison, but in this case the output
of the random walk Metropolis chains in Example 9.3 can be compared with
thetheoreticalquantilesofthetargetdistribution. Discardtheburn-invalues
in the first 500 rows of each chain. The quantiles are computed by the apply
function (applying quantileto the columns of the matrix). The quantiles of
the target distribution and the sample quantiles of the four chains rw1, rw2,
rw3, and rw4 are in Table 9.1.
a <- c(.05, seq(.1, .9, .1), .95)
Q <- qt(a, n)
rw <- cbind(rw1$x, rw2$x, rw3$x, rw4$x)
mc <- rw[501:N, ]
Qrw <- apply(mc, 2, function(x) quantile(x, a))
print(round(cbind(Q, Qrw), 3)) #not shown
xtable::xtable(round(cbind(Q, Qrw), 3)) #latex format
(cid:5)
TABLE 9.1: Quantiles of Target
Distribution and Chains in Example 9.4
Q rw1 rw2 rw3 rw4
5% ?2.13 23.66 ?1.16 ?1.92 ?2.40
10% ?1.53 23.77 ?0.39 ?1.47 ?1.35
20% ?0.94 23.99 0.67 ?1.01 ?0.90
30% ?0.57 24.29 4.15 ?0.63 ?0.64
40% ?0.27 24.68 9.81 ?0.25 ?0.47
50% 0.00 25.29 17.12 0.01 ?0.15
60% 0.27 26.14 18.75 0.27 0.06
70% 0.57 26.52 21.79 0.59 0.25
80% 0.94 26.93 25.42 0.92 0.52
90% 1.53 27.27 28.51 1.55 1.18
95% 2.13 27.39 29.78 2.37 1.90
R note 9.1 Table 9.1 was exported to LATEXformat by the xtable function
in the xtable package [61].
Example 9.5 (Bayesian inference: A simple investment model)
In general, the returns on different investments are not independent. To
reduce risk, portfolios are sometimes selected so that returns of securities are

Markov Chain Monte Carlo Methods 257
negatively correlated. Rather than the correlation of returns, here the daily
performance is ranked. Suppose five stocks are tracked for 250 trading days
(one year), and each day the “winner” is picked based on maximum return
relative to the market. Let Xi be the number of days that security i is a
winner. Thentheobservedvectoroffrequencies(x ,...,x )isanobservation
1 5
fromthe jointdistributionof(X ,...,X ). Basedonhistoricaldata,suppose
1 5
that the prior odds ofan individual security being a winner on any givenday
are[1:(1??):(1?2?):2? :?],where? ?(0,0.5)isanunknownparameter.
Update the estimate of ? for the current year of winners.
According to this model, the multinomial joint distribution of X ,...,X
1 5
has the probability vector
(cid:7) (cid:8)
1 (1??) (1?2?) 2? ?
p= , , , , .
3 3 3 3 3
The posterior distribution of ? given (x ,...,x ) is therefore
1 5
250!
Pr[?|(x ,...,x )]= p x1p x2p x3p x4p x5.
1 5 x !x !x !x !x ! 1 2 3 4 5
1 2 3 4 5
In this example, we cannot directly simulate random variates from the
posterior distribution. One approach to estimating ? is to generate a chain
thatconvergestotheposteriordistributionandestimate? fromthegenerated
chain. Use the random walk Metropolis sampler with a uniform proposal
distribution to generate the posterior distribution of ?. The candidate point
Y is accepted with probability
(cid:7) (cid:8)
f(Y)
?(Xt,Y)=min 1, .
f(Xt)
The multinomial coefficient cancels from the ratio in ?(X,Y), so that
f(Y) (1/3)x1((1?Y)/3)x2((1?2Y)/3)x3((2Y)/3)x4(Y/3)x5
= .
f(X) (1/3)x1((1?X)/3)x2((1?2X)/3)x3((2X)/3)x4(X/3)x5
The ratio can be further simplified, but the numerator and denominator are
evaluated separately in the implementation below. In order to check the
results, start by generating the observedfrequencies from a distribution with
specified ?.
b <- .2 #actual value of beta
w <- .25 #width of the uniform support set
m <- 5000 #length of the chain
burn <- 1000 #burn-in time
days <- 250
x <- numeric(m) #the chain

258 Statistical Computing with R
# generate the observed frequencies of winners
i <- sample(1:5, size=days, replace=TRUE,
prob=c(1, 1-b, 1-2*b, 2*b, b))
win <- tabulate(i)
> print(win)
[1] 82 72 45 34 17
The tabulated frequencies in win are the simulated numbers of trading days
that each of the stocks were the daily winner. Based on this year’s observed
distribution of winners, we want to estimate the parameter ?.
The followingfunction probcomputes the targetdensity (without the con-
stant).
prob <- function(y, win) {
# computes (without the constant) the target density
if (y < 0 || y >= 0.5)
return (0)
return((1/3)^win[1] *
((1-y)/3)^win[2] * ((1-2*y)/3)^win[3] *
((2*y)/3)^win[4] * (y/3)^win[5])
}
Finally the random walk Metropolis chain is generated. Two sets of uniform
randomvariatesarerequired;oneforgeneratingtheproposaldistributionand
another for the decision to accept or reject the candidate point.
u <- runif(m) #for accept/reject step
v <- runif(m, -w, w) #proposal distribution
x[1] <- .25
for (i in 2:m) {
y <- x[i-1] + v[i]
if (u[i] <= prob(y, win) / prob(x[i-1], win))
x[i] <- y else
x[i] <- x[i-1]
}
The plot of the chains in Figure 9.4(a) shows that the chain has converged,
approximately, to the target distribution. Now the generated chain provides
an estimate of ?, after discarding a burn-in sample. From the histogram of
the sample in Figure 9.4(b) the plausible values for ? are close to 0.2.
Theoriginalsample tableofrelativefrequencies,andthe MCMC estimates
of the multinomial probabilities are given below.
> print(win)
[1] 82 72 45 34 17
> print(round(win/days, 3))
[1] 0.328 0.288 0.180 0.136 0.068

Markov Chain Monte Carlo Methods 259
> print(round(c(1, 1-b, 1-2*b, 2*b, b)/3, 3))
[1] 0.333 0.267 0.200 0.133 0.067
> xb <- x[(burn+1):m]
> print(mean(xb))
[1] 0.2101277
The sample mean of the generated chain is 0.2101277 (the simulated year of
winners table was generated with ? =0.2). (cid:5)
0 1000 2000 3000 4000 5000
03.0
52.0
02.0
51.0
Index
x
?
(a)
X
0.15 0.20 0.25 0.30
02
51
01
5
0
(b)
FIGURE 9.4: Random walk Metropolis chain for ? in Example 9.5.
9.2.4 The Independence Sampler
Another special case of the Metropolis-Hastings sampler is the indepen-
dence sampler [272]. The proposal distribution in the independence sam-
pling algorithm does not depend on the previous value of the chain. Thus,
g(Y|Xt)=g(Y) and the acceptance probability (9.3) is
(cid:7) (cid:8)
f(Y)g(Xt)
?(Xt,Y)=min 1, .
f(Xt)g(Y)
The independence sampleris easyto implement and tends to workwellwhen
theproposaldensityisaclosematchtothetargetdensity,butotherwisedoes
not perform well. Roberts [229] discusses convergence of the independence
sampler, and comments that “it is rare for the independence sampler to be
useful as a stand-alone algorithm.” Nevertheless, we illustrate the procedure

260 Statistical Computing with R
in the following example, because the independence sampler can be useful in
hybrid MCMC methods (see e.g. [119]).
Example 9.6 (Independence sampler)
Assume that a random sample (z
1
,...,zn) from a two-component normal
mixture is observed. The mixture is denoted by
pN(µ ,?2)+(1?p)N(µ ,?2),
1 1 2 2
and the density of the mixture (see Chapter 3) is
f ? (z)=pf (z)+(1?p)f (z),
1 2
wheref andf arethedensitiesofthetwonormaldistributions,respectively.
1 2
If the densities f and f are completely specified, the problem is to estimate
1 2
the mixing parameter p given the observed sample. Generate a chain using
anindependencesamplerthathastheposteriordistributionofpasthetarget
distribution.
The proposaldistributionshouldbe supportedonthe setofvalidprobabil-
ities p; that is, the interval (0,1). The most obvious choices are the beta dis-
tributions. With no prior informationon p, one might consider the Beta(1,1)
proposal distribution (Beta(1,1) is Uniform(0,1)). The candidate point Y is
accepted with probability
(cid:7) (cid:8)
f(Y)g(Xt)
?(Xt,Y)=min 1, ,
f(Xt)g(Y)
where g(·) is the Beta proposal density. Thus, if the proposal distribution
is Beta(a,b), then g(y) ? ya?1(1?y)b?1 and Y is accepted with probability
min(1,f(y)g(xt)/f(xt)g(y)), where
5
f f ( ( y x ) t g )g (x (y t) ) = y x a a t ? ? 1 1 ( ( 1 1 ? ? y x ) t b ) ? b? 1 5 1 n j= n j 1 = [ 1 x [ t y f f 1 1 ( ( z z j j ) ) + + ( ( 1 1 ? ? x y t ) ) f f 2 2 ( ( z z j j ) ) ] ] .
In the following simulation the proposal distribution is Uniform(0,1). The
simulated data is generated from the normal mixture
0.2N(0,1)+0.8N(5,1).
Thefirststepsaretoinitializeconstantsandgeneratethe observedsample.
Then an observed sample is generated. To generate the chain, all random
numbers can be generated in advance because the candidate Y does not de-
pend on Xt.

Markov Chain Monte Carlo Methods 261
m <- 5000 #length of chain
xt <- numeric(m)
a <- 1 #parameter of Beta(a,b) proposal dist.
b <- 1 #parameter of Beta(a,b) proposal dist.
p <- .2 #mixing parameter
n <- 30 #sample size
mu <- c(0, 5) #parameters of the normal densities
sigma <- c(1, 1)
# generate the observed sample
i <- sample(1:2, size=n, replace=TRUE, prob=c(p, 1-p))
x <- rnorm(n, mu[i], sigma[i])
# generate the independence sampler chain
u <- runif(m)
y <- rbeta(m, a, b) #proposal distribution
xt[1] <- .5
for (i in 2:m) {
fy <- y[i] * dnorm(x, mu[1], sigma[1]) +
(1-y[i]) * dnorm(x, mu[2], sigma[2])
fx <- xt[i-1] * dnorm(x, mu[1], sigma[1]) +
(1-xt[i-1]) * dnorm(x, mu[2], sigma[2])
r <- prod(fy / fx) *
(xt[i-1]^(a-1) * (1-xt[i-1])^(b-1)) /
(y[i]^(a-1) * (1-y[i])^(b-1))
if (u[i] <= r) xt[i] <- y[i] else
xt[i] <- xt[i-1]
}
plot(xt, type="l", ylab="p")
hist(xt[101:m], main="", xlab="p", prob=TRUE)
print(mean(xt[101:m]))
The histogramofthe generatedsampleafter discardingthe first100points
isshowninFigure9.5onthenextpage. Themeanoftheremainingsampleis
0.2516. The time plotofthe generatedchainis showninFigure9.6(a),which
mixes well and converges quickly to a stationary distribution.
For comparison, we repeated the simulation with a Beta(5,2) proposaldis-
tribution. In this simulation the sample mean of the chain after discarding
the burn-in sample is 0.2593, but the chain that is generated, shown in Fig-
ure 9.6(b) on the following page, is not very efficient. (cid:5)

| 262 |     |     | Statistical |     | Computing | with R |     |     |
| --- | --- | --- | ----------- | --- | --------- | ------ | --- | --- |
5
4
3
ytisneD
2
1
0
|     |     |     |     | 0.1 | 0.2 0.3 | 0.4 0.5 |     |     |
| --- | --- | --- | --- | --- | ------- | ------- | --- | --- |
p
| FIGURE   | 9.5:         | Distribution |         | of the | independence | sampler    | chain      | for p with |
| -------- | ------------ | ------------ | ------- | ------ | ------------ | ---------- | ---------- | ---------- |
| proposal | distribution |              | Beta(1, | 1) in  | Example      | 9.6, after | discarding | a burn-in  |
| sample   | of length    | 100.         |         |        |              |            |            |            |
5.0
5.0
|     | 4.0 |     |     |     | 4.0 |     |     |     |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| p   | 3.0 |     |     |     | p   |     |     |     |
3.0
2.0
2.0
1.0
|        | 0 1000       | 2000    | 3000      | 4000      | 5000            | 0 1000 2000 | 3000       | 4000 5000   |
| ------ | ------------ | ------- | --------- | --------- | --------------- | ----------- | ---------- | ----------- |
|        |              |         | Index     |           |                 |             | Index      |             |
|        |              | (a)     |           |           |                 | (b)         |            |             |
| FIGURE | 9.6:         | Chain   | generated |           | by independence | sampler     | for        | p with pro- |
| posal  | distribution | Beta(1, |           | 1) (left) | and Beta(5,     | 2) (right)  | in Example | 9.6.        |

Markov Chain Monte Carlo Methods 263
9.3 The Gibbs Sampler
The Gibbs sampler was named by Geman and Geman [111], because of
its application to analysis of Gibbs lattice distributions. However, it is a
general method that can be applied to a much wider class of distributions
[111, 106, 105]. It is another special case of the Metropolis-Hastings sampler.
See the introduction to Gibbs sampling by Casella and George [40].
TheGibbssamplerisoftenappliedwhenthetargetisamultivariatedistrib-
ution. Suppose that all the univariate conditionaldensities are fully specified
and it is reasonably easy to sample from them. The chain is generated by
samplingfromthemarginaldistributionsofthetargetdistribution,andevery
candidate point is therefore accepted.
Let X = (X
1
,...,Xd) be a random vector in Rd. Define the d?1 dimen-
sional random vectors
X (?j) =(X 1 ,...,Xj?1 ,Xj+1 ,...,Xd),
anddenotethecorrespondingunivariateconditionaldensityofXj givenX (?j)
by f(Xj |X (?j) ). The Gibbs sampler generates the chain by sampling from
each of the d conditional densities f(Xj |X (?j) ).
In the following algorithm for the Gibbs sampler, we denote Xt by X(t).
1. Initialize X(0) at time t=0.
2. For each iteration, indexed t=1,2,... repeat:
(a) Set x =X (t?1).
1 1
(b) For each coordinate j =1,...,d
(a) Generate X j ?(t) from f(Xj |x (?j) ).
(b) Update xj =X
j
?(t).
(c) Set X(t)=(X?(t),...,X?(t)) (every candidate is accepted).
1 d
(d) Increment t.
Example 9.7 (Gibbs sampler: Bivariate distribution)
Generateabivariatenormaldistributionwithmeanvector(µ ,µ ),variances
1 2
?2,?2, and correlation?, using Gibbs sampling.
1 2
In the bivariate case, X = (X 1 ,X 2 ), X (?1) = X 2 , X (?2) = X 1 . The
conditional densities of a bivariate normal distribution are univariate normal
with parameters
?
E[X |x ]=µ +? 2(x ?µ ),
2 1 1 1 1
?
1
Var(X |x )=(1??2)?2,
2 1 2

264 Statistical Computing with R
and the chain is generated by sampling from
??
f(x |x )?Normal(µ + 1(x ?µ ), (1??2)?2),
1 2 1 ? 2 2 1
2
??
f(x |x )?Normal(µ + 2(x ?µ ), (1??2)?2).
2 1 2 ? 1 1 2
1
For a bivariate distribution (X ,X ), at each iteration the Gibbs sampler
1 2
1. Sets (x ,x )=X(t?1);
1 2
2. Generates X?(t) from f(X |x );
1 1 2
3. Updates x =X?(t);
1 1
4. Generates X?(t) from f(X |x );
2 2 1
5. Sets X(t)=(X?(t),X?(t)).
1 2
#initialize constants and parameters
N <- 5000 #length of chain
burn <- 1000 #burn-in length
X <- matrix(0, N, 2) #the chain, a bivariate sample
rho <- -.75 #correlation
mu1 <- 0
mu2 <- 2
sigma1 <- 1
sigma2 <- .5
s1 <- sqrt(1-rho^2)*sigma1
s2 <- sqrt(1-rho^2)*sigma2
###### generate the chain #####
X[1, ] <- c(mu1, mu2) #initialize
for (i in 2:N) {
x2 <- X[i-1, 2]
m1 <- mu1 + rho * (x2 - mu2) * sigma1/sigma2
X[i, 1] <- rnorm(1, m1, s1)
x1 <- X[i, 1]
m2 <- mu2 + rho * (x1 - mu1) * sigma2/sigma1
X[i, 2] <- rnorm(1, m2, s2)
}
b <- burn + 1
x <- X[b:N, ]

|     |     | Markov | Chain | Monte | Carlo | Methods |     |     | 265 |
| --- | --- | ------ | ----- | ----- | ----- | ------- | --- | --- | --- |
Thefirst1000observationsarediscardedfromthechaininmatrixXandthe
| remaining  | observations |        | are in          | x. Summary |          | statistics | for   | the column | means, |
| ---------- | ------------ | ------ | --------------- | ---------- | -------- | ---------- | ----- | ---------- | ------ |
| the sample | covariance,  |        | and correlation |            | matrices | are        | shown | below.     |        |
| #          | compare      | sample | statistics      |            | to       | parameters |       |            |        |
> colMeans(x)
| [1] | -0.03030001 |     | 2.01176134 |     |     |     |     |     |     |
| --- | ----------- | --- | ---------- | --- | --- | --- | --- | --- | --- |
> cov(x)
|      |            | [,1] | [,2]       |     |     |     |     |     |     |
| ---- | ---------- | ---- | ---------- | --- | --- | --- | --- | --- | --- |
| [1,] | 1.0022207  |      | -0.3757518 |     |     |     |     |     |     |
| [2,] | -0.3757518 |      | 0.2482327  |     |     |     |     |     |     |
> cor(x)
|           |                    | [,1]                                     |            | [,2]               |                    |     |     |                 |     |
| --------- | ------------------ | ---------------------------------------- | ---------- | ------------------ | ------------------ | --- | --- | --------------- | --- |
| [1,]      | 1.0000000          |                                          | -0.7533379 |                    |                    |     |     |                 |     |
| [2,]      | -0.7533379         |                                          | 1.0000000  |                    |                    |     |     |                 |     |
| plot(x,   |                    | main="",                                 | cex=.5,    |                    | xlab=bquote(X[1]), |     |     |                 |     |
|           | ylab=bquote(X[2]), |                                          |            | ylim=range(x[,2])) |                    |     |     |                 |     |
| Thesample |                    | means,variances,andcorrelationarecloseto |            |                    |                    |     |     | the trueparame- |     |
ters,andtheplotinFigure9.7exhibitstheellipticalsymmetryofthebivariate
| normal,withnegativecorrelation. |         |           |          | (Theversionprintedisarandomlyselected |            |     |         |          |         |
| ------------------------------- | ------- | --------- | -------- | ------------------------------------- | ---------- | --- | ------- | -------- | ------- |
| subset                          | of 1000 | generated | variates | after                                 | discarding | the | burn-in | sample.) | (cid:5) |
5.3
0.3
5.2
2X 0.2
5.1
0.1
5.0
|     |     |     | ?3  | ?2 ?1 | 0   | 1   | 2 3 |     |     |
| --- | --- | --- | --- | ----- | --- | --- | --- | --- | --- |
X1
| FIGURE  | 9.7: | Bivariate | normal |     | chain generated |     | by the | Gibbs | sampler in |
| ------- | ---- | --------- | ------ | --- | --------------- | --- | ------ | ----- | ---------- |
| Example | 9.7. |           |        |     |                 |     |        |       |            |

266 Statistical Computing with R
9.4 Monitoring Convergence
In severalexamples using various Metropolis-Hastings algorithms, we have
seen that some generated chains have not converged to the target distribu-
tion. In general, for an arbitrary Metropolis-Hastings sampler the number of
iterations that are sufficient for approximate convergence to the target dis-
tribution or what length burn-in sample is required are unknown. Moreover,
Gelman and Rubin [110] provide examples of slow convergence that cannot
be detected by examining a single chain. A single chain may appear to have
converged because the generated values have a small variance within a local
part of the support set of the target distribution, but in reality the chain
has not explored all of the support set. By examining severalparallel chains,
slow convergence should be more evident, particularly if the initial values of
the chain are overdispersed with respect to the target distribution. Meth-
ods have been proposed in the literature for monitoring the convergence of
MCMC chains (see e.g. [33, 54, 116, 138, 227, 219]). In this section we dis-
cuss and illustrate the approach suggested by Gelman and Rubin [107, 109]
for monitoring convergence of Metropolis-Hastings chains.
9.4.1 The Gelman-Rubin Method
The Gelman-Rubin [107, 109] method of monitoring convergence of a M-H
chain is based on comparing the behavior of several generated chains with
respect to the variance of one or more scalar summary statistics. The es-
timates of the variance of the statistic are analogous to estimates based on
between-sampleandwithin-samplemeansquarederrorsinaone-wayanalysis
of variance (ANOVA).
Let ? be a scalar summary statistic that estimates some parameter of the
targetdistribution. Generatek chains{Xij : 1?i?k, 1?j ?n}oflength
n. (Here the chains are indexed with initial time t = 1.) Compute {?in =
?(Xi1 ,...,Xin)} for each chain at time n. We expect that if the chains are
convergingtothetargetdistributionasn??,thenthesamplingdistribution
of the statistics {?in } should be converging to a common distribution.
The Gelman-Rubin method uses the between-sequence variance of ? and
the within-sequence variance of ? to estimate an upper bound and a lower
bound for variance of ?, converging to variance ? from above and below,
respectively, as the chain converges to the target distribution.
Consider the chains up to time n to represent data from a balanced one-
way ANOVA on k groups with n observations. Compute the estimates of
between-sample and within-sample variance analogous to the sum of squares
for treatments and the sum of squares for error,and the corresponding mean
squared errors as in ANOVA.

Markov Chain Monte Carlo Methods 267
The between-sequence variance is
(cid:5)k (cid:5)n (cid:5)k
1 n
B = (? ?? )2 = (? ?? )2,
k?1 i· ·· k?1 i· ··
i=1j=1 i=1
where
(cid:5)n (cid:5)k (cid:5)n
?
i·
=(1/n) ?ij, ?
··
=(1/(nk)) ?ij.
j=1 i=1j=1
Within the ith sequence, the sample variance is
(cid:5)n
1
s2
i
= (?ij ??
i·
)2,
n
j=1
and the pooled estimate of within sample variance is
(cid:5)k (cid:5)k
1 1
W = (n?1)s2 = s2.
nk?k i k i
i=1 i=1
The between-sequence and within-sequence estimates of variance are com-
bined to estimate an upper bound for Var(?)
$ n?1 1
Var(?)= W + B. (9.5)
n n
If the chains were random samples from the target distribution, (9.5) is an
unbiased estimator of Var(?). In this application (9.5) is positively biased
for the variance of ? if the initial values of the chain are over-dispersed, but
converges to Var(?) as n ? ?. On the other hand, if the chains have not
converged by time n, the chains have not yet mixed well across the entire
supportsetofthetargetdistributionsothewithin-samplevarianceW under-
estimates the variance of ?. As n ? ? we have the expected value of (9.5)
converging to Var(?) from above and W converging to Var(?) from below.
$
IfVar(?)islargerelativetoW thissuggeststhatthechainhasnotconverged
to the target distribution by time n.
The Gelman-Rubin statistic is the estimated potential scale reduction
6
(cid:2) $
Var(?)
Rˆ = , (9.6)
W
whichcanbe interpretedasmeasuringthe factorbywhichthe s(cid:2)tandarddevi-
ationof? couldbereducedbyextendingthechain.(cid:2)Thefactor Rˆ decreases
to 1 as the lengthof the chain tends to infinity, so Rˆ shouldbe close to 1 if
the chains have approximately converged to the target distribution. Gelman
[107] suggests that Rˆ should be less than 1.1 or 1.2.

268 Statistical Computing with R
Example 9.8 (Gelman-Rubin method of monitoring convergence)
ThisexampleillustratestheGelman-Rubinmethodofmonitoringconvergence
of a Metropolis chain. The target distribution is Normal(0,1), and the pro-
posal distribution is Normal(Xt,?2). The scalar summary statistic ?ij is the
mean of the ith chain up to time j. After generatingall chains the diagnostic
statistics are computed in the Gelman.Rubinfunction below.
Gelman.Rubin <- function(psi) {
# psi[i,j] is the statistic psi(X[i,1:j])
# for chain in i-th row of X
psi <- as.matrix(psi)
n <- ncol(psi)
k <- nrow(psi)
psi.means <- rowMeans(psi) #row means
B <- n * var(psi.means) #between variance est.
psi.w <- apply(psi, 1, "var") #within variances
W <- mean(psi.w) #within est.
v.hat <- W*(n-1)/n + (B/n) #upper variance est.
r.hat <- v.hat / W #G-R statistic
return(r.hat)
}
Since several chains are to be generated, the M-H sampler is written as a
function normal.chain.
normal.chain <- function(sigma, N, X1) {
#generates a Metropolis chain for Normal(0,1)
#with Normal(X[t], sigma) proposal distribution
#and starting value X1
x <- rep(0, N)
x[1] <- X1
u <- runif(N)
for (i in 2:N) {
xt <- x[i-1]
y <- rnorm(1, xt, sigma) #candidate point
r1 <- dnorm(y, 0, 1) * dnorm(xt, y, sigma)
r2 <- dnorm(xt, 0, 1) * dnorm(y, xt, sigma)
r <- r1 / r2
if (u[i] <= r) x[i] <- y else
x[i] <- xt
}
return(x)
}

Markov Chain Monte Carlo Methods 269
In the following simulation, the proposal distribution has a small variance
?2 =0.04. When the variance is small relative to the target distribution, the
chains are usually converging slowly.
sigma <- .2 #parameter of proposal distribution
k <- 4 #number of chains to generate
n <- 15000 #length of chains
b <- 1000 #burn-in length
#choose overdispersed initial values
x0 <- c(-10, -5, 5, 10)
#generate the chains
X <- matrix(0, nrow=k, ncol=n)
for (i in 1:k)
X[i, ] <- normal.chain(sigma, n, x0[i])
#compute diagnostic statistics
psi <- t(apply(X, 1, cumsum))
for (i in 1:nrow(psi))
psi[i,] <- psi[i,] / (1:ncol(psi))
print(Gelman.Rubin(psi))
#plot psi for the four chains
par(mfrow=c(2,2))
for (i in 1:k)
plot(psi[i, (b+1):n], type="l",
xlab=i, ylab=bquote(psi))
par(mfrow=c(1,1)) #restore default
#plot the sequence of R-hat statistics
rhat <- rep(0, n)
for (j in (b+1):n)
rhat[j] <- Gelman.Rubin(psi[,1:j])
plot(rhat[(b+1):n], type="l", xlab="", ylab="R")
abline(h=1.1, lty=2)
The plots of the four sequences of the summary statistic (the mean) ? are
showninFigure9.8fromtime1001to15000. Ratherthaninterprettheplots,
one can refer directly to the value of the factor Rˆ to monitor convergence.
The value Rˆ = 1.447811 at time n = 5000 suggests that the chain should be
extended. The plot of Rˆ (Figure 9.9(a)) over time 1001 to 15000 suggests
that the chain has approximately convergedto the target distribution within
approximately 10000 iterations (Rˆ =1.1166). The dashed line on the plot is
at Rˆ = 1.1. Some intermediate values are 1.2252, 1.1836, 1.1561, and 1.1337

270 Statistical Computing with R
at times 6000,7000,8000,and 9000,respectively. The value of Rˆ is less than
1.1 within time 11200.
0 2000 6000 10000 14000
2.0
0.0
4.0?
8.0?
1
?
0 2000 6000 10000 14000
4.0
3.0
2.0
1.0
0.0
2.0?
2
?
0 2000 6000 10000 14000
8.0
6.0
4.0
2.0
0.0
3
?
0 2000 6000 10000 14000
3.0
2.0
1.0
0.0
4
?
FIGURE 9.8: Sequences of the running means ? for four Metropolis-
Hastings chains in Example 9.8.
For comparison the simulation is repeated, where the variance of the pro-
posal distribution is ?2 =4. The plot of Rˆ is shown in Figure 9.9(b) for time
1001to 15000. From this plot it is evident that the chainis convergingfaster
than when the proposal distribution had a very small variance. The value of
Rˆ is below 1.2 within 2000 iterations and below 1.1 within 4000 iterations. (cid:5)

Markov Chain Monte Carlo Methods 271
0 2000 4000 6000 8000 10000 12000 14000
R
5.2
0.2
5.1
0.1
0 2000 4000 6000 8000 10000 12000 14000
(a)
R
53.1
03.1
52.1
02.1
51.1
01.1
50.1
(b)
FIGURE 9.9: Sequence of the Gelman-Rubin Rˆ for four Metropolis-
Hastings chains in Example 9.8 (a) ? =0.2, (b) ? =2.
9.5 Application: Change Point Analysis
A Poisson process is often chosen to model the frequency of rare events.
PoissonprocessesarediscussedinSection3.7. AhomogeneousPoissonprocess
{X(t),t?0}withconstantrate?isacountingprocesswithindependentand
stationary increments, such that X(0)=0 and the number of events X(t) in
[0,t] has the Poisson(?t) distribution.
Supposethattheparameter?,whichistheexpectednumberofeventsthat
occur in a unit of time, has changed at some point in time k. That is, Xt ?
Poisson(µt) for 0<t?k and Xt ? Poisson(?t) for k <t. Given a sample of
n observations from this process, the problem is to estimate µ,? and k.
For a specific application, consider the following well known example. The
coal data in the boot package [34] gives the dates of 191 explosions in coal
mineswhichresultedin10ormorefatalitiesfromMarch15,1851untilMarch
22,1962. The dataaregivenin[126], originallyfrom[153]. This problemhas
been discussed by many authors, including e.g. [36, 37, 63, 121, 171, 192]. A
Bayesian model and Gibbs sampling can be applied to estimate the change
point in the annual number of coal mining disasters.
Example 9.9 (Coal mining disasters)
In the coal data, the date of the disaster is given. The integer part of the
date gives the year. For simplicity truncate the fractional part of the year.
As a first step, tabulate the number of disasters per year and create a time
plot.

| 272           |     |     | Statistical | Computing |      | with | R   |     |
| ------------- | --- | --- | ----------- | --------- | ---- | ---- | --- | --- |
| library(boot) |     |     | #for        | coal      | data |      |     |     |
data(coal)
| year    | <-          | floor(coal) |      |     |     |     |     |     |
| ------- | ----------- | ----------- | ---- | --- | --- | --- | --- | --- |
| y <-    | table(year) |             |      |     |     |     |     |     |
| plot(y) |             | #a time     | plot |     |     |     |     |     |
6
5
4
y 3
2
1
0
|     |     | 1851 | 1862 1873 | 1884 1895 | 1906 | 1918 1930 | 1941 1957 |     |
| --- | --- | ---- | --------- | --------- | ---- | --------- | --------- | --- |
year
| FIGURE | 9.10: | Number | of annual |     | coal mining |     | disasters | in Example 9.9. |
| ------ | ----- | ------ | --------- | --- | ----------- | --- | --------- | --------------- |
FromtheplotinFigure9.10itappearsthatachangeintheaveragenumber
| of disasters | per  | year        | may have       | occurred | somewhere  |     | around         | the turn of the |
| ------------ | ---- | ----------- | -------------- | -------- | ---------- | --- | -------------- | --------------- |
| century.     | Note | that vector | of frequencies |          | returned   |     | by table       | omits the years |
| where there  | are  | zero        | counts, so     | for      | the change |     | point analysis | tabulate is     |
applied.
| y <-     | floor(coal[[1]])  |           |         |       |      |        |            |       |
| -------- | ----------------- | --------- | ------- | ----- | ---- | ------ | ---------- | ----- |
| y <-     | tabulate(y)       |           |         |       |      |        |            |       |
| y <-     | y[1851:length(y)] |           |         |       |      |        |            |       |
| Sequence |                   | of annual | number  | of    | coal | mining | disasters: |       |
| 4 5      | 4 1               | 0 4 3     | 4 0 6 3 | 3 4 0 | 2 6  | 3 3 5  | 4 5 3      | 1 4 4 |
| 1 5      | 5 3               | 4 2 5     | 2 2 3 4 | 2 1 3 | 2 2  | 1 1 1  | 1 3 0      | 0 1 0 |
| 1 1      | 0 0               | 3 1 0     | 3 2 2 0 | 1 1 1 | 0 1  | 0 1 0  | 0 0 2      | 1 0 0 |
| 0 1      | 1 0               | 2 3 3     | 1 1 2 1 | 1 1 1 | 2 3  | 3 0 0  | 0 1 4      | 0 0 0 |
| 1 0      | 0 0               | 0 0 1     | 0 0 1 0 | 1     |      |        |            |       |

Markov Chain Monte Carlo Methods 273
Let Yi be the number of disasters in year i, where 1851 is year 1. Assume
that the change point occurs at year k, and the number of disasters in year i
is a Poissonrandom variable, where
Yi ?Poisson(µ), i=1,...,k,
Yi ?Poisson(?), i=k+1,...,n.
There are n=112 observations ending with year 1962.
Assume the Bayesian model with independent priors
k ? Uniform{1,2,...,n},
µ?Gamma(0.5,b ),
1
??Gamma(0.5,b ),
2
introducing additional parameters b and b , independently distributed as a
1 2
positive multiple of a chisquare random variable. That is,
b |Y,µ,?,b ,k?Gamma(0.5, µ+1),
1 2
b |Y,µ,?,b ,k?Gamma(0.5, ?+1).
2 1
(cid:10)
Let Sk = k
i=1
Yi, and S
k
(cid:5) = Sn ?Sk To apply the Gibbs sampler, the fully
specified conditional distributions are needed. The conditional distributions
for µ,?,b , and b are given by
1 2
µ|y,?,b
1
,b
2
,k ? Gamma(0.5+Sk, k+b
1
);
?|y,µ,b ,b ,k ? Gamma(0.5+S (cid:5) , n?k+b );
1 2 k 2
b |y,µ,?,b ,k ? Gamma(0.5,µ+1);
1 2
b |y,µ,?,b ,k ? Gamma(0.5,?+1),
2 1
and the posterior density of the change point k is
L(Y;k,µ,?)
f(k|Y,µ,?,b 1 ,b 2 )= (cid:10) n , (9.7)
L(Y;j,µ,?)
j=1
where " #
L(Y;k,µ,?)=e
k(??µ) µ S k
?
is the likelihood function.

274 Statistical Computing with R
Forthechangepointanalysiswiththemodelspecifiedonthepreviouspage,
theGibbssampleralgorithmisasfollows(G(a,b)denotestheGamma(shape=
a, rate=b) distribution).
1. Initialize k by a random draw from 1:n, and initialize ?,µ,b ,b to 1.
1 2
2. For each iteration, indexed t=1,2,... repeat:
(a) Generate µ(t) from G(0.5+Sk(t?1) , k(t?1)+b
1
(t?1)).
(b) Generate ?(t) from G(0.5+S(cid:5) , n?k(t?1)+b (t?1)).
k(t?1) 2
(c) Generate b (t) from G(0.5, µ(t)+1).
1
(d) Generate b (t) from G(0.5, ?(t)+1).
2
(e) Generate k(t) from the multinomial distribution defined by (9.7)
using the updated values of ?,µ,b ,b .
1 2
(f) X(t)=(µ(t),?(t),b (t),b (t),k(t)) (every candidate is accepted).
1 2
(g) Increment t.
The implementation of the Gibbs samplerfor this problemis shownonthe
facing page.
From the output of the Gibbs sampler below, the following sample means
are obtained after discarding a burn-in sample of size 200. The estimated
.
change point is k = 40. From year k = 1 (1851) to k = 40 (1890) the
.
estimated Poisson mean is µˆ =3.1, and from year k =41 (1891) forward the
.
estimated Poissonmean is ?ˆ =0.93.
b <- 201
j <- k[b:m]
> print(mean(k[b:m]))
[1] 39.935
> print(mean(lambda[b:m]))
[1] 0.9341033
> print(mean(mu[b:m]))
[1] 3.108575
Histograms and plots of the chains are shownin Figures 9.11 and 9.12. Code
to generate the plots is given on page 279. (cid:5)

Markov Chain Monte Carlo Methods 275
# Gibbs sampler for the coal mining change point
# initialization
n <- length(y) #length of the data
m <- 1000 #length of the chain
mu <- lambda <- k <- numeric(m)
L <- numeric(n)
k[1] <- sample(1:n, 1)
mu[1] <- 1
lambda[1] <- 1
b1 <- 1
b2 <- 1
# run the Gibbs sampler
for (i in 2:m) {
kt <- k[i-1]
#generate mu
r <- .5 + sum(y[1:kt])
mu[i] <- rgamma(1, shape = r, rate = kt + b1)
#generate lambda
if (kt + 1 > n) r <- .5 + sum(y) else
r <- .5 + sum(y[(kt+1):n])
lambda[i] <- rgamma(1, shape = r, rate = n - kt + b2)
#generate b1 and b2
b1 <- rgamma(1, shape = .5, rate = mu[i]+1)
b2 <- rgamma(1, shape = .5, rate = lambda[i]+1)
for (j in 1:n) {
L[j] <- exp((lambda[i] - mu[i]) * j) *
(mu[i] / lambda[i])^sum(y[1:j])
}
L <- L / sum(L)
#generate k from discrete distribution L on 1:n
k[i] <- sample(1:n, prob=L, size=1)
}

276 Statistical Computing with R
0 200 400 600 800 1000
0.4
0.3
0.2
0.1
Index
um
0 200 400 600 800 1000
4.1
0.1
6.0
2.0
Index
adbmal
0 200 400 600 800 1000
09
07
05
03
Index
k
=
tniop
egnahc
FIGURE 9.11: Output of the Gibbs sampler in Example 9.9.
mu 3.1
ytisneD
2.5 3.0 3.5 4.0 4.5
5.1
0.1
5.0
0.0
lambda 0.9
ytisneD
0.6 0.8 1.0 1.2 1.4
0.3
5.2
0.2
5.1
0.1
5.0
0.0
changepoint
ytisneD
35 40 45
52.0
02.0
51.0
01.0
50.0
00.0
FIGURE 9.12: Distribution of µ, ?, and k from the change point analysis
for coal mining disasters in Example 9.9.

Markov Chain Monte Carlo Methods 277
Several contributed packages for R offer implementations of the methods
in this chapter. See, for example, the packages mcmc and MCMCpack [117,
191]. The coda (Convergence Diagnosis and Output Analysis) package [212]
provides utilities that summarize, plot, and diagnose convergence of mcmc
objects created by functions in MCMCpack. Also see mcgibbsit [291]. For
implementation of Bayesian methods in general, see the task view on CRAN
“BayesianInference” for a description of several packages.
Exercises
9.1 Repeat Example 9.1 for the target distribution Rayleigh(? = 2). Compare
the performanceofthe Metropolis-HastingssamplerforExample9.1andthis
problem. Inparticular,whatdifferencesareobviousfromtheplotcorrespond-
ing to Figure 9.1?
9.2 Repeat Example 9.1 using the proposal distribution Y ? Gamma(Xt,1)
(shape parameter Xt and rate parameter 1).
9.3 Use the Metropolis-Hastings sampler to generate random variables from a
standard Cauchy distribution. Discard the first 1000 of the chain, and com-
parethe decilesofthe generatedobservationswiththe decilesofthe standard
Cauchydistribution(seeqcauchyorqtwithdf=1). RecallthataCauchy(?,?)
distribution has density function
1
f(x)= , ??<x<?, ?>0.
??(1+[(x??)/?]2)
The standard Cauchy has the Cauchy(? = 1,? = 0) density. (Note that the
standard Cauchy density is equal to the Student t density with one degree of
freedom.)
9.4 Implement a random walk Metropolis sampler for generating the standard
Laplace distribution (see Exercise 3.2). For the increment, simulate from a
normal distribution. Compare the chains generated when different variances
are used for the proposaldistribution. Also, compute the acceptance rates of
each chain.
9.5 What effect, if any, does the width w have on the mixing of the chain in
Example 9.5? Repeat the simulation keeping the random number seed fixed,
trying different proposal distributions based on the random increments from
Uniform(?w,w), varying w.
9.6 Rao [220, Sec. 5g] presented an example on genetic linkage of 197 animals
in four categories (also discussed in [67, 106, 171, 266]). The group sizes are

278 Statistical Computing with R
(125,18,20,34). Assume that the probabilities of the corresponding multino-
mial distribution are
(cid:7) (cid:8)
1 ? 1?? 1?? ?
+ , , , .
2 4 4 4 4
Estimate the posteriordistribution of ? giventhe observedsample, using one
of the methods in this chapter.
9.7 Implement a Gibbs sampler to generate a bivariate normal chain (Xt,Yt)
with zero means, unit standard deviations, and correlation 0.9. Plot the
generated sample after discarding a suitable burn-in sample. Fit a simple
linear regression model Y =? +? X to the sample and check the residuals
0 1
of the model for normality and constant variance.
9.8 This example appears in [40]. Consider the bivariate density
(cid:7) (cid:8)
n
f(x,y)? y x+a?1(1?y) n?x+b?1, x=0,1,...,n, 0?y ?1.
x
It can be shown (see e.g. [23]) that for fixed a,b,n, the conditional distribu-
tions areBinomial(n,y)andBeta(x+a,n?x+b). Use the Gibbs samplerto
generate a chain with target joint density f(x,y).
9.9 Modify the Gelman-Rubin convergence monitoring given in Example 9.8 so
that only the final value of Rˆ is computed, and repeat the example, omitting
the graphs.
9.10 RefertoExample9.1. UsetheGelman-Rubinmethodtomonitorconvergence
ofthechain,andrunthechainuntilthechainhasconvergedapproximatelyto
the targetdistribution accordingto Rˆ <1.2. (See Exercise9.9.) Also use the
coda[212]packagetocheckforconvergenceofthechainbytheGelman-Rubin
method. Hints: See the help topics for the coda functions gelman.diag,
gelman.plot,as.mcmc,and mcmc.list.
9.11 RefertoExample9.5. UsetheGelman-Rubinmethodtomonitorconvergence
ofthechain,andrunthechainuntilthechainhasconvergedapproximatelyto
the targetdistributionaccordingto Rˆ <1.2. Also use the coda[212]package
to check for convergence of the chain by the Gelman-Rubin method. (See
Exercises 9.9 and 9.10.)
9.12 RefertoExample9.6. UsetheGelman-Rubinmethodtomonitorconvergence
ofthechain,andrunthechainuntilthechainhasconvergedapproximatelyto
the targetdistributionaccordingto Rˆ <1.2. Also use the coda[212]package
to check for convergence of the chain by the Gelman-Rubin method. (See
Exercises 9.9 and 9.10.)

|     | Markov | Chain | Monte | Carlo | Methods |     |     |     | 279 |
| --- | ------ | ----- | ----- | ----- | ------- | --- | --- | --- | --- |
R Code
| Code for Figure    | 9.3           | on page  | 255    |          |        |          |                |     |     |
| ------------------ | ------------- | -------- | ------ | -------- | ------ | -------- | -------------- | --- | --- |
| Reference lines    | are added     |          | at the | t (?)    | and    | t        | (?) quantiles. |     |     |
|                    |               |          |        | 0.025    |        | 0.975    |                |     |     |
| par(mfrow=c(2,2))  |               | #display |        | 4 graphs |        | together |                |     |     |
| refline            | <- qt(c(.025, |          | .975), | df=n)    |        |          |                |     |     |
| rw <- cbind(rw1$x, |               | rw2$x,   |        | rw3$x,   | rw4$x) |          |                |     |     |
| for (j in          | 1:4)          | {        |        |          |        |          |                |     |     |
plot(rw)[,j], type="l",
|     | xlab=bquote(sigma |                     |     | == .(round(sigma[j],3))), |     |     |     |     |     |
| --- | ----------------- | ------------------- | --- | ------------------------- | --- | --- | --- | --- | --- |
|     | ylab="X",         | ylim=range(rw[,j])) |     |                           |     |     |     |     |     |
abline(h=refline)
}
| par(mfrow=c(1,1)) |            | #reset       |                    | to default  |         |           |         |          |     |
| ----------------- | ---------- | ------------ | ------------------ | ----------- | ------- | --------- | ------- | -------- | --- |
| Code for Figures  | 9.4(a)     |              | on page            | 259         | and     | 9.4(b)    | on page | 259      |     |
| plot(x,           | type="l")  |              |                    |             |         |           |         |          |     |
| abline(h=b,       | v=burn,    |              | lty=3)             |             |         |           |         |          |     |
| xb <- x[-         | (1:burn)]  |              |                    |             |         |           |         |          |     |
| hist(xb,          | prob=TRUE, |              | xlab=bquote(beta), |             |         | ylab="X", |         | main="") |     |
| z <- seq(min(xb), |            | max(xb),     |                    | length=100) |         |           |         |          |     |
| lines(z,          | dnorm(z,   | mean(xb),    |                    | sd(xb)))    |         |           |         |          |     |
| Code for Figure   | 9.11       | on           | page               | 276         |         |           |         |          |     |
| # plots           | of the     | chains       | for                | Gibbs       | sampler | output    |         |          |     |
| par(mfcol=c(3,1), |            | ask=TRUE)    |                    |             |         |           |         |          |     |
| plot(mu,          | type="l",  | ylab="mu")   |                    |             |         |           |         |          |     |
| plot(lambda,      | type="l",  |              | ylab="lambda")     |             |         |           |         |          |     |
| plot(k,           | type="l",  | ylab="change |                    |             | point   | = k")     |         |          |     |

| 280  |            |      | Statistical |       | Computing | with   | R   |     |
| ---- | ---------- | ---- | ----------- | ----- | --------- | ------ | --- | --- |
| Code | for Figure | 9.12 | on          | page  | 276       |        |     |     |
| #    | histograms | from | the         | Gibbs | sampler   | output |     |     |
par(mfrow=c(2,3))
| labelk            |        | <- "changepoint"      |          |                      |                          |         |           |     |
| ----------------- | ------ | --------------------- | -------- | -------------------- | ------------------------ | ------- | --------- | --- |
| label1            |        | <- paste("mu",        |          | round(mean(mu[b:m]), |                          |         | 1))       |     |
| label2            |        | <- paste("lambda",    |          |                      | round(mean(lambda[b:m]), |         |           | 1)) |
| hist(mu[b:m],     |        |                       | main="", | xlab=label1,         |                          |         |           |     |
|                   | breaks | =                     | "scott", | prob=TRUE)           |                          | #mu     | posterior |     |
| hist(lambda[b:m], |        |                       | main="", |                      | xlab=label2,             |         |           |     |
|                   | breaks | =                     | "scott", | prob=TRUE)           |                          | #lambda | posterior |     |
| hist(j,           |        | breaks=min(j):max(j), |          |                      | prob=TRUE,               |         | main="",  |     |
xlab = labelk)
| par(mfcol=c(1,1), |     |     | ask=FALSE) |     | #restore |     | display |     |
| ----------------- | --- | --- | ---------- | --- | -------- | --- | ------- | --- |

Chapter 10
Probability Density Estimation
Density estimation is a collection of methods for constructing an estimate
of a probability density, as a function of an observed sample of data. In
previouschapters,wehaveuseddensity estimationinformallyto describethe
distributionofdata. Ahistogram isatypeofdensityestimator. Anothertype
of density estimator is provided in the R function density. As explained in
the following sections, density computes kernel density estimates.
Several methods of density estimation are discussed in the literature. In
this chapter we restrict attention to nonparametric density estimation. A
density estimation problem requires a nonparametric approach if we have no
information about the target distribution other than the observed data. In
other cases we may have incomplete information about the distribution, so
thattraditionalestimationmethods arenotdirectly applicable. Forexample,
suppose it is known that the data arise from a location-scale family, but the
family is not specified. Nonparametric density estimation may not always be
the best approach, however. Perhaps the data are assumed to be a sample
from a normal mixture model, which is a type of classification problem; one
can apply EM or other parametric estimation procedures. For problems that
require a nonparametric approach, density estimation provides a flexible and
powerful tool for visualization, exploration, and analysis of data.
Readers are referred to Scott [244], Silverman [252] or Devroye [70] for an
overviewofunivariateandmultivariatedensityestimationmethods including
kernel methods. On multivariate density estimation see Scott [244].
10.1 Univariate Density Estimation
Inthissectionunivariatedensityestimationmethodsarepresented,includ-
ing the histogram, frequency polygon, average shifted histogram, and kernel
density estimators.
281

282 Statistical Computing with R
10.1.1 Histograms
Several methods for computing the histogram density estimate are pre-
sented and illustrated with examples. These methods include the normal
referencerule,Sturges[257],Scott[241],andFreedman-Diaconis[99]rulesfor
determining the class boundaries.
Introduced in elementary statistics courses, and available in all popular
statistics packages, the probability histogram is the most widely used den-
sity estimate in descriptive statistics. However, even in the elementary data
analysisprojectswe are facedwithtricky questions suchas how to determine
the best number of bins, the boundaries and width of class intervals, or how
to handle unequal class interval widths. In many software packages, these
decisionsaremadeautomatically,butsometimesproduceundesirableresults.
With R software,the user has control over severaloptions described below.
The histogram is a piecewise constant approximation of the density func-
tion. Because data, in general, is contaminated by noise, the estimator that
presentstoomuchdetail(fittingmorecloselywiththedata)isnotnecessarily
“better.” The choice of bin width for a histogram is a choice of smoothing
parameter. A narrow bin width may undersmooth the data, presenting too
much detail, while wider bin width may oversmooth the data, obscuring im-
portantfeatures. Severalrulesarecommonlyappliedthatsuggestanoptimal
choiceofbinwidth. Theserulesarediscussedbelow. Thechoiceofsmoothing
parameter and bin center is a challenging problem that continues to attract
much attention in research.
Suppose that a random sample X
1
,...,Xn is observed. To construct a
frequency or probability histogram of the sample, the data must be sorted
into bins, and the binning operation is determined by the boundaries of the
class intervals. Although in principle any class boundaries can be used, some
choicesaremorereasonablethanothersintermsofthequalityofinformation
about the population density.
In this book we only discuss uniform bin width. Among the commonly
applied rules for determining the boundaries of class intervals of a histogram
are Sturges’ rule [257], Scott’s normal reference rule [241], the Freedman-
Diaconis (FD) rule [99], and various modifications of these rules.
Givenclassintervalsofequalwidthh,thehistogramdensityestimatebased
on a sample size n is
fˆ(x)=
?k
, tk ?x<tk+1 , (10.1)
nh
where ?k is the number of sample points in the class interval [tk,tk+1 ). If the
bin width is exactly 1, then the density estimate is the relative frequency of
the class containing the point x.
The bias of a histogramdensity estimator (10.1) is proportional to the bin
width h. The bias in a histogram density estimate is determined by f(cid:5), the
first order derivative of the density. For other density estimators such as the

Probability Density Estimation 283
frequencypolygon,ASH,andkerneldensityestimators,thebiasisdetermined
by f(cid:5)(cid:5), the second order derivative of the density. Estimators of higher order
are not usually applied because the density estimates can be negative.
Sturges’ Rule
AlthoughSturges’rule[257]tendstooversmooththedataandeitherScott’s
rule or FD are generally preferable, Sturges’ rule is the default in many sta-
tistical packages. In this section we present the motivation for this rule and
also use it to illustrate the behavior of the hist histogram plotting function
and how to change the default behavior. Sturges’ rule is based on the im-
plicit assumption that the sampled population is normally distributed. In
this case, it is natural to choose a family of discrete distributions that con-
verge in distribution to normal as the number of classes (and sample size n)
tendtoinfinity. Themostobviouscandidateisthebinomialdistributionwith
probabilityofsuccess1/2. Forexample,ifthesamplesizeisn=64,onecould
select seven class intervals such that the frequency histogram corresponding
to a Binomial(6,1/2)sample has expected class frequencies
(cid:7) (cid:8) (cid:7) (cid:8) (cid:7) (cid:8) (cid:7) (cid:8)
6 6 6 6
, , ,... =1,6,15,20,15,6,1,
0 1 2 6
which sum to n = 64. Now consider sample sizes n = 2k, k = 1,2,....
For large k (large n) the distribution of Binomial(k,1/2) is approximately
Normal(µ = n/2,?2 = n/4). Here k = log n and we have k+1 bins with
2
expected class frequencies
(cid:7) (cid:8)
log n
2 , j =0,1,...,k.
j
According to Sturges, the optimal [257] width of class intervals is given by
R
,
1+log n
2
whereRisthesamplerange. Thenumberofbinsdependsonlyonthesample
size n, and not on the distribution. This choice of class interval is designed
for data sampled from symmetric, unimodal populations, but is not a good
choiceforskeweddistributionsordistributionswithmorethanonemode. For
large samples, Sturges’ rule tends to oversmooth(see Table 10.1).
Example 10.1 (Histogram density estimates using Sturges’ Rule)
Although breaks = "Sturges"is the default in the hist function in R, this
default value is a suggestiononly unless a vector of class boundaries is given.
For example, compare the following default behavior of hist for number of
classes with Sturges’ Rule.

| 284                              |                      |               | Statistical |            | Computing         |         | with R |                |     |
| -------------------------------- | -------------------- | ------------- | ----------- | ---------- | ----------------- | ------- | ------ | -------------- | --- |
| n <-                             | 25                   |               |             |            |                   |         |        |                |     |
| x <-                             | rnorm(n)             |               |             |            |                   |         |        |                |     |
| # calc                           | breaks               |               | according   | to         | Sturges’          |         | Rule   |                |     |
| nclass                           | <-                   | ceiling(1     |             | + log2(n)) |                   |         |        |                |     |
| cwidth                           | <-                   | diff(range(x) |             | /          | nclass)           |         |        |                |     |
| breaks                           | <-                   | min(x)        | + cwidth    |            | * 0:nclass        |         |        |                |     |
| h.default                        |                      | <-            | hist(x,     | freq       | = FALSE,          | xlab    | =      | "default",     |     |
|                                  | main                 | = "hist:      | default")   |            |                   |         |        |                |     |
| z <-                             | qnorm(ppoints(1000)) |               |             |            |                   |         |        |                |     |
| lines(z,                         |                      | dnorm(z))     |             |            |                   |         |        |                |     |
| h.sturges                        |                      | <-            | hist(x,     | breaks     | =                 | breaks, | freq   | = FALSE,       |     |
|                                  | main                 | = "hist:      | Sturges")   |            |                   |         |        |                |     |
| lines(z,                         |                      | dnorm(z))     |             |            |                   |         |        |                |     |
| The correspondingnumericalvalues |                      |               |             |            | ofbreaksandcounts |         |        | areshownbelow, |     |
andthe histogramsproducedbyeachmethodaredisplayedinFigure10.1(a).
ThedefaultmethodisamodificationofSturges’Rulethatselects“nice”break
points.
> print(h.default$breaks)
| [1] | -2.0 | -1.5 | -1.0 -0.5 |     | 0.0 | 0.5 1.0 | 1.5 | 2.0 |     |
| --- | ---- | ---- | --------- | --- | --- | ------- | --- | --- | --- |
> print(h.default$counts)
| [1]                             | 3 0  | 4 6 2 | 7 2 1 |     |     |         |     |     |     |
| ------------------------------- | ---- | ----- | ----- | --- | --- | ------- | --- | --- | --- |
| > print(round(h.sturges$breaks, |      |       |       |     |     | 1))     |     |     |     |
| [1]                             | -1.8 | -1.2  | -0.6  | 0.0 | 0.6 | 1.2 1.8 |     |     |     |
> print(h.sturges$counts)
| [1] | 3 4 | 6 4 6 | 2   |     |     |     |     |     |     |
| --- | --- | ----- | --- | --- | --- | --- | --- | --- | --- |
> print(cwidth)
| [1]       | 0.605878 |           |         |          |      |              |              |          |            |
| --------- | -------- | --------- | ------- | -------- | ---- | ------------ | ------------ | -------- | ---------- |
| The bin   | width    | according | to      | Sturges’ | rule | is 0.605878, |              | compared | to the bin |
| width 0.5 | applied  | by        | hist by | default. | Note | that         | the function |          |            |
> nclass.Sturges
| function   |     | (x)      | ceiling(log2(length(x)) |                   |     |             | + 1)      |                 |     |
| ---------- | --- | -------- | ----------------------- | ----------------- | --- | ----------- | --------- | --------------- | --- |
| computes   | the | number   | of classes              | according         |     | to Sturges’ | rule.     |                 |     |
| Thedensity |     | estimate | fora                    | pointxinintervali |     |             | isgivenby | the heightofthe |     |
ith
| histogramon |     | the       | bin. In | this example |     | we have | the | following estimates | for |
| ----------- | --- | --------- | ------- | ------------ | --- | ------- | --- | ------------------- | --- |
| the density | at  | the point | x=0.1.  |              |     |         |     |                     |     |
> print(h.default$density[5])
| [1] | 0.16 |     |     |     |     |     |     |     |     |
| --- | ---- | --- | --- | --- | --- | --- | --- | --- | --- |
> print(h.sturges$density[4])
| [1]       | 0.2640796 |           |        |         |        |            |            |           |           |
| --------- | --------- | --------- | ------ | ------- | ------ | ---------- | ---------- | --------- | --------- |
| For the   | second    | estimate, | the    | formula | (10.1) | is applied |            | with ?k = | 4 and h = |
| 0.605878. | (The      | standard  | normal | density |        | at x=0.1   | is 0.397.) |           |           |

Probability Density Estimation 285
For larger samples of normal data, the default behavior of hist produces
approximatelythesamedensityestimateasSturges’Rule,asshowninFigure
10.1(b) for sample size n=1000. (cid:5)
hist: default
default
ytisneD
?2 ?1 0 1 2
4.0
2.0
0.0
hist: Sturges
x
ytisneD
?1 0 1
4.0
3.0
2.0
1.0
0.0
hist: default
default
(a)
ytisneD
?3 ?2 ?1 0 1 2 3
3.0
2.0
1.0
0.0
hist: Sturges
x
ytisneD
?3 ?2 ?1 0 1 2 3
4.0
3.0
2.0
1.0
0.0
(b)
FIGURE 10.1: HistogramestimatesofnormaldensityinExample10.1for
samples of size (a) 25 and (b) 1000 with standard normal density curve.
Example 10.2 (Density estimates from a histogram)
Ingeneral,to recoverdensityestimates fˆ(x) fromahistogram,itis necessary
to locate the bin containing the point x, then compute the relative frequency
(10.1) for that bin. In the previous example with n=1000,corresponding to
Figure 10.1(b), we have the following estimates.
x0 <- .1
b <- which.min(h.default$breaks <= x0) - 1
print(c(b, h.default$density[b]))
b <- which.min(h.sturges$breaks <= x0) - 1
print(c(b, h.sturges$density[b]))
[1] 7.00 0.38
[1] 6.0000000 0.3889306
Inthedefaulthistogramfˆ,thepointx =0.1isinbin7,andfˆ(0.1)=0.38.
1 0 1
Infˆ withbreaksspecified,x isinbin6andfˆ(0.1)=0.3889306. Alternately,
2 0 2
the density estimate is the relative frequency weighted by bin width.

286 Statistical Computing with R
h.default$counts[7] / (n * 0.5)
h.sturges$counts[6] / (n * cwidth)
[1] 0.38
[1] 0.3889306
Both estimates are quite close to the value of the standard normal density
?(0.1)=0.3969525. (cid:5)
Sturges’ Rule is motivated by the normal distribution, which is symmet-
ric. To obtain better density estimates for skewed distributions, D?oane [73]
suggested a modification based on the sample skewness coefficient b (6.2).
1
The suggested correction is to add
(cid:7) ? (cid:8)
| b |
Ke =log
2
1+
?(
?
b
1
)
, (10.2)
1
classes, where 6
(cid:2) 6(n?2)
?( b )=
1
(n+1)(n+3)
is the standard deviation of the sample skewness coefficient for normal data.
Scott’s Normal Reference Rule
Toselectanoptimal(orgood)smoothingparameterfordensityestimation,
one needs to establish a criterion for comparing smoothing parameters. One
approachaimstominimizethesquarederrorintheestimate. FollowingScott’s
approach [244], we briefly summarize some of the main ideas on L criteria.
2
The mean squared error (MSE) of a density estimator fˆ(x) at x is
MSE(fˆ(x))=E(fˆ(x)?f(x))2 =Var(fˆ(x))+bias2(fˆ(x)).
The MSE measures pointwise error. Consider the integrated squared error
(ISE), which is the L norm
2
(cid:6)
ISE(fˆ(x))= (fˆ(x)?f(x))2dx.
It is simpler to consider the statistic, mean integrated squared error (MISE),
given by
(cid:3)(cid:6) (cid:4) (cid:6)
MISE =E[ISE]=E (fˆ(x)?f(x))2dx = E[(fˆ(x)?f(x))2]dx
(cid:6)
= MSE(fˆ(x)):=IMSE

Probability Density Estimation 287
(the integrated mean squared error)by Fubini’s Theorem. Under some regu-
larity conditions on f, Scott [241] shows that
(cid:6) (cid:7) (cid:8)
1 h2 1
MISE = + f (cid:5) (x)2dx+O +h3 ,
nh 12 n
and the optimal choice of bin width is
(cid:7) (cid:8)
6n
1/3
? (cid:22)
h = (10.3)
n f(cid:5)(x)2dx
with asymptotic MISE
(cid:7) (cid:6) (cid:8)
9
1/3
AMISE ? = f (cid:5) (x)2dx n ?2/3. (10.4)
16
In density estimation f is unknown, so the optimal h cannot be computed
exactly, but the asymptotically optimal h depends on the unknown density
only through its first derivative.
Scott’s Normal Reference Rule [241], which is calibrated to a normal dis-
tribution with variance ?2, specifies a bin width
hˆ = . 3.49?ˆn ?1/3,
where?ˆisanestimateofthepopulationstandarddeviation?. Fornormaldis-
tributionswithvariance?2,theoptimalbinwidthish? =2(31/3)?1/6?n?1/3.
n
Substituting the sample estimate of standard deviation gives the normal ref-
erence rule for optimal bin width
hˆ =3.490830212?ˆn ?1/3 = . 3.49?ˆn ?1/3, (10.5)
where ?ˆ2 is the sample variance S2. There remains the choice of the location
of the interval boundaries (bin origins or midpoints). On this subject see
Scott [241] and the ASH density estimates in section 10.1.3 below.
R note 10.1 The truehist (MASS) function [278] uses Scott’s Rule by de-
fault. In hist and truehist the number of classes for Scott’s Rule is com-
puted by the function nclass.scottas
h <- 3.5 * sqrt(stats::var(x)) * length(x)^(-1/3)
ceiling(diff(range(x))/h)
(If the vector breaks of breakpoints is not specified, the number of classes is
adjusted by the pretty function to obtain ‘nice’ breakpoints.)
Example 10.3 (Density estimation for Old Faithful)
ThisexampleillustratesScott’sNormalReferenceRuletodeterminebinwidth
for a histogramof data on the eruptions of the Old Faithful geyser. One ver-
sionofthedataisfaithfulinthebasedistributionofR.Anotherversion[15],

288 Statistical Computing with R
geyser (MASS), is analyzed by Venables and Ripley [278]. Here the geyser
datasetisanalyzed. Thereare299observationson2variables,durationand
waiting time. A density estimate for the time between eruptions (waiting)
using Scott’s Rule is computed below. For comparison, density estimation
is repeated using breaks = "scott" in the hist function, and truehist
(MASS) with breaks = "Scott".
Scott’sRulegivestheestimateforbinwidthˆh=3.5(13.89032·0.1495465)=
7.27037,and (cid:3)(108?43)/7.27037(cid:4)=9 bins.
library(MASS) #for geyser and truehist
waiting <- geyser$waiting
n <- length(waiting)
# rounding the constant in Scott’s rule
# and using sample standard deviation to estimate sigma
h <- 3.5 * sd(waiting) * n^(-1/3)
# number of classes is determined by the range and h
m <- min(waiting)
M <- max(waiting)
nclass <- ceiling((M - m) / h)
breaks <- m + h * 0:nclass
h.scott <- hist(waiting, breaks = breaks, freq = FALSE,
main = "")
truehist(waiting, nbins = "Scott", x0 = 0, prob=TRUE,
col = 0)
hist(waiting, breaks = "scott", prob=TRUE, density=5,
add=TRUE)
The histograms from h.scott1 and h.scott2 are shown in Figures 10.2(a)
and 10.2(b). The histograms suggest that the data are not normally distrib-
uted and that there are possibly two modes at about 55 and 75. (cid:5)
Freedman-Diaconis Rule
Scott’s normal reference rule above is a member of a class of rules that
select the optimal bin width according to a formula hˆ = Tn?1/3, where T is
a statistic. These n?1/3 rules are related to the fact that the optimal rate of
decay of bin width with respect to Lp norms is n?1/3 (see e.g. [288]). The
Freedman-Diaconis Rule [99] is another member of this class. For the FD
rule, the statistic T is twice the sample interquartile range. That is,
hˆ =2(IQR)n ?1/3,
where IQR denotes the sample interquartile range. Here the estimator ?ˆ
is proportional to the IQR. The IQR is less sensitive than sample standard

Probability Density Estimation 289
waiting
ytisneD
50 60 70 80 90 100 110
030.0
520.0
020.0
510.0
010.0
500.0
000.0
40 50 60 70 80 90 100 110
(a)
030.0
520.0
020.0
510.0
010.0
500.0
000.0
waiting
(b)
FIGURE 10.2: Histogram estimate of Old Faithful waiting time density
in Example 10.3. (a) Scott’s Rule suggests 9 bins. (b) hist with breaks =
"scott" uses only 7 bins, after function pretty is applied to the breaks.
deviation to outliers in the data. The number of classes is the sample range
divided by the bin width.
Table10.1summarizesresultsofasimulationexperimentcomparingSturges’
Rule, Scott’sNormalReferenceRule, andthe Freedman-DiaconisRule. Each
entryinthetablerepresentsasinglestandardnormalorstandardexponential
sample. These distributions have equal variance, but each rule produces dif-
ferent optimal numbers of bins, particularly when the sample size is large. It
appears that even for normal data, Sturges’ Rule is oversmoothing the data.
TABLE 10.1: Estimated Best Number of Class Intervals
for Simulated Data According to Three Rules for Histograms
(a) Standard Normal (b) Standard Exponential
n Sturges Scott FD n Sturges Scott FD
10 5 2 3 10 5 2 2
20 6 3 5 20 6 3 3
30 6 4 4 30 6 4 4
50 7 5 7 50 7 6 9
100 8 7 9 100 8 6 7
200 9 9 11 200 9 9 14
500 10 14 20 500 10 16 25
1000 11 19 25 1000 11 23 39
5000 14 40 52 5000 14 37 58
10000 15 46 60 10000 15 54 82

290 Statistical Computing with R
10.1.2 Frequency Polygon Density Estimate
Allhistogramdensityestimatesarepiecewisecontinuousbutnotcontinuous
over the entire range of the data. A frequency polygonprovides a continuous
density estimate from the same frequency distribution used to produce the
histogram. The frequency polygon is constructed by computing the density
estimate at the midpoint of eachclass interval, and using linear interpolation
for the estimates between consecutive midpoints.
Scott [243] derives the bin width for constructing the optimal frequency
polygonbyasymptoticallyminimizingtheIMSE.Theoptimalfrequencypoly-
gon bin width is
(cid:3) (cid:6) (cid:4)
49
?1/5
h fp =2 f (cid:5)(cid:5) (x)2dx n ?1/5 (10.6)
n
15
with (cid:3) (cid:6) (cid:4)
5 49
1/5
IMSE fp = f (cid:5)(cid:5) (x)2dx n ?4/5+O(n ?1).
12 15
Notice that in general (10.6) cannot be computed without the knowledge of
the underlying distribution. In practice, f(cid:5)(cid:5) i(cid:22)s estimated (e.g. a?difference
method is often used). For normal densities, f(cid:5)(cid:5)(x)2dx = 3/(8 ??5) and
the optimal frequency polygon bin width is
h
fp
=2.15?n
?1/5.
(10.7)
n
Thenormaldistributionasareferencedistributionwillnotbeoptimalifthe
distribution is not symmetric. For data that is clearly skewed, a more appro-
priatereferencedistributioncanbeselected,suchasalognormaldistribution.
A skewness adjustment (Scott [244]) derived using a lognormal distribution
as the reference distribution, is the factor
121/5?
. (10.8)
e7?2/4(e?2 ?1)1/2(9?4+20?2+12)1/5
The adjustment factor should be multiplied times the bin width to obtain
the appropriate smaller bin width. Similarly, if the distribution has heavier
tails than the normaldistribution, a kurtosis adjustment can be derivedwith
reference to a t distribution.
Example 10.4 (Frequency polygon density estimate)
Construct a frequency polygon density estimate of the geyser (MASS) data.
Determine the frequency polygon bin width by the normal reference rule,

Probability Density Estimation 291
hˆfp = 2.15Sn?1/5, substituting the sample standard deviation S for ?. The
n
calculations are straightforward using the returned value from hist. The
vertices of the polygon are the sequence of points ($mids, $density) of the
returned hist object. Then the histogram with frequency polygon density
estimate is easily constructed by adding lines to the plot connecting these
points. There are a few more steps involved,to close the polygonat the ends
where the density estimate is zero. To draw the polygon there are several
options, such as segmentsor polygon.
waiting <- geyser$waiting #in MASS
n <- length(waiting)
# freq poly bin width using normal ref rule
h <- 2.15 * sqrt(var(waiting)) * n^(-1/5)
# calculate the sequence of breaks and histogram
br <- pretty(waiting, diff(range(waiting)) / h)
brplus <- c(min(br)-h, max(br+h))
histg <- hist(waiting, breaks = br, freq = FALSE,
main = "", xlim = brplus)
vx <- histg$mids #density est at vertices of polygon
vy <- histg$density
delta <- diff(vx)[1] # h after pretty is applied
k <- length(vx)
vx <- vx + delta # the bins on the ends
vx <- c(vx[1] - 2 * delta, vx[1] - delta, vx)
vy <- c(0, vy, 0)
# add the polygon to the histogram
polygon(vx, vy)
Thebinwidthish=9.55029. ThefrequencypolygonisshowninFigure10.3.
If the density estimates are required for arbitrary points, approxfun can be
a(cid:22)pplied for the linear interpolation. As a check on the estimate, verify that
? fˆ(x)dx=1.
?
# check estimates by numerical integration
fpoly <- approxfun(vx, vy)
print(integrate(fpoly, lower=min(vx), upper=max(vx)))
1 with absolute error < 1.1e-14
(cid:5)
10.1.3 The Averaged Shifted Histogram
In the preceding sections we have considered several rules for determining
thebestnumberofclassesorbestclassintervalwidth. Theoptimalbinwidth

292 Statistical Computing with R
waiting
ytisneD
20 40 60 80 100 120
030.0
520.0
020.0
510.0
010.0
500.0
000.0
FIGURE 10.3: Frequency polygon estimate of Old Faithful waiting time
density in Example 10.4.
doesnotdeterminethelocationofthecenterorendpointsofthebin,however.
Forexample,usingtruehist (MASS),wecaneasilyshiftthebinsfromleftto
right using the argument x0, while keeping the bin width constant. Shifting
theclassboundarieschangesthedensityestimates,soseveraldifferentdensity
estimates are possible using the same bin width. Figure 10.4 on page 294
illustratesfourhistogramdensityestimatesofastandardnormalsampleusing
the same number of bins, with bin origins offset by 0.25 from each other.
The Average Shifted Histogram (ASH) proposed by Scott [242] averages
the density estimates. That is, the ASH estimate of density is
(cid:5)m
1
fˆ ASH(x)= fˆ j(x),
m
j=1
where the class boundaries for estimate fˆ j+1 (x) are shifted by h/m from the
boundariesforfˆ j(x). Hereweareviewingtheestimatesasmhistogramswith
classwidth h. AlternatelywecanviewtheASHestimateasahistogramwith
widths h/m. The optimal bin width (see [244, Sec. 5.2]) for the naive ASH
estimate of a Normal(µ,?2) density is
h
?
=2.576?n
?1/5.
(10.9)
Example 10.5 (Calculations for ASH estimate)
This numerical example illustrates the method of computing the ASH esti-
mates. Four histogram estimates, each with bin width 1, are computed for a
sample size n = 100. The bin origins for each of the densities are at 0, 0.25,
0.5, and 0.75 respectively. The bin counts and breaks are shown below.

Probability Density Estimation 293
breaks -4 -3 -2 -1 0 1 2 3 4
counts 0 2 11 27 38 16 6 0
breaks -3.75 -2.75 -1.75 -0.75 0.25 1.25 2.25 3.25 4.25
counts 0 4 17 23 38 16 2 0
breaks -3.5 -2.5 -1.5 -0.5 0.5 1.5 2.5 3.5 4.5
counts 0 7 21 23 34 15 0 0
breaks -3.25 -2.25 -1.25 -0.25 0.75 1.75 2.75 3.75 4.75
counts 2 9 26 30 21 12 0 0
To compute an ASH density estimate at the point x = 0.2, say, locate the
intervalscontainingx=0.2andaveragethesedensityestimates. Theestimate
is
(cid:5)4
1 1 38+23+23+30 114
fˆ ASH(0.2)= fˆ k(0.2)= × = =0.285.
4 4 100(1) 400
k=1
Alternately, we can compute this estimate by considering the mesh over the
subintervals with width ? = h/m = 0.25. There are now 36 breakpoints at
?4+0.25i, i=0,1,...,35, and 35 bin counts, ? ,...,? . The point x=0.2
1 35
is in the intervals (?.75,.25],(?.5,.5],(?.25,.75],and (0,1] corresponding to
the 14th through 20th subintervals. The bin counts are
[1:12] 0 0 0 0 0 0 2 0 2 3 4 2
[13:24] 8 7 9 3 4 7 16 11 4 3 3 6
[25:35] 4 2 0 0 0 0 0 0 0 0 0
and the estimate can be computed by rearrangingthe terms as
7 + 9 + 3 + 4 = 23
9 + 3 + 4 + 7 = 23
3 + 4 + 7 + 16 = 30
4 + 7 + 16 + 11 = 38
= 7 + 2(9) + 3(3) + 4(4) + 3(7) + 2(16) + 11 = 114
or
? +2? +3? +4? +3? +2? +?
fˆ ASH(0.2)= 14 15 16 17 18 19 20.
mnh
(cid:5)
In general, if tk =max{tj :tj <x?tj+1 }, we have
fˆ ASH(x)=
?k+1?m+2?k+2?m+···+m?k+···+2?k+m?2 +?k+m?1
mnh
(cid:7) (cid:8)
1 m(cid:5)?1 |j|
= 1? ?k+j. (10.10)
nh m
j=1?m

294 Statistical Computing with R
x
ytisneD
?3 ?2 ?1 0 1 2 3
4.0
3.0
2.0
1.0
0.0
x
ytisneD
?3 ?2 ?1 0 1 2 3
4.0
3.0
2.0
1.0
0.0
x
ytisneD
?3 ?2 ?1 0 1 2 3
4.0
3.0
2.0
1.0
0.0
x
ytisneD
?3 ?2 ?1 0 1 2 3
4.0
3.0
2.0
1.0
0.0
FIGURE 10.4: Histogram estimates of a normal sample with equal bin
width but different bin origins, and standard normal density curve.
This computing formula requires that there are m?1 empty bins on the left
and the right. Equation (10.10) provides a formula for computing an ASH
densityestimateandshowsthatthisestimateisaweightedaverageofthebin
counts on the finer mesh. The weights (1?|j|/m) correspond to a discrete
triangulardistribution on[?1,1],whichapproachesthe triangulardensity on
[?1,1] as m??.
TheASH estimates canbe generalizedbyreplacingthe weights(1?|j|/m)
in(10.10)withaweightfunctionw(j)=w(j,m)correspondingtoasymmetric
density supported on [?1,1]. The triangular kernel is used in (10.10), which
is
K(t)=1?|t|, |t|<1,
and K(t)=0 otherwise. For other kernels see e.g. [244, 252] or the examples
of density,and Section 10.2.
Example 10.6 (ASH density estimate)
Construct an ASH density estimate of the Old Faithful waiting time data in
geyser$waiting (MASS) based on 20 histograms. For comparison with the
naive histogramdensity estimate of this data in Example 10.3, the bin width
is set to h=7.27037. (The normalreference rule for ASH estimates in (10.9)
gives h=11.44258.)

Probability Density Estimation 295
library(MASS)
waiting <- geyser$waiting
n <- length(waiting)
m <- 20
a <- min(waiting) - .5
b <- max(waiting) + .5
h <- 7.27037
delta <- h / m
#get the bin counts on the delta-width mesh.
br <- seq(a - delta*m, b + 2*delta*m, delta)
histg <- hist(waiting, breaks = br, plot = FALSE)
nk <- histg$counts
K <- abs((1-m):(m-1))
fhat <- function(x) {
# locate the leftmost interval containing x
i <- max(which(x > br))
k <- (i - m + 1):(i + m - 1)
# get the 2m-1 bin counts centered at x
vk <- nk[k]
sum((1 - K / m) * vk) / (n * h) #f.hat
}
# density can be computed at any points in range of data
z <- as.matrix(seq(a, b + h, .1))
f.ash <- apply(z, 1, fhat) #density estimates at midpts
# plot ASH density estimate over histogram
br2 <- seq(a, b + h, h)
hist(waiting, breaks = br2, freq = FALSE, main = "",
ylim = c(0, max(f.ash)))
lines(z, f.ash, xlab = "waiting")
Compare the ASH estimate in Figure 10.5 with the histogram estimate in
Figure 10.2(b) and the frequency polygon density estimate in Figure 10.3. (cid:5)
See the ash package [245] for an implementation of Scott’s univariate and
bivariate ASH routines.

296 Statistical Computing with R
waiting
ytisneD
40 60 80 100
530.0
030.0
520.0
020.0
510.0
010.0
500.0
000.0
FIGURE 10.5: ASH density estimate ofOld Faithful waiting times in Ex-
ample 10.6.
10.2 Kernel Density Estimation
Kernel density estimation generalizes the idea of a histogram density esti-
mate. IfahistogramwithbinwidthhisconstructedfromasampleX
1
,...,Xn,
then a density estimate for a point x within the range of the data is
1
fˆ(x)= ×k,
2hn
where k is the number of sample points in the interval (x?h,x+h). This
estimator can be written
(cid:7) (cid:8)
fˆ(x)=
1 (cid:5)n 1
w
x?Xi
, (10.11)
n h h
i=1
where w(t) = 1I(|t|<1) is a weight function. The density estimator fˆ(x)
2
in (10.11) with w(t) = 1I(|t|<1) is called the naive density estimator. This
2 (cid:22)
weight function has the property that 1 w(t)dt = 1, and w(t) ? 0, so w(t)
?1
is a probability density supported on the interval [?1,1].
Kernel density estimation replaces the weight function w(t) in the naive
estimator with a function K(·) called a kernel function, such that
(cid:6)
?
K(t)dt=1.
??
Inprobabilitydensityestimation,K(·)isusuallyasymmetricprobabilityden-
sityfunction. Theweightfunctionw(t)= 1I(|t|<1)iscalledthe rectangular
2

Probability Density Estimation 297
kernel. The rectangular kernelis a symmetric probability density centered at
the origin, and (cid:7) (cid:8)
1 x?Xi
w ,
nh h
corresponds to a rectangle of area 1/n centered at Xi. The density estimate
at x is the sum of rectangles located within h units from x.
Inthisbook,werestrictattentiontosymmetricpositivekerneldensityesti-
mators. Suppose thatK(·)is anothersymmetricprobabilitydensitycentered
at the origin, and define
(cid:7) (cid:8)
fˆ K(x)=
1 (cid:5)n 1
K
x?Xi
. (10.12)
n h h
i=1
Thenfˆisaprobabilitydensityfunction. Forexample,K(x)maybethetrian-
gulardensityon[?1,1](thetriangularkernel)orthestandardnormaldensity
(theGaussiankernel). Insection10.1.3wehaveseenthattheASHdensityes-
timate convergesto atriangularkerneldensity estimate (see equation(10.10)
for the kernel)as n??. The triangularkernelestimatorcorrespondstothe
sumofareasoftrianglesinsteadofrectangles. TheGaussiankernelestimator
centers a normal density at each data point, as illustrated in Figure 10.6.
Fromthedefinitionofthekerneldensityestimatorin(10.12)itfollowsthat
certaincontinuityanddifferentiabilitypropertiesofK(x)alsoholdforfˆ K(x).
If K(x) is a probability density, then fˆ K(x) is continuous at x if K(x) is
continuous at x, and fˆ K(x) has an rth order derivative at x if K(r)(x) exists.
In particular, if K(x) is the Gaussian kernel, then fˆis continuous and has
derivatives of all orders.
Thehistogramdensityestimatorcorrespondstotherectangularkernelden-
sity estimator. The bin width h is a smoothing parameter; small values
of h reveal local features of the density, while large values of h produce a
smoother density estimate. In kernel density estimation h is called the band-
width, smoothing parameter or window width.
The effect of varying the bandwidth is illustrated in Figure 10.6. The
n=10 sample points in Figure 10.6,
-0.77 -0.60 -0.25 0.14 0.45 0.64 0.65 1.19 1.71 1.74
were generated from the standard normaldistribution. As the window width
hdecreases,thedensityestimatebecomesrougher,andlargerhcorrespondsto
smootherdensityestimates. (Thisexampleis presentedsimplyto graphically
illustrate the kernel method; density estimation is not very useful for such a
small sample.)
Table 10.2 gives some kernel functions that are commonly applied in den-
sity estimation, which are also shown in Figure 10.7. The Epanechnikov ker-
nel was first suggested for kernel density estimation by Epanechnikov [85].
The efficiency of a kernel is defined by Silverman [252, p. 42]. The rescaled

298 Statistical Computing with R
?4 ?2 0 2 4
5.0
4.0
3.0
2.0
1.0
0.0
h= 0.25
?4 ?2 0 2 4
5.0
4.0
3.0
2.0
1.0
0.0
h= 0.4
?4 ?2 0 2 4
5.0
4.0
3.0
2.0
1.0
0.0
h= 0.6
?4 ?2 0 2 4
5.0
4.0
3.0
2.0
1.0
0.0
h= 1
FIGURE 10.6: Kernel density estimates using a Gaussian kernel with
bandwidth h.
Epanechnikov kernel has efficiency 1, which is an optimal kernel in the sense
ofMISE(Scott [244, pp.138–140]). Theasymptotic relativeefficiencies given
inTable10.2infactshowthatthereisnotmuchdifferenceamongthekernels
if the mean integrated squared error criterion is used (see [252, p. 43]). See
the examplesof densityfora method ofcalculatingthe efficiencies (actually
the reciprocal of efficiency in Table 10.2).
For a Gaussian kernel, the bandwidth h that optimizes IMSE is
h=(4/3)1/5?n ?1/5
=1.06?n
?1/5.
(10.13)
This choice of bandwidth is an optimal (IMSE) choice when the distribution
is normal. If the true density is not unimodal, however, (10.13) will tend to
oversmooth. Alternately, one can use a more robust estimate of dispersion in
(10.13), setting
?ˆ =min(S,IQR/1.34),
where S is the standard deviation of the sample. Silverman [252, p. 48]
indicates that an even better choice for a Gaussian kernel is the reduced
width
h=0.9?ˆn
?1/5
=0.9min(S,IQR/1.34)n
?1/5,
(10.14)
which is a good starting point appropriate for a wide range of distributions
that are not necessarily normal, unimodal, or symmetric.

Probability Density Estimation 299
?1.0 ?0.5 0.0 0.5 1.0
ytisneD
0.1
8.0
6.0
4.0
2.0
0.0
gaussian
epanechnikov
rectangular
triangular
biweight
FIGURE 10.7: Kernel functions for density estimation.
The R reference manual [217] topic for bandwidth (?bw.nrd) refers to the
rule in (10.14) as Silverman’s “rule-of-thumb,” which is applied unless the
quartiles coincide. Various choices for bandwidth selection are illustrated in
Examples 10.7 and 10.8 below.
TABLE 10.2: Kernel Functions for Density Estimation
Kernel K(t) Support ?2 Efficiency
K
Gaussian ?1 exp(?1t2) R 1 1.0513
2? 2
Epanechnikov 3(1?t2) |t|<1 1/5 1
4
Rectangular 1 |t|<1 1/3 1.0758
2
Triangular 1?|t| |t|<1 1/6 1.0143
Biweight 15(1?t2)2 |t|<1 1/7 1.0061
16
Cosine ? cos?t R 1?8/?2 1.0005
4 2
Forequivalentkernelrescaling,thebandwidthh canberescaledbysetting
1
h ?
?K1h
.
2 1
?K2
Factors for equivalent smoothing are given by Scott [244, p. 142]. A kernel
can also be scaled to “canonical” form such that the bandwidth is equivalent
to the Gaussian kernel.
The density function in R computes kernel density estimates for seven
kernels. The smoothing parameter is bw (bandwidth), but the kernels are

300 Statistical Computing with R
scaled so that bw is the standard deviation of the kernel. The “canoni-
cal bandwidth” can be obtained using density with the option give.Rkern
= TRUE. Choices for the kernel are gaussian, epanechnikov, rectangular,
triangular, biweight, cosine, or optcosine. Run example(density) to
see several plots of the corresponding density estimates. The cosine kernel
giveninTable 10.2correspondstothe optcosinechoice. The bandwidthad-
justment for equivalent kernels in density is approximately 1, so the kernels
are approximately equivalent.
Example 10.7 (Kernel density estimate of Old Faithful waiting time)
In this example we look at the result obtained by the default arguments to
density. The defaultmethod applies the Gaussiankernel. For details onthe
default bandwidth selection see the help topics for bandwidthor bw.nrd0.
library(MASS)
waiting <- geyser$waiting
n <- length(waiting)
h1 <- 1.06 * sd(waiting) * n^(-1/5)
h2 <- .9 * min(c(IQR(waiting)/1.34, sd(waiting))) * n^(-1/5)
plot(density(waiting))
> print(density(waiting))
Call:
density.default(x = waiting)
Data: waiting (299 obs.); Bandwidth ’bw’ = 3.998
x y
Min. : 31.01 Min. :3.762e-06
1st Qu.: 53.25 1st Qu.:4.399e-04
Median : 75.50 Median :1.121e-02
Mean : 75.50 Mean :1.123e-02
3rd Qu.: 97.75 3rd Qu.:1.816e-02
Max. :119.99 Max. :3.342e-02
sdK <- density(kernel = "gaussian", give.Rkern = TRUE)
> print(c(sdK, sdK * sd(waiting)))
[1] 0.2820948 3.9183881
> print(c(sd(waiting), IQR(waiting)))
[1] 13.89032 24.00000
> print(c(h1, h2))
[1] 4.708515 3.997796
The defaultdensityestimate appliedtheGaussiankernelwiththebandwidth
h = 3.998 corresponding to equation (10.14). The default density plot with
bandwidth3.998isshowninFigure10.8. Otherchoicesofbandwidtharealso
shown for comparison. (cid:5)

Probability Density Estimation 301
40 60 80 100 120
030.0
020.0
010.0
000.0
N = 299 Bandwidth = 3.998
ytisneD
40 60 80 100
40.0
30.0
20.0
10.0
00.0
N = 299 Bandwidth = 2
ytisneD
40 60 80 100 120
030.0
020.0
010.0
000.0
N = 299 Bandwidth = 5
ytisneD
20 40 60 80 100 120
020.0
010.0
000.0
N = 299 Bandwidth = 7
ytisneD
FIGURE 10.8: Gaussian kernel density estimates of Old Faithful waiting
time in Example 10.7 using densitywith different bandwidths.
Example 10.8 (Kernel density estimate of precipitation data)
The datasetprecipinRisthe averageamountofprecipitationfor70United
States cities and Puerto Rico (see [217] for the source). We use the density
function to construct kernel density estimates using the default and other
choices for bandwidth.
n <- length(precip)
h1 <- 1.06 * sd(precip) * n^(-1/5)
h2 <- .9 * min(c(IQR(precip)/1.34, sd(precip))) * n^(-1/5)
h0 <- bw.nrd0(precip)
par(mfrow = c(2, 2))
plot(density(precip)) #default Gaussian (h0)
plot(density(precip, bw = h1)) #Gaussian, bandwidth h1
plot(density(precip, bw = h2)) #Gaussian, bandwidth h2
plot(density(precip, kernel = "cosine"))
par(mfrow = c(1,1))

| 302 |                             |     | Statistical |     | Computing | with                                 | R   |     |     |
| --- | --------------------------- | --- | ----------- | --- | --------- | ------------------------------------ | --- | --- | --- |
|     | density.default(x = precip) |     |             |     |           | density.default(x = precip, bw = h1) |     |     |     |
030.0
30.0
020.0
| ytisneD | 20.0 |     |     |     | ytisneD |     |     |     |     |
| ------- | ---- | --- | --- | --- | ------- | --- | --- | --- | --- |
010.0
10.0
|         | 00.0                                 |                            |     |     |                                              | 000.0 |                            |          |     |
| ------- | ------------------------------------ | -------------------------- | --- | --- | -------------------------------------------- | ----- | -------------------------- | -------- | --- |
|         | 0                                    | 20                         | 40  | 60  | 80                                           | 0     | 20                         | 40 60 80 |     |
|         |                                      | N = 70   Bandwidth = 3.848 |     |     |                                              |       | N = 70   Bandwidth = 6.212 |          |     |
|         | density.default(x = precip, bw = h2) |                            |     |     | density.default(x = precip, kernel = "cosine |       |                            |          |     |
|         | 30.0                                 |                            |     |     |                                              | 030.0 |                            |          |     |
|         | 20.0                                 |                            |     |     |                                              | 020.0 |                            |          |     |
| ytisneD |                                      |                            |     |     | ytisneD                                      |       |                            |          |     |
010.0
10.0
|            | 00.0  |                            |           |     |             | 000.0            |                            |                 |     |
| ---------- | ----- | -------------------------- | --------- | --- | ----------- | ---------------- | -------------------------- | --------------- | --- |
|            | 0     | 20                         | 40        | 60  | 80          | 0                | 20                         | 40 60 80        |     |
|            |       | N = 70   Bandwidth = 3.848 |           |     |             |                  | N = 70   Bandwidth = 3.848 |                 |     |
| FIGURE     | 10.9: | Kernel                     | density   |     | estimates   | of precipitation |                            | data in Example |     |
| 10.8 using |       | with                       | different |     | bandwidths. |                  |                            |                 |     |
density
| The three     | values    | for      | bandwidth   | computed  |           | are     |               |              |         |
| ------------- | --------- | -------- | ----------- | --------- | --------- | ------- | ------------- | ------------ | ------- |
| > print(c(h0, |           |          | h1, h2))    |           |           |         |               |              |         |
| [1]           | 3.847892  | 6.211802 |             | 3.847892  |           |         |               |              |         |
| and the       | plots are | shown    | in          | Figure    | 10.9. The | default | density       | plot applied | the     |
| Gaussian      | kernel    | with     | the         | bandwidth | h =       | 3.848   | corresponding | to equation  |         |
| (10.14)       | and the   | result   | of bw.nrd0. |           |           |         |               |              | (cid:5) |
fˆ(x)
| Example     | 10.9            | (Computing |      |             | for arbitraryx) |         |     |     |     |
| ----------- | --------------- | ---------- | ---- | ----------- | --------------- | ------- | --- | --- | --- |
| To estimate | the             | density    | for  | new points, | use             | approx. |     |     |     |
| d <-        | density(precip) |            |      |             |                 |         |     |     |     |
| xnew        | <-              | seq(0,     | 70,  | 10)         |                 |         |     |     |     |
| approx(d$x, |                 | d$y,       | xout | = xnew)     |                 |         |     |     |     |
| The code    | above           | produces   | the  | estimates:  |                 |         |     |     |     |

Probability Density Estimation 303
$x
[1] 0 10 20 30 40 50 60 70
$y
[1] 0.000952360 0.010971583 0.010036739
[4] 0.021100536 0.035776120 0.014421428
[7] 0.005478733 0.001172337
For certain applications it is helpful to create a function to return the esti-
mates, which can be accomplished easily with approxfun. Below fhat is a
function returned by approxfun.
> fhat <- approxfun(d$x, d$y)
> fhat(xnew)
[1] 0.000952360 0.010971583 0.010036739
[4] 0.021100536 0.035776120 0.014421428
[7] 0.005478733 0.001172337
(cid:5)
Boundary kernels
Neartheboundariesofthesupportsetofadensity,ordiscontinuitypoints,
kernel density estimates have larger errors. Kernel density estimates tend to
smooththeprobabilitymassoverthediscontinuitypointsorboundarypoints.
For example, see the kerneldensity estimates ofthe precipitationdata shown
in Figure 10.9. Note that the density estimates suggest that negative inches
of precipitation are possible.
Inthe next example, we illustrate the boundary problemwith anexponen-
tial density, and compare the kernel estimate with the true density.
Example 10.10 (Exponential density)
A Gaussian kernel density estimate of an Exponential(1) density is shown in
Figure 10.10. The true exponential density is shown with a dashed line.
x <- rexp(1000, 1)
plot(density(x), xlim = c(-1, 6), ylim = c(0, 1), main="")
abline(v = 0)
# add the true density to compare
y <- seq(.001, 6, .01)
lines(y, dexp(y, 1), lty = 2)
Notethatthe smoothnessofthe kernelestimatedoesnotfitthediscontinuity
of the density at x=0. (cid:5)

304 Statistical Computing with R
?1 0 1 2 3 4 5 6
8.0
4.0
0.0
N = 1000 Bandwidth = 0.1893
ytisneD
?1 0 1 2 3 4 5 6
8.0
4.0
0.0
Bandwidth = 0.18927
ytisneD
FIGURE 10.10: Gaussian kernel density estimate (solid line) of an expo-
nential density in Example 10.10, with true density (dashed line). In the
second plot, the reflection boundary technique is applied on the same data.
Scott [244] discusses boundary kernels, which are finite support kernels
that are applied to obtain the density estimate in the boundary region. A
simple fix is to use a reflection boundary technique if the discontinuity occurs
at the origin. First add the reflection of the entire sample; that is, append
?x
1
,...,?xn to the data. Then estimate a density g using the 2n points,
but use n to determine the smoothness parameter. Then fˆ(x)=2gˆ(x). This
method is applied below.
Example 10.11 (Reflection boundary technique)
The reflection boundary technique can be applied when the density has a
discontinuity at 0, such as in Example 10.10.
xx <- c(x, -x)
g <- density(xx, bw = bw.nrd0(x))
a <- seq(0, 6, .01)

Probability Density Estimation 305
ghat <- approx(g$x, g$y, xout = a)
fhat <- 2 * ghat$y # density estimate along a
bw <- paste("Bandwidth = ", round(g$bw, 5))
plot(a, fhat, type="l", xlim=c(-1, 6), ylim=c(0, 1),
main = "", xlab = bw, ylab = "Density")
abline(v = 0)
# add the true density to compare
y <- seq(.001, 6, .01)
lines(y, dexp(y, 1), lty = 2)
The plot of the density estimate with reflection boundary is shown in Figure
10.10. (cid:5)
See Scott [244] or Wand and Jones [289] for further discussion of methods
for kernel density estimation near boundaries.
10.3 Bivariate and Multivariate Density Estimation
In this section examples are presented that illustrate some of the basic
methods for bivariate and multivariate density estimation. Scott [244] is a
comprehensive reference on multivariate density estimation. Also see Silver-
man [252, Ch. 4].
10.3.1 Bivariate Frequency Polygon
To construct a bivariate density histogram (polygon), it is necessary to
definetwo-dimensionalbinsandcountthenumberofobservationsineachbin.
The bin2d function in the following example computes the two dimensional
frequency table.
Example 10.12 (Bivariate frequency table: bin2d)
The function bin2d bins a bivariate data matrix, based on the univariate
histogram hist in R. See the documentation for hist for an explanation of
how the breakpoints are determined.
The frequencies are computed by constructing a two dimensional contin-
gencytablewiththemarginalbreakpointsasthecutpoints. Thereturnvalue
of bin2disalistincludingthetableofbinfrequencies,vectorsofbreakpoints,
and vectors of midpoints.

306 Statistical Computing with R
bin2d <-
function(x, breaks1 = "Sturges", breaks2 = "Sturges"){
# Data matrix x is n by 2
# breaks1, breaks2: any valid breaks for hist function
# using same defaults as hist
histg1 <- hist(x[,1], breaks = breaks1, plot = FALSE)
histg2 <- hist(x[,2], breaks = breaks2, plot = FALSE)
brx <- histg1$breaks
bry <- histg2$breaks
# bin frequencies
freq <- table(cut(x[,1], brx), cut(x[,2], bry))
return(list(call = match.call(), freq = freq,
breaks1 = brx, breaks2 = bry,
mids1 = histg1$mids, mids2 = histg2$mids))
}
To show the details of the bin2dfunction, it is applied to bin the bivariate
sepal length and sepal width distribution of iris setosa data. Then in
Example10.13bin2disusedtobindataforconstructingabivariatefrequency
polygon.
> bin2d(iris[1:50,1:2])
$call bin2d(x = iris[1:50, 1:2])
$freq
(2,2.5] (2.5,3] (3,3.5] (3.5,4] (4,4.5]
(4.2,4.4] 0 3 1 0 0
(4.4,4.6] 1 0 3 1 0
(4.6,4.8] 0 2 5 0 0
(4.8,5] 0 2 8 2 0
(5,5.2] 0 0 6 4 1
(5.2,5.4] 0 0 2 4 0
(5.4,5.6] 0 0 1 0 1
(5.6,5.8] 0 0 0 2 1
$breaks1
[1] 4.2 4.4 4.6 4.8 5.0 5.2 5.4 5.6 5.8
$breaks2
[1] 2.0 2.5 3.0 3.5 4.0 4.5
$mids1
[1] 4.3 4.5 4.7 4.9 5.1 5.3 5.5 5.7
$mids2
[1] 2.25 2.75 3.25 3.75 4.25
(cid:5)

Probability Density Estimation 307
Example 10.13 (Bivariate density polygon)
Bivariatedata is displayedina 3Ddensity polygon,using the bin2dfunction
inExample10.12tocomputethebivariatefrequencytable. Afterbinningthe
bivariate data, the persp function plots the density polygon.
#generate standard bivariate normal random sample
n <- 2000; d <- 2
x <- matrix(rnorm(n*d), n, d)
# compute the frequency table and density estimates
b <- bin2d(x)
h1 <- diff(b$breaks1)
h2 <- diff(b$breaks2)
# matrix h contains the areas of the bins in b
h <- outer(h1, h2, "*")
Z <- b$freq / (n * h) # the density estimate
persp(x=b$mids1, y=b$mids2, z=Z, shade=TRUE,
xlab="X", ylab="Y", main="",
theta=45, phi=30, ltheta=60)
Theperspectiveplot,athreedimensionaldensitypolygon,isshowninFigure
10.11. Also see Figure 4.7 on page 109 for another view of bivariate normal
data, in a “flat” hexagonal histogram. (cid:5)
See the persp examples for more options, including color. Also see the
wireframe function in the lattice [239] package. Other functions that bin
bivariate data are e.g. bin2 (ash) [245] and hist2d (gplots) [290].
3D Histogram
A 3D histogram can be displayed by functions in the rgl [2] package, an
interactive 3D graphics package. To see a demo, type
library(rgl)
demo(hist3d)
After running the demo, the source code for two functions named hist3d
and binplot.3d that are used in the demo should have appeared in the
console window (scroll up to see it). To apply the rgl demo histogram to
this example, copy the two functions hist3d and binplot.3d into a source
file. These functions are in the file hist3d.r located in the demo directory of
library/rgl.

| 308 |     | Statistical |     | Computing | with | R   |     |     |
| --- | --- | ----------- | --- | --------- | ---- | --- | --- | --- |
library(rgl)
| #run    | demo(hist3d)          | or  |            |           |     |     |     |     |
| ------- | --------------------- | --- | ---------- | --------- | --- | --- | --- | --- |
| #source | binplot.3d            |     | and hist3d | functions |     |     |     |     |
| n       | <- 1000               |     |            |           |     |     |     |     |
| d       | <- 2                  |     |            |           |     |     |     |     |
| x       | <- matrix(rnorm(n*d), |     | n,         | d)        |     |     |     |     |
rgl.clear()
| hist3d(x[,1], |                          | x[,2]) |             |         |               |                |          |            |
| ------------- | ------------------------ | ------ | ----------- | ------- | ------------- | -------------- | -------- | ---------- |
| As Silverman  | [252,                    | p. 78] | points out, | there   | are serious   | presentational |          | dif-       |
| ficulties     | with a 3D histogram.     |        | The         | surface | and wireframe |                | plots of | bivariate  |
| densities     | are better, particularly |        | when        | they    | are generated | from           | a        | continuous |
density estimator.
| 10.3.2 | Bivariate       | ASH       |           |     |            |     |             |     |
| ------ | --------------- | --------- | --------- | --- | ---------- | --- | ----------- | --- |
| The    | average shifted | histogram | estimator |     | of density | can | be extended | to  |
{(x,y)},
| multivariate | density estimation. |     | Suppose |       | that bivariate | data        |     | have      |
| ------------ | ------------------- | --- | ------- | ----- | -------------- | ----------- | --- | --------- |
| been sorted  | into an nbin        | by  | nbin    | array | of bins with   | frequencies |     | ? = (?ij) |
1 2
| and bin | widths h = (h | ,h  | ) (see e.g. | the bin2d | function | in  | Example | 10.12). |
| ------- | ------------- | --- | ----------- | --------- | -------- | --- | ------- | ------- |
1 2
| The parameter | m =              | (m 1 ,m   | 2 ) is the     | number    | of shifted  | histograms   |             | on each |
| ------------- | ---------------- | --------- | -------------- | --------- | ----------- | ------------ | ----------- | ------- |
| axis used     | in the estimate. |           | The histograms |           | are shifted | in two       | directions, | so      |
| that there    | are m 1 m 2      | histogram | density        | estimates | to          | be averaged. |             |         |
Z
Y
X
| FIGURE       | 10.11: Density   |     | polygon        | of bivariate |          | normal    | data in | Example |
| ------------ | ---------------- | --- | -------------- | ------------ | -------- | --------- | ------- | ------- |
| 10.13, using | normal reference |     | rule (Sturges’ |              | Rule) to | determine | bin     | widths. |

Probability Density Estimation 309
The bivariate ASH estimate of the joint density f(x,y) is
1
(cid:5)m1 (cid:5)m2
fˆ ASH(x,y)= fˆ ij(x,y).
m m
1 2 i=1j=1
The bin weights are given by
(cid:7) (cid:8)(cid:7) (cid:8)
|i| |j|
wij = 1? 1? , i=1?m
1
,...,m
1
?1, j =1?m
2
,...,m
2
?1.
m m
1 2
(10.15)
One can apply a similar algorithm for computing the individual estimates
fˆ ij(x,y)asintheunivariateASH.SeeScott[244,Sec.5.2]forabivariateASH
algorithm. The ASH estimates can be generalized by replacing the weights
(1?|i|/m ) and (1?|j|/m ) in (10.15) with other kernels. The triangular
1 2
kernel is applied in (10.15). Also note that the bivariate ASH methods can
be generalized to dimension d?2.
Example 10.14 (Bivariate ASH density estimate)
ThisexamplecomputesabivariateASHestimateofabivariatenormalsample,
using Scott’s routines in the ash package [245]. The function ash2 returns a
list containing (among other things) the coordinates of the bin centers and
the density estimates, labeled x, y, z. The generator rmvn.eigen is given in
Example 3.16 on page 71. Alternately, samples can be generated using e.g.
mvrnorm (MASS).
library(ash) # for bivariate ASH density est.
# generate N_2(0,Sigma) data
n <- 2000
d <- 2
nbin <- c(30, 30) # number of bins
m <- c(5, 5) # smoothing parameters
# First example with positive correlation
Sigma <- matrix(c(1, .9, .9, 1), 2, 2)
set.seed(345)
x <- rmvn.eigen(n, c(0, 0), Sigma=Sigma)
b <- bin2(x, nbin = nbin)
# kopt is the kernel type, here triangular
est <- ash2(b, m = m, kopt = c(1,0))
persp(x = est$x, y = est$y, z = est$z, shade=TRUE,
xlab = "X", ylab = "Y", zlab = "", main="",
theta = 30, phi = 75, ltheta = 30, box = FALSE)
contour(x = est$x, y = est$y, z = est$z, main="")

310 Statistical Computing with R
The perspective and contour plots from the ASH estimates are shownin Fig-
ures 10.12(a) and 10.12(c). The variables in the first example have positive
correlation ? = 0.9. In the second example, the variables have negative cor-
relation ?=?0.9.
# Second example with negative correlation
Sigma <- matrix(c(1, -.9, -.9, 1), 2, 2)
set.seed(345)
x <- rmvn.eigen(n, c(0, 0), Sigma=Sigma)
b <- bin2(x, nbin = nbin)
est <- ash2(b, m = m, kopt = c(1,0))
persp(x = est$x, y = est$y, z = est$z, shade=TRUE,
xlab = "X", ylab = "Y", zlab = "", main="",
theta = 30, phi = 75, ltheta = 30, box = FALSE)
contour(x = est$x, y = est$y, z = est$z, main="")
par(ask = FALSE)
The perspective plots and contour plots from the ASH estimates of the den-
sities in the second case are shown in Figures 10.12(b) and 10.12(d). (cid:5)
10.3.3 Multidimensional kernel methods
Suppose X = (X
1
,...,Xd) is a random vector in Rd, and K(X) : Rd ?
R is a kernel function, such that K(X) is a density function on Rd. Let
the n×d matrix (xij) be an observed sample from the distribution of X.
The smoothing parameter is a d-dimensional vector h. If the bandwidth is
equalinalldimensions,themultivariatekerneldensityestimatoroff(X)with
smoothing parameter h is
1
(cid:7) (cid:8)
fˆ K(X)=
n
1
hd
(cid:5)n
K
X ?
h
xi·
, (10.16)
1 i=1 1
where xi· is the ith row of (xij). Usually K(X) will be a symmetric and uni-
modal density on Rd, such as a standard multivariate normal density. The
Gaussian kernels have unbounded support. An example of a kernel with
bounded support is the multivariate version of the Epanechnikov kernel, de-
fined
1
K(X)= (d+2)(1?X T X)I(X T X <1),
2cd
where cd = 2?d/2/(d?(d/2)) is the volume of the d-dimensional unit sphere.
Whend=1theconstantisc =2andK(x)=(3/4)(1?x2)I(|x|<1),which
1
is the univariate Epanechnikov kernel given in Table 10.2.
In the bivariate case, choosing equal bandwidths h = h and the stan-
1 2
dard Gaussian kernel corresponds to centering identical weight functions like

Probability Density Estimation 311
(a) (b)
?2 0 2 4
3
2
1
0
1?
2?
3?
?3 ?2 ?1 0 1 2 3
(c)
3
2
1
0
1?
2?
3?
(d)
FIGURE 10.12: BivariateASHdensityestimatesofbivariatenormaldata
in Example 10.14.
smoothbumpsateachsamplepointandsummingtheheightsofthesesurfaces
to obtain the density estimate at a given point. For the bivariate Gaussian
kernel, in a graphical representation corresponding to Figure 10.6 the small
bumps will be surfaces (bivariate normal densities) rather than curves.
The product kernel density estimate of f(X) with smoothing parameter
h=(h
1
,...,hd) is
(cid:7) (cid:8)
fˆ(X)=
1 (cid:5)n (cid:9)d
K
Xi ?xij
. (10.17)
nh
1
···hd
i=1j=1
hj
Forthisestimatorandthemultivariatefrequencypolygon,theoptimalsmooth-
ing parameter has
h
?
=O(n
?1/(4+d)),
AMISE
?
=O(n
?4/(4+d)),
j

312 Statistical Computing with R
and for uncorrelated multivariate normal data the optimal bandwidths are
(cid:7) (cid:8)
4
1/(d+4)
h ?
j
= ×?in ?1/(d+4).
d+2
The constant (4/(d+2))1/(d+4) is close to 1 and converges to 1 as d ? ?,
thus Scott’s multivariate normalreferencerule[244]ford-dimensionaldatais
hˆ i =?ˆin ?1/(d+4).
Example 10.15 (Product kernel estimate of a bivariate normal mixture)
This example plots the density estimate for a bivariate normal location mix-
ture using kde2d (MASS). The mixture has three components with different
mean vectors and identical variance ?=I . The mean vectors are
2
(cid:3) (cid:4) (cid:3) (cid:4) (cid:3) (cid:4)
0 4 3
µ = , µ = , µ = ,
1 1 2 0 3 ?1
and the mixing probabilities are p= (0.2,0.3,0.5). The code to generate the
mixture data and plots in Figure 10.13 follows.
library(MASS) #for mvrnorm and kde2d
#generate the normal mixture data
n <- 2000
p <- c(.2, .3, .5)
mu <- matrix(c(0, 1, 4, 0, 3, -1), 3, 2)
Sigma <- diag(2)
i <- sample(1:3, replace = TRUE, prob = p, size = n)
k <- table(i)
x1 <- mvrnorm(k[1], mu = mu[1,], Sigma)
x2 <- mvrnorm(k[2], mu = mu[2,], Sigma)
x3 <- mvrnorm(k[3], mu = mu[3,], Sigma)
X <- rbind(x1, x2, x3) #the mixture data
x <- X[,1]
y <- X[,2]
> print(c(bandwidth.nrd(x), bandwidth.nrd(y)))
[1] 1.876510 1.840368
# accepting the default normal reference bandwidth
fhat <- kde2d(x, y)
contour(fhat)
persp(fhat, phi = 30, theta = 20, d = 5, xlab = "x")

Probability Density Estimation 313
# select bandwidth by unbiased cross-validation
h = c(ucv(x), ucv(y))
fhat <- kde2d(x, y, h = h)
contour(fhat)
persp(fhat, phi = 30, theta = 20, d = 5, xlab = "x")
.
The bandwidth by normal reference is h = (1.877,1.840), and by cross-
.
validation h=(0.556,1.132). The first choice results in a smoother estimate.
Although in Figure 10.13 three modes are evident for both estimates, it ap-
pears that the density estimate corresponding to unbiased cross-validation
may be too rough in this example. (cid:5)
?2 0 2 4 6
6
4
2
0
2?
4?
?2 0 2 4 6
Z
Y
x
6
4
2
0
2?
4?
Z
Y
x
FIGURE10.13: Productkernelestimatesofbivariatenormalmixturedata
in Example 10.15 (normal reference rule at left.)

314 Statistical Computing with R
Forkerneldensityestimatesformultivariatedataalsoseekde (ks)[76]and
KernSnooth[286]. Readersarereferredto the examples of kde2d (MASS)for
a Gaussiankerneldensity estimate ofthe bivariategeyser (MASS)datawith
default normal reference bandwidth (also see [278, 5.6]).
10.4 Other Methods of Density Estimation
Orthogonal systems provide an alternate approach to density estimation
[244, 252, 285]. Suppose that the random variable X is supported on the
interval [0,1]. Then one approach to estimation of the density f of X is to
representf byitsFourierexpansionandestimatetheFouriercoefficientsfrom
the observedrandomsampleX
1
,...,Xn. Althoughintuitively appealing,the
resultingestimatorisnotusefulbecauseitwilltendtoasumofdeltafunctions
thatplaceprobabilitymassatthe individualobservations. See[244],[252],or
[285]foranexplanationofhowthisproblemisresolvedbysmoothingtoobtain
a more useful density estimator, and how it is generalized to densities with
unbounded support. Scott [244, p. 129] shows that the resulting estimator is
intheformofafixedkernelestimator. WalterandShen[285,Sec. 13.3]show
that an estimator based on the Haar wavelets is the traditional histogram
estimator of a density.
Scott [244] and Silverman [252] discuss several other approaches to den-
sity estimation including adaptive kernel methods and cross-validation, near
neighbor estimates, and penalized likelihood methods. An L approach to
1
densityestimationiscoveredbyDevroyeandGyo¨rfi[71]. Manyothercriteria
have been applied, such as the Kullback-Liebler distance, Hellinger distance,
AIC, etc. Other approaches focus on regression and smoothing [79, 128, 129,
130, 203], splines [86, 284], or generalized additive models [135, 137]. Some
related R packages are ash [245], gam [134], gss [123], KernSmooth [286], ks
[76], locfit [180], MASS [278], sm [29], and splines.
Exercises
10.1 Construct a histogram estimate of density for a random sample of standard
lognormal data using Sturges’ Rule, for sample size n = 100. Repeat the
estimate for the same sample using the correction for skewness proposed by
Doane [73] in equation (10.2). Compare the number of bins and break points
using both methods. Compare the density estimates at the deciles of the
lognormal distribution with the lognormal density at the same points. Does

Probability Density Estimation 315
the suggested correction give better density estimates in this example?
10.2 Estimate the IMSE for three histogramdensity estimates of standardnormal
data,fromasamplesizen=500. UseSturges’Rule,Scott’sNormalReference
Rule, and the FD Rule.
10.3 Construct a frequency polygonde(cid:22)nsity estimate for the precipdataset in R.
Verify that the estimate satisfies ? fˆ(x)dx= . 1 by numerical integrationof
??
the density estimate.
10.4 Constructafrequencypolygondensityestimatefortheprecipdataset,using
a bin width determined by substituting
?ˆ =IQR/1.348
for standard deviation in the usual Normal Reference Rule for a frequency
polygon.
10.5 Constructafrequencypolygondensityestimatefortheprecipdataset,using
abinwidthdeterminedbytheNormalReferenceRuleforafrequencypolygon
adjusted for skewness. The skewness adjustment factor is given in 10.8.
10.6 Construct an ASH density estimate for the faithful$eruptions dataset in
R, using width h determined by the normal reference rule. Use a weight
function corresponding to the biweight kernel,
15
K(t)= (1?t2)2 if |t|<1, K(t)=0 otherwise.
16
10.7 Construct an ASH density estimate for the precip dataset in R. Choose the
best value for width h? empirically by computing the estimates over a range
of possible values of h and comparing the plots of the densities. Does the
optimalvaluehfp correspondtotheoptimalvalueh? suggestedbycomparing
n
the density plots?
10.8 The buffalo dataset in the gss [123] package contains annual snowfall ac-
cumulations in Buffalo, New York from 1910 to 1973. The 64 observations
are
126.4 82.4 78.1 51.1 90.9 76.2 104.5 87.4 110.5 25.0 69.3 53.5 39.8
63.6 46.7 72.9 79.6 83.6 80.7 60.3 79.0 74.4 49.6 54.7 71.8 49.1
103.9 51.6 82.4 83.6 77.8 79.3 89.6 85.5 58.0 120.7 110.5 65.4 39.9
40.1 88.7 71.4 83.0 55.9 89.9 84.8 105.2 113.7 124.7 114.5 115.6 102.4
101.4 89.8 71.5 70.9 98.3 55.5 66.1 78.4 120.5 97.0 110.0
This data was analyzed by Scott [242]. Construct kernel density estimates
of the data using Gaussian and biweight kernels. Compare the estimates for
different choices of bandwidth. Is the estimate more influenced by the type
of kernel or the bandwidth?
10.9 Construct a kernel density estimate for simulated data from the normal lo-
cation mixture 1N(0,1)+ 1N(3,1). Compare several choices of bandwidth,
2 2
including (10.13) and (10.14). Plot the true density of the mixture over the

|     | 316      |           |     | Statistical |     | Computing    | with | R         |           |     |
| --- | -------- | --------- | --- | ----------- | --- | ------------ | ---- | --------- | --------- | --- |
|     | density  | estimate, | for | comparison. |     | Which choice | of   | smoothing | parameter | ap- |
|     | pears to | be best?  |     |             |     |              |      |           |           |     |
10.10 Apply the reflection boundary technique to obtain a better kernel density
|     | estimate                                            | for the  | precipitation |        | data    | in Example | 10.8. | Compare | the            | estimates |
| --- | --------------------------------------------------- | -------- | ------------- | ------ | ------- | ---------- | ----- | ------- | -------------- | --------- |
|     | inExample10.8andtheimprovedestimatesinasinglegraph. |          |               |        |         |            |       |         | Alsotrysetting |           |
|     | from =                                              | 0 or cut | = 0           | in the | density | function.  |       |         |                |           |
10.11 Write a bivariate density polygon plotting function based on Examples 10.12
|       | and 10.13.       | Use        | Example | 10.13     | to           | check the | results,          | and      | then apply | your |
| ----- | ---------------- | ---------- | ------- | --------- | ------------ | --------- | ----------------- | -------- | ---------- | ---- |
|       | function         | to display | the     | bivariate | faithfuldata |           | (Old              | Faithful | geyser).   |      |
| 10.12 | Plot a bivariate |            | ASH     | density   | estimate     | of the    | geyser(MASS)data. |          |            |      |
10.13 Generalize the bivariate ASH algorithmto compute anASH density estimate
d?2.
|     | for a d-dimensional |     | multivariate |     | density, |     |     |     |     |     |
| --- | ------------------- | --- | ------------ | --- | -------- | --- | --- | --- | --- | --- |
10.14 Write a function to bin three-dimensional data into a three-way contingency
|     | table, following |     | the method |     | in the | function |     | of Example | 10.12. | Check |
| --- | ---------------- | --- | ---------- | --- | ------ | -------- | --- | ---------- | ------ | ----- |
bin2d
|     | the result | on  | simulated | N (0,I) | data. | Compare | the | marginal | frequencies | re- |
| --- | ---------- | --- | --------- | ------- | ----- | ------- | --- | -------- | ----------- | --- |
3
turnedbyyourfunctiontotheexpectedfrequenciesfromastandardunivariate
|     | normal | distribution. |     |     |     |     |     |     |     |     |
| --- | ------ | ------------- | --- | --- | --- | --- | --- | --- | --- | --- |

|     |     |     | Probability | Density |     | Estimation |     |     | 317 |
| --- | --- | --- | ----------- | ------- | --- | ---------- | --- | --- | --- |
R Code
| Code | to generate  |           | data | as shown | in      | Table | 10.1  | on page 289. |     |
| ---- | ------------ | --------- | ---- | -------- | ------- | ----- | ----- | ------------ | --- |
| N    | <- c(10,     | 20,       | 30,  | 50, 100, | 200,    | 500,  | 1000, | 5000, 10000) |     |
| m    | <- length(N) |           |      |          |         |       |       |              |     |
| out  | <-           | matrix(0, | nrow | =        | m, ncol | = 8)  |       |              |     |
| out[ | ,1]          | <- N      |      |          |         |       |       |              |     |
| out[ | ,5]          | <- N      |      |          |         |       |       |              |     |
| for  | (i           | in 1:m)   | {    |          |         |       |       |              |     |
x <- rnorm(N[i])
|     | out[i, | 2:4]             | <-  | c(nclass.Sturges(x), |               |     |     |     |     |
| --- | ------ | ---------------- | --- | -------------------- | ------------- | --- | --- | --- | --- |
|     |        | nclass.scott(x), |     |                      | nclass.FD(x)) |     |     |     |     |
x <- rexp(N[i])
|     | out[i, | 6:8]             | <-  | c(nclass.Sturges(x), |               |     |     |     |     |
| --- | ------ | ---------------- | --- | -------------------- | ------------- | --- | --- | --- | --- |
|     |        | nclass.scott(x), |     |                      | nclass.FD(x)) |     |     |     |     |
}
print(out)
| Code          | to plot              | the     | histograms   |          | in Figure | 10.4     | on   | page 294. |     |
| ------------- | -------------------- | ------- | ------------ | -------- | --------- | -------- | ---- | --------- | --- |
| library(MASS) |                      |         | #for         | truehist |           |          |      |           |     |
| par(mfrow     |                      | = c(2,  | 2))          |          |           |          |      |           |     |
| x             | <- sort(rnorm(1000)) |         |              |          |           |          |      |           |     |
| y             | <- dnorm(x)          |         |              |          |           |          |      |           |     |
| o             | <- (1:4)             | /       | 4            |          |           |          |      |           |     |
| h             | <- .35               |         |              |          |           |          |      |           |     |
| for           | (i                   | in 1:4) | {            |          |           |          |      |           |     |
|               | truehist(x,          |         | prob         | = TRUE,  |           | h = .35, | x0   | = o[i],   |     |
|               |                      | xlim    | = c(-3.5,    | 3.5),    |           | ylim =   | c(0, | 0.45),    |     |
|               |                      | ylab    | = "Density", |          | main      | = "")    |      |           |     |
|               | lines(x,             |         | y)           |          |           |          |      |           |     |
}
| par(mfrow                              |          | = c(1,   | 1))     |          |                                     |       |                          |                |           |
| -------------------------------------- | -------- | -------- | ------- | -------- | ----------------------------------- | ----- | ------------------------ | -------------- | --------- |
| Code                                   | to plot  | Figure   | 10.6    | on       | page                                | 298.  |                          |                |           |
| To                                     | display  | the type | of plot | in       | Figure                              | 10.6, | first open               | a new plot     | to set up |
| the plottingwindow,butusetype="n"inthe |          |          |         |          |                                     |       | plotcommandsothatnothing |                |           |
| isdrawninthegraphwindowyet.            |          |          |         |          | Thenaddthedensitycurvesforeachpoint |       |                          |                |           |
| inside                                 | the loop | using    | lines.  | Finally, | add                                 | the   | density                  | estimate using | lines     |
again.

318 Statistical Computing with R
for (h in c(.25, .4, .6, 1)) {
x <- seq(-4, 4, .01)
fhat <- rep(0, length(x))
# set up the plot window first
plot(x, fhat, type="n", xlab="", ylab="",
main=paste("h=",h), xlim=c(-4,4), ylim=c(0, .5))
for (i in 1:n) {
# plot a normal density at each sample pt
z <- (x - y[i]) / h
f <- dnorm(z)
lines(x, f / (n * h))
# sum the densities to get the estimates
fhat <- fhat + f / (n * h)
}
lines(x, fhat, lwd=2) # add density estimate to plot
}
Use par(mfrow = c(2, 2)) to display four plots in one screen.
Code to plot kernels in Figure 10.7 on page 299.
#see examples for density, kernels in S parametrization
(kernels <- eval(formals(density.default)$kernel))
plot(density(0, from=-1.2, to=1.2, width=2,
kern="gaussian"), type="l", ylim=c(0, 1),
xlab="", main="")
for(i in 2:5)
lines(density(0, width=2, kern=kernels[i]), lty=i)
legend("topright", legend=kernels[1:5],
lty=1:5, inset=.02)

Chapter 11
Numerical Methods in R
11.1 Introduction
This chapter begins with a review of some concepts that should be un-
derstood by any statistician who will apply numerical methods that are im-
plemented in statistical packages such as R. Following this introduction, a
selection of examples are presented that illustrate the application of numer-
ical methods using functions provided in R. Readers should refer to one or
more of the relevant references for a thorough and rigorous presentation of
the underlying principles.
Many excellent references are available on numerical methods. Two recent
textswrittentoaddresstheproblemsofstatisticalcomputinginparticularare
Monahan [202] and Lange [168]. The Monahan text is an excellent resource
for statisticians with a limited background in numerical analysis. Nocedal
and Wright [206] is a graduate level text on optimization. Lange [169] is
anothergraduateleveloptimizationtextthatfeaturesstatisticalapplications.
Thisted[269]coversnumericalcomputationforstatistics,includingnumerical
analysis, numerical integration, and smoothing.
Computer representation of real numbers
Apositivedecimalnumberxis representedbythe orderedcoefficients{dj }
in the series
dn10 n +dn?1 10 n?1+···+d
1
101+d
0
+d?1 10 ?1+d?2 10 ?2+...
anddecimalpointseparatingd
0
andd?1 ,wheredj areintegersin{0,1,...,9}.
The same number can be represented in base 2 using the binary digits {0,1}
by akak?1 ...a
1
a
0
.a?1 a?2 ..., where
x=ak2
k
+ak?1 2
k?1+···+a
1
2+a
0
+a?1 2
?1+a?2
2
?2+...,
aj ?{0,1}. The point separating a
0
and a?1 is called the radix point. Simi-
larly, x can be represented in any integer base b>1 by expanding in powers
of b.
R note 11.1 Thefunction digitsBasein thepackage sfsmisc[183]returns
the vector of digits that represent a given integer in another base.
319

320 Statistical Computing with R
Whenever a computer is involved in mathematical calculations, it is very
likely to involve the conversions “from” and “to” decimal, because machines
and humans represent numbers in different bases. Both types of conversions
introduce errors that could be significant in certain cases.
Atthelowestlevel,thecomputerrecognizesexactlytwostates,likeaswitch
that is on or off, or a circuit that is open or closed. Therefore, at some level,
the base 2 representation is used in computer arithmetic. Other powers of
2 such as 8 (octal) or 16 (hexadecimal) are also more natural for low level
routines than base 10.
Positive integers can always be represented by a finite sequence of digits,
ending with an implicit radix point. For this reason, integers are called fixed
point numbers. Numbers that require an explicit radix point in the sequence
of digits may be fixed point or floating point (generally treated as floating
point in calculations). Floating point numbers are represented by a sign, a
finite sequence of digits, and an exponent, similar to the representation of
real numbers in scientific notation. In general, this representation of a real
number is approximate, not exact.
Even though the internal representation of numbers is usually transpar-
ent to the user, who conveniently interacts with the software in the decimal
system, it is important in statistical computing to understand that there are
fundamentaldifferencesbetweenmathematicalcalculationsandcomputercal-
culations. Mathematicalideassuchaslimit, supremum,infimum,etc. cannot
be exactly reproduced in the computer. No computer has infinite storage
capacity, so only finitely many numbers can be represented in the computer;
there is a smallest and a largest positive number. See Monahan [202, Ch. 2]
for a discussion of fixed point and floating point arithmetic, and inaccuracies
that can occur in algorithms as simple as calculation of sample variance.
R note 11.2 The R variable .Machineholds machine specific constants with
information on the largest integer, smallest number, etc. For example, in
R-2.5.0 for Windows, the largest integer (.Machine$integer.max) is 231 ?
1 = 2147483647. Type .Machine at the command prompt for the complete
list. For portability and reusability of code, tolerances or convergence criteria
should be given in terms of machine constants. For example, the uniroot
function, which seeks a root of a univariate function, has a default tolerance
of .Machine$double.eps^0.25.
Occasionally users are surprised to find that some mathematical identities
appear to be contradicted by the software. A typical example is
> (.3 - .1)
[1] 0.2
> (.3 - .1) == .2
[1] FALSE
> .2 - (.3 - .1)
[1] 2.775558e-17

Numerical Methods in R 321
Thebase2representationof0.2isaninfiniteseriesofdigits0.00110011...,
which cannot be represented exactly in the computer. Notice that although
the resultabove is not exactly equalto 0.2, the erroris negligible. Good pro-
gramming practice avoids testing the equality of two floating point numbers.
Example 11.1 (Identical and nearly equal)
Rprovidesthefunctionall.equaltocheckfornearequalityoftwoRobjects.
In a logical expression, use isTRUE to obtain a logical value.
> isTRUE(all.equal(.2, .3 - .1))
[1] TRUE
> all.equal(.2, .3) #not a logical value
[1] "Mean relative difference: 0.5"
> isTRUE(all.equal(.2, .3)) #always a logical value
[1] FALSE
The isTRUE function is applied in Example 11.9. The identical function
is available for testing whether two objects are identical. The help topic for
identical gives very clear and explicit advice to programmers: “A call to
identical is the way to test exact equality in if and while statements, as
well as in logical expressions that use && or ||. In all these applications you
need to be assured of getting a single logical value.” Also see the examples
below.
> x <- 1:4
> y <- 2
> y == 2
[1] TRUE
> x == y #not necessarily a single logical value
[1] FALSE TRUE FALSE FALSE
> identical(x, y) #always a single logical value
[1] FALSE
> identical(y, 2)
[1] TRUE
(cid:5)
Overflow occurs when the result of an arithmetic operation exceeds the
maximum floating point number that can be represented. Underflow occurs
when the result is smaller than the minimum floating point number. In the
case of underflow, the result might unexpectedly be returned as zero. This
could lead to division by zero or other problems that produce unexpected
and possibly inaccurate results – without warning. Overflow is usually more
obvious, but should be avoided. Good algorithms should set underflows to
zeroandgiveawarningifthismayproduceunexpectedresults. Programmers

322 Statistical Computing with R
can avoid many of these problems, however, by carefully coding arithmetic
expressions with the limitations of the machine in mind.
Oftenthe expressionto be evaluatedis notimpossible to compute, butone
needs to be careful about the order of operations. One of the most common,
and easily avoided problems occurs when we need to compute a ratio of two
very large or very small numbers. For example, n!/(n?2)! = n(n?1), but
we could easily have trouble computing the numerator or denominator if n
is large. A good approach for this type of problem is to take the logarithm
of the quotient and exponentiate the result. A typical example that arises in
statistical applications is the following.
Example 11.2 (Ratio of two large numbers)
Evaluate
?((n?1)/2)
.
?(1/2)?((n?2)/2)
This could be coded using the gamma function in R, but ?(n) = (n?1)!, so
when n is large, gamma may return Inf and the arithmetic operations could
returnNaN.Ontheotherhand,althoughnumeratoranddenominatorareboth
large,theratioismuchsmaller. Computethe ratio?((n?1)/2)/?((n?2)/2)
using the logarithm of the gamma function lgamma. That?is, ?(n)/?(m) =
exp(lgamma(n) - lgamma(m)). Also, recall that ?(1/2)= ?.
> n <- 400
> (gamma((n-1)/2) / (sqrt(pi) * gamma((n-2)/2)))
[1] NaN
> exp(lgamma((n-1)/2) - lgamma((n-2)/2)) / sqrt(pi)
[1] 7.953876
(cid:5)
A thorough discussion of computer arithmetic is beyond the scope of this
text. Amongthereferences,Monahan[202]orThisted[269]aregoodstarting
points on this topic for statistical computing; on computer arithmetic and
algorithms see e.g. Higham [142] or Knuth [164].
Evaluating Functions
The power series expansion of a function is commonly applied. If f(x) is
analytic, then f(x) can be evaluated in a neighborhood of the point x by a
0
power series
(cid:5)?
f(x)= ak(x?x
0
) k .
k=0

Numerical Methods in R 323
The Taylor series representation of f(x) in a neighborhood of x is
0
(cid:5)? f(k)(x )
f(x)= 0 (x?x ) k ,
0
k!
k=0
also called a Maclaurin series when x = 0. The infinite series must be
0
truncated in order to obtain a numerical approximation. The power series
approximation is thus a (high degree) polynomial approximation. If f has
continuous derivatives up to order (n+1) in a neighborhood of 0, then the
finite Taylor expansion of f(x) at x =0 is
0
(cid:5)n f(k)(0)
k
limf(x)= x +Rn(x),
x?0 k!
k=0
where Rn(x)=O(xn+1).
Recallthat“O”(bigoh)and“o”(littleoh)describetheorderofconvergence
of functions. Let f and g be defined on a common interval (a,b) and let
a ? x ? b. Suppose that g(x) (cid:13)= 0 for all x (cid:13)= x in a neighborhood of x .
0 0 0
Thenf(x)=O(g(x)) if there existsa constantM suchthat|f(x)|?M|g(x)|
as x?x
0
. If limx?x0 f(x)/g(x)=0 then f(x)=o(g(x)).
IfthefiniteTaylorexpansioniscomputedinalanguagesuchasCorfortran,
a method is used that avoids repeated multiplications. That is, if yk =xk/k!
then
1
f(k)(0)x k =ykf(k)(0)=yk?1 (x/k)f(k)(0),
k!
saving many multiplications. Computing in R, however, it will usually be
faster to take advantage of the vectorized operations, provided it is known
how many terms are required.
Example 11.3 (Taylor expansion)
Consider the finite Taylor expansion for the sine function,
(cid:5)n (?1)k
sinx=
x2k+1.
(2k+1)!
k=0
For example, evaluate sin(?/6) from the Taylor polynomial.
The remainder term Rn(x) = O(xn+1) can be used to determine the ap-
proximate number of terms required in the finite expansion. Suppose that a
24th degree polynomial is sufficiently accurate at x = ?/6. Two methods of
computing the Taylor polynomial are compared below.
The following method of calculation is efficient in C or fortran code, but
not in R. The timer measures 1000 calculations of the Taylor polynomial.

324 Statistical Computing with R
system.time({
for (i in 1:1000) {
a <- rep(0, 24)
a0 <- pi / 6
a2 <- a0 * a0
a[1] <- -a0^3 / 6
for (i in 2:24)
a[i] <- - a2 * a[i-1] / ((2*i+1)*(2*i))
a0 + sum(a)}
})
[1] 0.36 0.01 0.49 NA NA
Comparetheversionabovetothe vectorizedversionbelow. Thevectorized
versionappearstobeabout5timesfasterthanthemethodabove. InRcode,
vectorizedoperationslikethecodebelowareusuallymoreefficientthanloops.
system.time({
for (i in 1:1000) {
K <- 2 * (0:24) + 1
i <- rep(c(1, -1), length=25)
sum(i * (pi/6)^K / factorial(K))}
})
[1] 0.07 0.01 0.08 NA NA
(cid:5)
Power series expansions are also useful for numerical evaluation of deriva-
tives. Within the common region of the radius of convergence of the power
series and its derivative, one can differentiate the finite expansion term by
term. The nextexampleillustratesthis methodwithausefulfunctionforthe
derivative of the zeta function.
Example 11.4 (Derivative of zeta function)
The Riemann zeta function is defined by
(cid:5)?
1
?(a)= ,
ia
i=1
whichconvergesforalla>1. Writeafunctiontoevaluatethe firstderivative
of the zeta function.
It can be shown that
1 (cid:5)? (?1)n
?(a)=
z?1
+
n!
?n(z?1) n ,
n=0

Numerical Methods in R 325
where
(cid:29) (cid:3) (cid:4)
?n =?(n)(z)?
(z
(?
?
1
1
)n
)n
n
+
!
1
(cid:29) (cid:29) (cid:29) =
m
l
?
im
?
(cid:5)m (log
k
k)n ? (log
n
m
+
)
1
n+1
z=1 k=1
are the Stieltjes constants. Differentiating ?(a) gives
1 1
? (cid:5) (a)=? ?? +? (z?1)? ? (z?1)2+..., a>1.
(z?1)2 1 2 2 3
TheStieltjesconstantscanbeevaluatednumerically,andtablesoftheStielt-
jes constants are available [1]. More terms can be added if greater accuracy
is needed, but to conserve space, only five of the constants are used in the
version below. This “light” version of the zeta derivative gives remarkably
good results over the interval (1,2) (see the next example).
zeta.deriv <- function(a) {
z <- a - 1
# Stieltjes constants gamma_k for k=1:5
g <- c(
-.7281584548367672e-1,
-.9690363192872318e-2,
.2053834420303346e-2,
.2325370065467300e-2,
.7933238173010627e-3)
i <- c(-1, 1, -1, 1, -1)
n <- 0:4
-1/z^2 + sum(i * g * z^n / factorial(n))
}
(cid:5)
Another approach to numerical evaluation of the derivative of a function
applies the following central difference formula
f(x+h)?f(x?h)
f (cid:5) (x)(cid:2) ,
2h
for a small value of h. According to [213], h should be chosen so that x and
x+h differ by an exactly representable number.
Example 11.5 (Derivative of zeta function, cont.)
Comparethe finite seriesapproximationofthe numericalderivativeinExam-
ple 11.4 with the central difference formula. That is, for small h, compare
?(a+h)??(a?h)
2h

326 Statistical Computing with R
withthevaluereturnedbyzeta.deriv(a)inExample11.4. The?(·)function
is implemented in the GNU scientific library, available in the gsl package
[127].
library(gsl) #for zeta function
z <- c(1.001, 1.01, 1.5, 2, 3, 5)
h <- .Machine$double.eps^0.5
dz <- dq <- rep(0, length(z))
for (i in 1:length(z)) {
v <- z[i] + h
h <- v - z[i]
a0 <- z[i] - h
if (a0 < 1) a0 <- (1 + z[i])/2
a1 <- z[i] + h
dq[i] <- (zeta(a1) - zeta(a0)) / (a1 - a0)
dz[i] <- zeta.deriv(z[i])
}
h
[1] 1.490116e-08
cbind(z, dz, dq)
z dz dq
[1,] 1.001 -9.999999e+05 -9.999999e+05
[2,] 1.010 -9.999927e+03 -9.999927e+03
[3,] 1.500 -3.932240e+00 -3.932240e+00
[4,] 2.000 -9.375469e-01 -9.375482e-01
[5,] 3.000 -1.981009e-01 -1.981262e-01
[6,] 5.000 -2.853446e-02 -2.857378e-02
Values of z are given in the first column, values of ?(cid:5)(z) computed by the
finite series approximation are given in column dz, and values of ?(cid:5)(z) com-
puted by the centraldifference formulaare givenin columndq. Althoughthe
two estimates are quite close, it appears that the difference in the two esti-
mates is increasing with z. The finite series approximation can be improved
by adding more terms. (cid:5)
11.2 Root-finding in One Dimension
This section will briefly summarize the main ideas behind the Brent min-
imization algorithm [32], on which the R root-finding function uniroot is
based,andillustrateitsapplicationwithexamples. Referto[32,169,213,206]

Numerical Methods in R 327
for more details. The source code of the fortran implementation “zeroin.f”
in the GNU Scientific Library (GSL) can be found at the web site http:
//www.gnu.org/software/gsl/.
Let f(x) be a continuous function f : R1 ? R1. A root (or zero) of the
equationf(x)=c isa numberx suchthatg(x)=f(x)?c=0. Thus,wecan
restrict attention to solving f(x)=0.
Onecanchoosefromnumericalmethods thatrequireevaluationofthe first
derivative of f(x), and algorithms that do not require the first derivative.
Newtons’smethodorNewton-Raphsonmethodareexamplesofthefirsttype,
whileBrent’salgorithmisanexampleofthesecondtypeofmethod. Ineither
case,onemustbrackettherootbetweentwoendpointswheref(·)hasopposite
signs.
Bisection method
Iff(x)iscontinuouson[a,b],andf(a),f(b)haveoppositesigns,thenbythe
intermediate value theorem it follows that f(c)= 0 for some a < c < b. The
bisectionmethodsimplychecksthesignoff(x)atthemidpointx=(a+b)/2
of the interval at each iteration. If f(a),f(x) have opposite signs, then the
interval is replaced by [a,x] and otherwise it is replaced by [x,b]. At each
iteration,thelengthoftheintervalcontainingtherootdecreasesbyhalf. The
methodcannotfail,andthenumberofiterationsneededtoachieveaspecified
tolerance is known in advance. If the initial interval [a,b] contains more than
one root, then bisection will find one of the roots. The rate of convergenceof
the bisection algorithm is linear.
Example 11.6 (Solving f(x)=0)
Solve
2ay
a2+y2+ =n?2,
n?1
whereaisaspecifiedconstantandn>2isaninteger. Ofcourse,thisequation
can be solved directly by elementary algebra, to obtain the exact solution:
(cid:21)
?a (cid:11) a (cid:12)
y = ± n?2+a2+ 2 .
n?1 n?1
Let us compare the exact solution with a numerical solution. Apply the
bisection method to seek a positive solution. If we restate the problem as:
find the solutions of
2ay
f(y)=a2+y2+ ?(n?2)=0,
n?1
the first step is to code the function f. The next step is to determine an
interval such that f(y) has opposite signs at the endpoints. For example, if
a = 1/2 and n = 20, there will be a positive and a negative root. In the
following, the positive root is found, starting from the interval (0,5n).

| 328 |                |       |     | Statistical |     | Computing | with | R   |     |
| --- | -------------- | ----- | --- | ----------- | --- | --------- | ---- | --- | --- |
| f   | <- function(y, |       |     | a, n)       | {   |           |      |     |     |
|     | a^2            | + y^2 | +   | 2*a*y/(n-1) |     | - (n-2)   |      |     |     |
}
| a        | <- 0.5       |                          |           |              |               |        |             |                |     |
| -------- | ------------ | ------------------------ | --------- | ------------ | ------------- | ------ | ----------- | -------------- | --- |
| n        | <- 20        |                          |           |              |               |        |             |                |     |
| b0       | <-           | 0                        |           |              |               |        |             |                |     |
| b1       | <-           | 5*n                      |           |              |               |        |             |                |     |
| #solve   |              | using                    | bisection |              |               |        |             |                |     |
| it       | <-           | 0                        |           |              |               |        |             |                |     |
| eps      | <-           | .Machine$double.eps^0.25 |           |              |               |        |             |                |     |
| r        | <- seq(b0,   |                          | b1,       | length=3)    |               |        |             |                |     |
| y        | <- c(f(r[1], |                          | a,        | n),          | f(r[2],       | a,     | n), f(r[3], | a, n))         |     |
| if       | (y[1]        | *                        | y[3]      | > 0)         |               |        |             |                |     |
|          | stop("f      |                          | does      | not          | have opposite |        | sign        | at endpoints") |     |
| while(it |              | <                        | 1000      | && abs(y[2]) |               | > eps) | {           |                |     |
|          | it           | <- it                    | + 1       |              |               |        |             |                |     |
|          | if           | (y[1]*y[2]               |           | < 0)         | {             |        |             |                |     |
|          |              | r[3]                     | <-        | r[2]         |               |        |             |                |     |
|          |              | y[3]                     | <-        | y[2]         |               |        |             |                |     |
} else {
|     |     | r[1] | <-  | r[2] |     |     |     |     |     |
| --- | --- | ---- | --- | ---- | --- | --- | --- | --- | --- |
|     |     | y[1] | <-  | y[2] |     |     |     |     |     |
}
|     | r[2]          | <-  | (r[1]   | + r[3]) | /           | 2   |     |     |     |
| --- | ------------- | --- | ------- | ------- | ----------- | --- | --- | --- | --- |
|     | y[2]          | <-  | f(r[2], | a=a,    | n=n)        |     |     |     |     |
|     | print(c(r[1], |     |         | y[1],   | y[3]-y[2])) |     |     |     |     |
}
| The estimate |              | of the    | root | when         | the stopping |         | condition | is satisfied is | the value |
| ------------ | ------------ | --------- | ---- | ------------ | ------------ | ------- | --------- | --------------- | --------- |
| in r[2]      | and          | the value | of   | the function |              | at r[2] | is in     | y[2].           |           |
| >            |              | r[2]      |      |              |              |         |           |                 |           |
| [1]          | 4.186845     |           |      |              |              |         |           |                 |           |
| >            |              | y[2]      |      |              |              |         |           |                 |           |
| [1]          | 2.984885e-05 |           |      |              |              |         |           |                 |           |
| >            |              | it        |      |              |              |         |           |                 |           |
| [1]          | 21           |           |      |              |              |         |           |                 |           |
=4.186841,?4.239473.
| Our exact | formula  |      | gives   | the roots  | y       |             |       | (Most                | problems, |
| --------- | -------- | ---- | ------- | ---------- | ------- | ----------- | ----- | -------------------- | --------- |
| including | this     | one, | canbe   | solvedmore |         | efficiently | using | the unirootfunction, |           |
| which     | is shown | in   | Example | 11.7       | below.) |             |       |                      | (cid:5)   |

Numerical Methods in R 329
Other methods, such as the secantmethod, may (formally) convergefaster
thanthebisectionmethod,buttherootmaynotremainbracketed. Thesesu-
perlinearmethods maybe fasterfor manyproblems,but mayfailtoconverge
to a root. The secant method assumes that f(x) is approximately linear on
theintervalbracketingtheroot. Inversequadraticinterpolationapproximates
f(x) with a quadratic function fitted to the three prior points.
Brent’s method
Brent’s method combines the root bracketing and bisection with inverse
quadratic interpolation. It fits x as a quadratic function of y. If the three
pointsare(a,f(a)),(b,f(b)),(c,f(c)),withbasthe currentbestestimate,the
next estimate for the root is found by interpolation, setting y = 0 in the
Lagrange interpolation polynomial
[y?f(a)][y?f(b)]c
x=
[f(c)?f(a)][f(c)?f(b)]
[y?f(b)][y?f(c)]a [y?f(c)][y?f(a)]b
+ + .
[f(a)?f(b)][f(a)?f(c)] [f(b)?f(c)][f(b)?f(a)]
If this estimate is outside of the interval known to bracket the root, bisec-
tion is used at this step. (For details see [32] or[213] or the zeroin.f fortran
code.) Brent’s method is generally faster than bisection, and it has the sure
convergence of the bisection method.
Brent’s method is implemented in the R function uniroot,which searches
for a zero of a univariate function between two points where the function has
opposite signs.
Example 11.7 (Solving f(x)=0 with Brent’s method: uniroot)
Solve
2ay
a2+y2+ =n?2,
n?1
witha=0.5,n=20asinExample11.6. Thefirststepistocodethefunction
f. This function is not complicated, so we code this function inline in the
unirootstatement. The next step is to determine an interval such that f(y)
hasoppositesignsattheendpoints. Thecalltounirootandresultareshown
below.
a <- 0.5
n <- 20
out <- uniroot(function(y) {
a^2 + y^2 + 2*a*y/(n-1) - (n-2) },
lower = 0, upper = n*5)

330 Statistical Computing with R
> unlist(out)
root f.root iter estim.prec
4.186870e+00 2.381408e-04 1.400000e+01 6.103516e-05
Inthecalltouniroot,wecanoptionallyspecifythemaximumnumberofiter-
ations (default 1000)or the tolerance(default .Machine$double.eps^0.25).
The positive solution to f(y) = 0 is (approximately) y = 4.186870. To seek
the negative root, we canapply unirootagain. The interval can be specified
as above, or as shown below.
uniroot(function(y) {a^2 + y^2 + 2*a*y/(n-1) - (n-2)},
interval = c(-n*5, 0))$root
[1] -4.239501
Our exact formula (see Example 11.6) gives y =4.186841,?4.239473. (cid:5)
R note 11.3 Also see the polyroot function, to find zeroes of a polynomial
with real or complex coefficients. See the help topic Complex for description
of functions in R that support complex arithmetic.
11.3 Numerical Integration
Basic numerical integration using the integrate function is illustrated in
the following examples, where useful functions are developed for the density
and cdf of the sample correlation statistic.
Numerical integration methods can be adaptive or non-adaptive. Non-
adaptive methods apply the same rules over the entire range of integration.
The integrand is evaluated at a finite set of points and a weighted sum of
the(cid:22)se function values is us(cid:10)ed to obtain the estimate. The numerical estimate
of
a
b f(x) is of the form n
i=0
f(xi)wi, where {xi } are points in an interval
containing [a,b] and {wi } are suitable weights.
Forexample,thetrapezoidalruledivides[a,b]intonequallengthsubinter-
vals length h=(b?a)/n, with endpoints x
0
,x
1
,...,xn, and uses the area of
the trapezoid to estimate the integralover eachsubinterval. The estimate on
(cid:22)
b
(xi,xi+1 ) is (f(xi)+f(xi+1 ))(h/2). The numerical estimate of
a
f(x)dx is
n(cid:5)?1
h h
f(a)+h f(xi)+ f(b).
2 2
i=1
If f(x) is twice continuously differentiable, the error is O(f(cid:5)(cid:5)(x?)/n2), where
x? ?(a,b). This is anexample ofa closedNewton-Cotes integrationformula.
See e.g. [269, Ch. 5] for more examples.

Numerical Methods in R 331
Quadraturemethodsevaluatetheintegrandatafinitesetofpoints(nodes),
but these nodes neednotbe evenly spaced. Suppose thatw is a non-negative
(cid:22)
function such that b xkw(x)dx <?, for all k ?0. Then the integrand f(x)
a
can be expressed as g(x)w(x).
(cid:22)
b
Notethatwehaveassumedthatw(x)/ w(x)dxisadensityfunctionwith
a
finitepositivemoments. Forexample,wec(cid:22)antakew(x)=exp(?x2/2),called
Gauss-Hermite quadrature. In this case, ? xkw(x)dx < ?, for all k ? 0,
??
whichappliestoarbitraryintervals(a,b)ontherealline. InGaussianquadra-
ture, the nodes {xi } selected are the roots of a set of orthogonalpolynomials
with respect to w. The normalized orthogonal polynomials also determine
weights {wi }.
The GaussianQuadrature Theoremimplies that if g(x) is 2n(cid:10)times contin-
n
uously differentiable, then the error in the numerical estimate
i=1
wig(xi)
is (cid:6)
b (cid:5)n g(2n)(x?)
g(x)w(x)dx? wig(xi)= ,
(2n)!k2
a i=1 n
where kn is the leading coefficient of the nth polynomial and x? ? (a,b).
Quadrature and other approaches to numerical integration are discussed in
more detail in [121, 168, 269].
Whenanintegrandbehaveswellinonepartoftherangeofintegration,but
not so well in another part, it helps to treat each part differently. Adaptive
methods choosethe subintervalsbasedonthelocalbehaviorofthe integrand.
TheintegratefunctionprovidedinRusesanadaptivequadraturemethod
to find the approximate value of the integral of a one variable function. The
limits of integration can be infinite. The maximum number of subintervals,
the relativeerrorandthe absoluteerrorcanbe specified, buthavereasonable
default values for many problems.
Example 11.8 (Numerical integration with integrate)
Compute (cid:6)
?
dy
, (11.1)
(coshy??r)n?1
0
where ?1 < ? < 1, ?1 < r < 1 are constants and n ? 2 is an integer.
The graph of the integrand is shown in Figure 11.1(a). We apply adaptive
quadrature implemented by the integratefunction provided in R.
Firstwriteafunctionthatreturnsthevalueoftheintegrand. Thisfunction
should take as its first argument a vector containing the nodes, and return a
vector of the same length. Additional arguments can also be supplied. This
function or the name of this function is the first argument to integrate.

332 Statistical Computing with R
0.0 0.5 1.0 1.5 2.0
5.2
0.2
5.1
0.1
5.0
0.0
y
)y(f
?1.0 ?0.5 0.0 0.5 1.0
(a)
041
021
001
08
06
04
02
0
?
)5.0=r
,01=n(
eulaV
largetnI
(b)
FIGURE 11.1: Example 11.8 (n = 10, r = 0.5, ? = 0.2) (a) Integrand,
(b) Value of the integral as a function of ?.
A simple way to compute the integral for fixed parameters, say (n = 10,
r =0.5, ?=0.2) is
> integrate(function(y){(cosh(y) - 0.1)^(-9)}, 0, Inf)
1.053305 with absolute error < 2.3e-05
Theintegralforarbitrary(n,r,?)isneeded,sowriteamoregeneralintegrand
function with these arguments,and supply the extra arguments in the call to
integrate.
f <- function(y, N, r, rho) {
(cosh(y) - rho * r)^(1 - N)
}
integrate(f, lower=0, upper=Inf,
rel.tol=.Machine$double.eps^0.25,
N=10, r=0.5, rho=0.2)
This version produces the same estimate as above.
To see how the result depends on ?, fix n = 10 and r = 0.5 and plot the
value of the integral as a function of ?. The plot is shown in Figure 11.1(b),
as produced by the following code.
ro <- seq(-.99, .99, .01)
v <- rep(0, length(ro))
for (i in 1:length(ro)) {
v[i] <- integrate(f, lower=0, upper=Inf,
rel.tol=.Machine$double.eps^0.25,
N=10, r=0.5, rho=ro[i])$value
}

Numerical Methods in R 333
plot(ro, v, type="l", xlab=expression(rho),
ylab="Integral Value (n=10, r=0.5)")
(cid:5)
R note 11.4 Sometimes there is a conflict between named arguments and
optional user-supplied arguments. Toavoid theconflict, either choose another
name for the optional argument, or supply both arguments. For example, the
following produces an error, because of apparent ambiguity between argument
rel.tol and r.
> integrate(f, lower=0, upper=Inf, n=10, r=0.5, rho=0.2)
Error in f(x, ...) : argument "r" is missing, with no default
The integral (11.1) appears in a density function in the following example.
Example 11.9 (Density of sample correlation coefficient)
The sample product-moment correlation coefficient measures linear associa-
tion between two variables. The population correlation coefficient of (X,Y)
is
E[(X ?E(X))(Y ?E(Y))]
?= (cid:2) .
Var(X)Var(Y)
If {(Xj,Yj), j = 1,...,n} are paired sample observations, the sample corre-
lation coefficient is
(cid:10)
R= (cid:3)
n
j=1
(Xj ?X)(Yj ?Y)
(cid:4) .
(cid:10) (cid:10) 1/2
n
j=1
(Xj ?X)2 n
j=1
(Yj ?Y)2
Assume that {(Xj,Yj), j = 1,...,n} are iid with BVN(µ
1
,µ
2
,?
1
,?
2
,?) (bi-
variatenormal)distribution. If?=0,thedensityfunctionofR(seee.g.[157,
Ch. 32]) is given by
?((n?1)/2)
f(r)= (1?r2)(n?4)/2, ?1<r <1. (11.2)
?(1/2)?((n?2)/2)
For 0 < |?| < 1, the density function is more complicated. Several forms of
the density function are given in [157, p. 549], including:
(cid:6)
(n?2)(1??2)(n?1)/2(1?r2)(n?4)/2 ? dw
f(r)= , (11.3)
? (coshw??r)n?1
0
for ?1<r <1.
Toevaluatethedensityfunction(11.3),theintegralmustbeevaluated. This
is covered in Example 11.8. The case ? = 0 can be handled separately using

334 Statistical Computing with R
the simpler formula (11.2). The method for evaluating the constant ?((n?
1)/2)/?((n?2)/2) was discussed in Example 11.2. The following function
combines these results to evaluate the density of the correlation statistic.
.dcorr <- function(r, N, rho=0) {
# compute the density function of sample correlation
if (abs(r) > 1 || abs(rho) > 1) return (0)
if (N < 4) return (NA)
if (isTRUE(all.equal(rho, 0.0))) {
a <- exp(lgamma((N - 1)/2) - lgamma((N - 2)/2)) /
sqrt(pi)
return (a * (1 - r^2)^((N - 4)/2))
}
# if rho not 0, need to integrate
f <- function(w, R, N, rho)
(cosh(w) - rho * R)^(1 - N)
#need to insert some error checking here
i <- integrate(f, lower=0, upper=Inf,
R=r, N=N, rho=rho)$value
c1 <- (N - 2) * (1 - rho^2)^((N - 1)/2)
c2 <- (1 - r^2)^((N - 4) / 2) / pi
return(c1 * c2 * i)
}
Some error checking should be added to this function in case the numerical
integration fails.
Asaninformalcheckonthedensitycalculations,plotthedensitycurve. For
? = 0 the density curve should be symmetric about 0 and the shape should
resemble a symmetric beta density. The plot is shown in Figure 11.2.
r <- as.matrix(seq(-1, 1, .01))
d1 <- apply(r, 1, .dcorr, N=10, rho=.0)
d2 <- apply(r, 1, .dcorr, N=10, rho=.5)
d3 <- apply(r, 1, .dcorr, N=10, rho=-.5)
plot(r, d2, type="l", lty=2, lwd=2, ylab="density")
lines(r, d1, lwd=2)
lines(r, d3, lty=4, lwd=2)
legend("top", inset=.02, c("rho = 0", "rho = 0.5",
"rho = -0.5"), lty=c(1,2,4), lwd=2)
(cid:5)

Numerical Methods in R 335
?1.0 ?0.5 0.0 0.5 1.0
5.1
0.1
5.0
0.0
r
ytisned
rho = 0
rho = 0.5 rho = ?0.5
FIGURE 11.2: Density of the correlation statistic for sample size 10.
R note 11.5 Density functions in R are vectorized, but the function .dcorr
of Example 11.3 is really expecting a single number r, rather than a vector.
Laterthisfunctioncanbeextendedtoageneralversion dcorr,likethedensity
functions dnorm, dgamma, etc. in R that accept vector arguments.
11.4 Maximum Likelihood Problems
Maximum likelihood is a method of estimation of parameters of a distrib-
ution. The abbreviation MLE may refer to maximum likelihood estimation
(the method), to the estimate, or to the estimator. The method finds a value
of the parameterthat maximizesthe likelihoodfunction. Thus,animportant
classofoptimizationproblemsinstatisticsaremaximumlikelihoodproblems.
Suppose that X
1
,...,Xn are random variables with parameter ? ? ? (?
maybeavector). Thelikelihoodfunction L(?)ofrandomvariablesX
1
,...,Xn
evaluated at x
1
,...,xn is defined as the joint density
L(?)=f(x
1
,...,xn;?).
If X
1
,...,Xn are a random sample (so X
1
,...,Xn are iid) with density
f(x;?), then
(cid:9)n
L(?)= f(xi;?).
i=1
A maximum likelihood estimate of ? is a value ?ˆthat maximizes L(?). That
is, ?ˆis a solution (not necessarily unique) to
L(?ˆ)=f(x
1
,...,xn;?ˆ)=maxf(x
1
,...,xn;?). (11.4)
???

336 Statistical Computing with R
If ?ˆis unique, ?ˆis the maximum likelihood estimator (MLE) of ?.
If ? is a scalar, the parameter space ? is an open interval, and L(?) is
differentiable and assumes a maximum on ?, then ?ˆis a solution of
d
L(?)=0. (11.5)
d?
The solutions to (11.5) are solutions to
d
(cid:19)(?)=0, (11.6)
d?
where (cid:19)(?) = logL(?) is the log-likelihood. In the case where X
1
,...,Xn are
a random sample, we have
(cid:9)n (cid:5)n
(cid:19)(?)=log f(xi;?)= logf(xi;?),
i=1 i=1
so (11.6) is often easier to solve than (11.5).
Example 11.10 (MLE using mle)
Suppose Y ,Y are iid with density f(y)=?e??y, y >0. Find the MLE of ?.
1 2
By independence,
L(?)=(?e
??y1)(?e ??y2)=?2e ??(y1+y2).
Thus (cid:19)(?) = 2log???(y +y ) and the log-likelihood equation to be solved
1 2
is
d 2
(cid:19)(?)= ?(y +y )=0, ? >0.
1 2
d? ?
The unique solution is ?ˆ=2/(y +y ), which maximizes L(?). Therefore the
1 2
MLE is the reciprocal of the sample mean in this example.
Although we have the analytical solution, let us see how the problem can
be solved numerically using the mle (stats4) function. The mle function
takes as its first argument the function that evaluates ?(cid:19)(?) = ?log(L(?)).
The negative log-likelihood is minimized by a call to optim, an optimization
routine.
#the observed sample
y <- c(0.04304550, 0.50263474)
mlogL <- function(theta=1) {
#minus log-likelihood of exp. density, rate 1/theta
return( - (length(y) * log(theta) - theta * sum(y)))
}

Numerical Methods in R 337
library(stats4)
fit <- mle(mlogL)
summary(fit)
Maximum likelihood estimation
Call: mle(minuslogl = mlogL)
Coefficients:
Estimate Std. Error
theta 3.66515 2.591652
-2 log L: -1.195477
Alternately, the initialvalue for the optimizer couldbe supplied inthe callto
mle; two examples are
mle(mlogL, start=list(theta=1))
mle(mlogL, start=list(theta=mean(y)))
In this example, the maximum likelihood estimate is ?ˆ= 1/Y = 3.66515.
Themaximumlog-likelihoodis(cid:19)(?ˆ)=2log(1/y¯)?(1/y¯)(y +y )=0.5977386,
1 2
or ?2log(L)=?1.195477. The same result was obtained by mle. (cid:5)
Suppose ?ˆ satisfies (11.6). Then ?ˆ may be a relative maximum, relative
minimum, or an inflection point of (cid:19)(?). If (cid:19)(cid:5)(cid:5)(?ˆ) < 0, then ?ˆ is a local
maximum of log(cid:19)(?).
The secondderivative of the log-likelihoodalso contains informationabout
the variance of ?ˆ. The Fisher information (see e.g. [39, 231]) on X at ? is
defined
I(?)=[?E?(cid:19) (cid:5)(cid:5) (?)]|?.
The Fisher information gives a bound on the variance of unbiased estimators
of ?. The larger the information I(?), the more information the sample con-
tains about the value of ?, and the smaller the variance of the best unbiased
estimator.
If ? is a vector in Rd, ? is an open subset of Rd, and the first order partial
derivatives of L(?) exist in all coordinates of ?, then ?ˆmust satisfy simulta-
neously the d equations
?
L(?ˆ)=0, j =1,...,d, (11.7)
??j
or the d corresponding log-likelihood equations.
Ifthelog-likelihoodisnotquadratic,thesolutionofthelikelihoodequations
(11.11) is a nonlinear system of d equations in d variables. Thus, maximum

338 Statistical Computing with R
likelihood estimation and maximum likelihood based inference often require
nonlinear numerical methods.
Note that there are several potential problems to finding a solution: the
derivativesofthe likelihoodfunction maynotexist, ormaynotexistonallof
?;theoptimal? maynotbeaninteriorpointof?;orthelikelihoodequation
(11.5) or (11.7) may be difficult to solve. In this case, numerical methods of
optimization may succeed in finding optimal solutions ?ˆsatisfying (11.4).
11.5 One-dimensional Optimization
Thereareseveralapproachestoone-dimensionaloptimizationimplemented
inR.Manytypesofproblemscanberestatedsothattheroot-findingfunction
uniroot can be applied. The nlm function implements nonlinear minimiza-
tion with a Newton-type algorithm. The documentation for the optimize
function indicates that it is C translation of Fortran code based on the Algol
60 procedure “localmin” given in [32], which implements a combination of
golden section search and successive parabolic interpolation.
Example 11.11 (One-dimensional optimization with optimize)
Maximize the function
log(1+log(x))
f(x)=
log(1+x)
with respectto x. The graphoff(x) inFigure11.3showsthatthe maximum
occurs between 4 and 8.
x <- seq(2, 8, .001)
y <- log(x + log(x))/(log(1+x))
plot(x, y, type = "l")
Apply optimize on the interval (4, 8). The default is to minimize the
function. To maximize f(x), set maximum = TRUE. The default tolerance is
.Machine$double.eps^0.25.
f <- function(x)
log(x + log(x))/log(1+x)
> optimize(f, lower = 4, upper = 8, maximum = TRUE)
$maximum
[1] 5.792299
$objective
[1] 1.055122

Numerical Methods in R 339
2 4 6 8 10 12 14
50.1
00.1
59.0
09.0
x
y
FIGURE 11.3: The function f(x) in Example 11.11.
(cid:5)
Example 11.12 (MLE: Gamma distribution)
Let x
1
,...,xn be a randomsample froma Gamma(r,?) distribution(r is the
shapeparameterand?istherateparameter). Inthisexample,? =(r,?)?R2
and ?=R+×R+. Find the maximum likelihood estimator of ? =(r,?).
The likelihood function is
?nr (cid:9)n (cid:5)n
L(r,?)=
?(r)n
x r
i
?1exp(?? xi), xi ?0,
i=1 i=1
and the log-likelihood function is
(cid:5)n (cid:5)n
(cid:19)(r,?)=nrlog??nlog?(r)+(r?1) logxi ?? xi. (11.8)
i=1 i=1
The problem is to maximize (11.8) with respect to r and ?. In this form it
is a two-dimensional optimization problem. This problem can be reduced to
a one-dimensional root-finding problem. Find the simultaneous solution(s)
(r,?) to
(cid:5)n
? nr
(cid:19)(r,?)= ? xi =0; (11.9)
?? ?
i=1
? ?(cid:5)(r) (cid:5)n
(cid:19)(r,?)=nlog??n + logxi =0. (11.10)
?r ?(r)
i=1

| 340      |            |         | Statistical |              | Computing |     | with R      |         |             |
| -------- | ---------- | ------- | ----------- | ------------ | --------- | --- | ----------- | ------- | ----------- |
| Equation | (11.9)     | implies | ?ˆ =rˆ/x¯.  | Substituting |           |     | ?ˆ for ? in | (11.10) | reduces the |
| problem  | to solving |         |             |              |           |     |             |         |             |
(cid:5)n
|     |     |     |     | rˆ  |     | ?(cid:5)(rˆ) |     |     |     |
| --- | --- | --- | --- | --- | --- | ------------ | --- | --- | --- |
?n
|     |     |     | nlog | +   | logxi |       | =0  |     | (11.11) |
| --- | --- | --- | ---- | --- | ----- | ----- | --- | --- | ------- |
|     |     |     |      | x¯  |       | ?(rˆ) |     |     |         |
i=1
(rˆ,?ˆ)
| for rˆ. | Thus, | the MLE |     | is the simultaneous |     |     | solution | (r,?) of |     |
| ------- | ----- | ------- | --- | ------------------- | --- | --- | -------- | -------- | --- |
(cid:5)n
|     |     |       | 1   |       |          |     |     | r   |     |
| --- | --- | ----- | --- | ----- | -------- | --- | --- | --- | --- |
|     |     | log?+ |     | logxi | =?(?x¯); |     | x¯= | ,   |     |
|     |     |       | n   |       |          |     |     | ?   |     |
i=1
| where?(t)= |     | dlog?(t)=?(cid:5)(t)/?(t)(thedigammafunctioninR).Anumerical |     |     |     |     |     |     |     |
| ---------- | --- | ----------------------------------------------------------- | --- | --- | --- | --- | --- | --- | --- |
dt
| solution      | is easily      | obtained         | using        | the            | uniroot    | function.     |               |              |            |
| ------------- | -------------- | ---------------- | ------------ | -------------- | ---------- | ------------- | ------------- | ------------ | ---------- |
| In            | the following  | simulation       |              | experiment,    |            | random        | samples       | of size      | n = 200    |
| are generated |                | from a           | Gamma(r      | =5,?=2)        |            | distribution, |               | and the      | parameters |
| are estimated |                | by optimizing    |              | the likelihood |            | equations     | using         | uniroot.     | The        |
| sampling      | and            | estimation       | is           | repeated       | 20000      | times.        | Below         | is a summary | of the     |
| estimates     | obtained       | by               | this method. |                |            |               |               |              |            |
| m             | <- 20000       |                  |              |                |            |               |               |              |            |
| est           | <-             | matrix(0,        | m,           | 2)             |            |               |               |              |            |
| n             | <- 200         |                  |              |                |            |               |               |              |            |
| r             | <- 5           |                  |              |                |            |               |               |              |            |
| lambda        |                | <- 2             |              |                |            |               |               |              |            |
| obj           | <-             | function(lambda, |              | xbar,          | logx.bar)  |               | {             |              |            |
|               | digamma(lambda |                  |              | * xbar)        | - logx.bar |               | - log(lambda) |              |            |
}
| for | (i         | in 1:m)         | {         |                |              |     |               |       |     |
| --- | ---------- | --------------- | --------- | -------------- | ------------ | --- | ------------- | ----- | --- |
|     | x          | <- rgamma(n,    |           | shape=r,       | rate=lambda) |     |               |       |     |
|     | xbar       | <- mean(x)      |           |                |              |     |               |       |     |
|     | u          | <- uniroot(obj, |           | lower          | = .001,      |     | upper =       | 10e5, |     |
|     |            | xbar            | =         | xbar, logx.bar |              | =   | mean(log(x))) |       |     |
|     | lambda.hat |                 | <- u$root |                |              |     |               |       |     |
|     | r.hat      | <- xbar         | *         | lambda.hat     |              |     |               |       |     |
|     | est[i,     | ] <-            | c(r.hat,  | lambda.hat)    |              |     |               |       |     |
}
| ML                                      | <-         | colMeans(est) |             |               |     |                         |                          |     |         |
| --------------------------------------- | ---------- | ------------- | ----------- | ------------- | --- | ----------------------- | ------------------------ | --- | ------- |
| [1]                                     | 5.068116   | 2.029766      |             |               |     |                         |                          |     |         |
| Theaverageestimatefortheshapeparameterr |            |               |             |               |     |                         | was5.068116andtheaverage |     |         |
| estimate                                | for?       | was2.029766.  |             | The estimates |     | arepositivelybiased,but |                          |     | closeto |
| the target                              | parameters |               | (r =5,?=2). |               |     |                         |                          |     |         |

Numerical Methods in R 341
Recall that a maximum likelihood estimator is asymptotically normal. For
large n, ?ˆ ?N(?,?2) and rˆ?N(r,?2) where ?2 and ?2 are the Cram´er-Rao
1 2 1 2
lowerbounds of ? andr, respectively. The histogramofreplicates ?ˆ is shown
inFigure11.4(a),andthehistogramofreplicatesrˆisshowninFigure11.4(b).
Here n=200 is not very large, and the histogram of replicates in both cases
is slightly skewed but close to normal.
hist(est[, 1], breaks="scott", freq=FALSE,
xlab="r", main="")
points(ML[1], 0, cex=1.5, pch=20)
hist(est[, 2], breaks="scott", freq=FALSE,
xlab=bquote(lambda), main="")
points(ML[2], 0, cex=1.5, pch=20)
(cid:5)
?
ytisneD
1.5 2.0 2.5 3.0
0.2
5.1
0.1
5.0
0.0
r
(a)
ytisneD
4 5 6 7 8
8.0
6.0
4.0
2.0
0.0
(b)
FIGURE 11.4: Replicates of maximum likelihood estimates by numerical
optimization of the likelihood of a Gamma(r = 5,? = 2) random variable in
Example 11.12.

342 Statistical Computing with R
11.6 Two-dimensional Optimization
InthegammaMLEproblemweseekthemaximumofatwoparameterlike-
lihoodfunction. Althoughitispossibletosimplifytheproblemandsolveitas
inExample11.12,itservesasasimpleexampletoillustratetheoptimgeneral
purpose optimization function in R. It implements Nelder-Mead [205], quasi-
Newton, and conjugate-gradient algorithms [96], and also methods for box-
constrained optimization and simulated annealing. See Nocedal and Wright
[206] and the R manual [217] for reference on these methods and their imple-
mentation. The syntax for optim is
optim(par, fn, gr = NULL, method =
c("Nelder-Mead", "BFGS", "CG", "L-BFGS-B", "SANN"),
lower = -Inf, upper = Inf,
control = list(), hessian = FALSE, ...)
The default method is Nelder-Mead. The first argument par is a vector of
initial values of the target parameters, and fn is the objective function. The
first argument to fn is the vector of target parameters and its return value
should be a scalar.
Example 11.13 (Two-dimensional optimization with optim)
The objective function to be maximized is the log-likelihood function
(cid:5)n (cid:5)n
logL(?|x)=nrlog?+(r?1) logxi ?? xi ?nlog?(r),
i=1 i=1
andtheparametersare? =(r,?). Thelog-likelihoodfunctionisimplemented
as
LL <- function(theta, sx, slogx, n) {
r <- theta[1]
lambda <- theta[2]
loglik <- n * r * log(lambda) + (r - 1) * slogx -
lambda * sx - n * log(gamma(r))
- loglik
}
(cid:10)
n
wh(cid:10)ich
n
avoidssome repeated calculationof the sums sx =
i=1
xi and slogx
=
i=1
logxi. As optim performs minimization by default, the return value
is ?logL(?). Initial values for the estimates must be chosen carefully. For
thisproblem,themethodofmomentsestimatorscouldbegivenfortheinitial
values of the parameters, but for simplicity r =1 and ?=1 are used here as
the initial values. If x is the random sample of size n, the optim call is

Numerical Methods in R 343
optim(c(1,1), LL, sx=sum(x), slogx=sum(log(x)), n=n)
Thereturnobjectincludesanerrorcode$convergence,whichis0forsuccess
and otherwise indicates a problem. The MLE is computed for one sample
below.
n <- 200
r <- 5; lambda <- 2
x <- rgamma(n, shape=r, rate=lambda)
optim(c(1,1), LL, sx=sum(x), slogx=sum(log(x)), n=n)
# results from optim
par1 5.278565
par2 2.142059
value 284.550086
counts.function 73.000000
counts.gradient NA
convergence 0.000000
ThisresultindicatesthattheNelder-Mead(default)methodsuccessfullycon-
verged to rˆ= 5.278565 and ?ˆ = 2.142059. The precision can be adjusted by
reltol. The algorithm stops if it is unable to reduce the value by a factor
of reltol, which defaults to sqrt(.Machine$double.eps) = 1.490116e-08
in this computation.
Thesimulationexperimentbelowrepeatstheestimationprocedureforcom-
parison with the results in Example 11.12.
mlests <- replicate(20000, expr = {
x <- rgamma(200, shape = 5, rate = 2)
optim(c(1,1), LL, sx=sum(x), slogx=sum(log(x)), n=n)$par
})
colMeans(t(mlests))
[1] 5.068109 2.029763
The estimates obtained by the two-dimensional optimization of (11.8) have
approximately the same average value as the estimates obtained by the one-
dimensional root-finding approach in Example 11.12. (cid:5)
R note 11.6 When replicating a vector, note that replicate fills a matrix
in column major order. In the example above, the vector in each replicate is
length 2, so the matrix has 2 rows and 20000 columns. The transpose of this
result is the two dimensional sample of replicates.

344 Statistical Computing with R
Example 11.14 (MLE for a quadratic form)
Consider the problem of estimating the parameters of a quadratic form of
centered Gaussian random variables given by
Y =?
1
X
1
2+?
2
X
2
2+···+?kX
k
2,
where Xj are iid standard normal random variables, j = 1,...,k, and ?
1
>
··· > ?k > 0. By elementary transformations, each Yj = ?jX
j
2 has a
gamma distribution with shape parameter 1/2 and rate parameter 1/(2?j),
j =1,...,k. HenceY canberepresentedasthemixtureofthek independent
gamma variables,
(cid:7) (cid:8) (cid:7) (cid:8)
Y = D 1 G 1 , 1 +···+ 1 G 1 , 1 .
k 2 2?
1
k 2 2?k
The notation above means that Y can be generated from a two-stage experi-
ment. First a randominteger J is observed,where J is uniformly distributed
on the integers 1 to k. Then a random variate Y from the distribution of
YJ ? Gamma(1
2(cid:10)
,
2?
1
J
) is observed.
k
Assumethat
j=1
?j =1. Supposearandomsampley
1
,...,ymisobserved
fromthedistributionofY,andk =3. Findthemaximumlikelihoodestimate
of the parameters ?j, j =1,2,3.
This problem can be approached by numerical optimization of the log-
likelihood function with two unknown parameters ? and ? . The density of
1 2
the mixture is
(cid:5)3
f(y|?)= fj(y|?),
j=1
where fj(y|?) is the gamma density with shape parameter 1/2 and rate pa-
rameter 1/(2?j). The log-likelihood can be written in terms of two unknown
parameters ? and ? , with ? =1?? ?? .
1 2 3 1 2
LL <- function(lambda, y) {
lambda3 <- 1 - sum(lambda)
f1 <- dgamma(y, shape=1/2, rate=1/(2*lambda[1]))
f2 <- dgamma(y, shape=1/2, rate=1/(2*lambda[2]))
f3 <- dgamma(y, shape=1/2, rate=1/(2*lambda3))
f <- f1/3 + f2/3 + f3/3 #density of mixture
#returning -loglikelihood
return( -sum(log(f)))
}
The sample data in this example is generated from the quadratic form with
? = (0.60,0.25,0.15). Then the optim function is applied to search for the
minimum of LL, starting with initial estimates ?=(0.5,0.3,0.2).

Numerical Methods in R 345
set.seed(543)
m <- 2000
lambda <- c(.6, .25, .15) #rate is 1/(2 lambda)
lam <- sample(lambda, size = 2000, replace = TRUE)
y <- rgamma(m, shape = .5, rate = 1/(2*lam))
opt <- optim(c(.5,.3), LL, y=y)
theta <- c(opt$par, 1 - sum(opt$par))
Resultsareshownbelow. Thereturncodeinopt$convergenceis0,indicating
successfulconvergence. The optimalvalue obtainedfor the log-likelihoodwas
736.325 at the point (? ,? )=(0.5922404,0.2414725).
1 2
> as.data.frame(unlist(opt))
unlist(opt)
par1 0.5922404
par2 0.2414725
value -736.3250225
counts.function 43.0000000
counts.gradient NA
convergence 0.0000000
> theta
[1] 0.5922404 0.2414725 0.1662871
.
The maximum likelihood estimate is ?ˆ = (0.592,0.241,0.166).The data was
generated with parameter values (0.60,0.25,0.15). For another approach to
estimating ? see Example 11.15. (cid:5)
Remark 11.1 The problem of approximating the distribution of quadratic
forms has received much attention in the literature over the years. Many the-
oretical results and numerical methods have been developed for this important
class of distributions. On numerical approximations for the distribution of
quadratic forms of normal variables see Imhof [150, 151] and Kuonen [166].
11.7 The EM Algorithm
The EM (Expectation–Maximization) algorithm is a general optimization
methodthatisoftenappliedtofindmaximumlikelihoodestimateswhendata
are incomplete. Following the seminal paper of Dempster, Laird and Rubin
[67]in1977,the methodhasbeenwidely appliedandextendedtosolvemany
other types of statistical problems. For a recent review of EM methods and
extensions see [178, 194, 292].

346 Statistical Computing with R
Incompleteness of data may arise from missing data as is often the case
with multivariate samples, or from other types of data such as samples from
censored or truncated distributions, or latent variables. Latent variables are
unobservablevariablesthatareintroducedinordertosimplifythe analysisin
some way.
The main idea of the EMalgorithmis simple, and althoughit may be slow
toconvergerelativetootheravailablemethods,itisreliableatfindingaglobal
maximum. Start with an initial estimate of the target parameter, and then
alternate the E (expectation) step and M (maximization) step. In the E step
compute the conditional expectation of the objective function (usually a log-
likelihoodfunction)giventheobserveddataandcurrentparameterestimates.
In the M step, the conditional expectation is maximized with respect to the
target parameter. Update the estimates and iteratively repeat the E and M
steps until the algorithm converges according to some criterion. Although
the main idea of EM is simple, for some problems computing the conditional
expectationintheEstepcanbecomplicated. Forincompletedata,theEstep
requires computing the conditional expectation of a function of the complete
data, given the missing data.
Example 11.15 (EM algorithm for a mixture model)
In this example the EM algorithm is applied to estimate the parameters of
thequadraticformintroducedinExample11.14. Recallthattheproblemcan
be formulated as estimation of the rate parameters of a mixture of gamma
random variables. Although the EM algorithm is not the best approach for
this problem, as an exercise we repeat the estimation for k = 3 components
(two unknown parameters) as outlined in Example 11.14.
The EM algorithm first updates the posterior probability pij that the ith
sampleobservationyi wasgeneratedfromthejth component. Atthetth step,
p(t) = (cid:10) k
1fj(yi |y,?(t))
,
ij k
j=1 k
1fj(yj |y,?(t))
where ?(t) is the current estimate of the parameters {?j }, and fj(yi |y,?(t))
is the Gamma(1/2, 1/(2?
j
(t)))
density evaluated at yi. Note that the mean of
the jth component is ?j so the updating equation is
(cid:10)
µ(t+1) =
m
i (cid:10)=1
p
i
(
j
t)yi
.
j p(t)
ij
In order to compare the estimates, we generate the data from the mixture Y
using the same random number seed as in Example 11.14.

Numerical Methods in R 347
set.seed(543)
lambda <- c(.6, .25, .15) #rate is 1/(2lambda)
lam <- sample(lambda, size = 2000, replace = TRUE)
y <- rgamma(m, shape = .5, rate = 1/(2*lam))
N <- 10000 #max. number of iterations
L <- c(.5, .4, .1) #initial est. for lambdas
tol <- .Machine$double.eps^0.5
L.old <- L + 1
for (j in 1:N) {
f1 <- dgamma(y, shape=1/2, rate=1/(2*L[1]))
f2 <- dgamma(y, shape=1/2, rate=1/(2*L[2]))
f3 <- dgamma(y, shape=1/2, rate=1/(2*L[3]))
py <- f1 / (f1 + f2 + f3) #posterior prob y from 1
qy <- f2 / (f1 + f2 + f3) #posterior prob y from 2
ry <- f3 / (f1 + f2 + f3) #posterior prob y from 3
mu1 <- sum(y * py) / sum(py) #update means
mu2 <- sum(y * qy) / sum(qy)
mu3 <- sum(y * ry) / sum(ry)
L <- c(mu1, mu2, mu3) #update lambdas
L <- L / sum(L)
if (sum(abs(L - L.old)/L.old) < tol) break
L.old <- L
}
Results are shown below.
print(list(lambda = L/sum(L), iter = j, tol = tol))
$lambda [1] 0.5954759 0.2477745 0.1567496
$iter [1] 592
$tol [1] 1.490116e-08
Here the EM algorithm converged in 592 iterations (within < 1.5e ? 8)
.
to the estimate ?ˆ = (0.595,.248,.157). The data was generated with pa-
rameters (0.60,0.25,0.15). Compare this result with the maximum likeli-
hood estimate obtained by two-dimensional numerical optimization of the
log-likelihood function in Example 11.14. (cid:5)

348 Statistical Computing with R
11.8 Linear Programming – The Simplex Method
The simplex method is a widely applied optimization method for a special
classofconstrainedoptimizationproblemswithlinearobjectivefunctionsand
linear constraints. The constraints usually include inequalities, and therefore
the region over which the objective function is to be optimized (the feasible
region) can be described by a simplex. Linear programming methods include
the simplex method and interior point methods, but here we illustrate the
simplex method only. See Nocedal and Wright [206, Ch. 13] for a summary
of the simplex method.
Given m linear constraints in n variables, let A be the m×n matrix of
coefficients, so that the constraints are given by Ax?b, where b?Rm. Here
we suppose that m < n. An element x ? Rn of the feasible set satisfies the
constraint Ax ? b. The objective function is a linear function of n variables
with coefficients given by vector c. Hence, the objective is to minimize cTx
subject to the constraint Ax?b.
The problem as stated above is the primal problem. The dual problem is:
maximize bTy subject to the constraint ATy ?c, where y ?Rn. The duality
theorem states that if either the primal or the dual problem has an optimal
solution with a finite objective value, then the primal and the dual problems
have the same optimal objective value.
The vertices of the simplex are called the basic feasible points of the fea-
sible set. When the optimal value of the objective function exists, it will be
achieved at one of the basic feasible points. The simplex algorithm evaluates
the objective function at the basic feasible points, but selects the points at
each iteration in such a way that an optimal solution is found in relatively
few iterations. It can be shown (see e.g. [206, Thm. 13.4]) that if the linear
programisboundedandnotdegenerate,thesimplexalgorithmwillterminate
after finitely many iterations at one of the basic feasible points.
The simplex method is implemented by the simplex function in the boot
package [34]. The simplex function will maximize or minimize the linear
function ax subject to the constraints A x ? b , A x ? b , A x = b , and
1 1 2 2 3 3
x ? 0. Either the primal or dual problem is easily handled by the simplex
function.
Example 11.16 (Simplex algorithm)
Use the simplex algorithm to solve the following problem.
Maximize 2x+2y+3z subject to
?2x+y+z ?1
4x?y+3z ?3
x?0, y ?0, z ?0.

Numerical Methods in R 349
For sucha smallproblem,it wouldnot be too difficult to solveit directly, be-
causethetheoryimpliesthatifthereisanoptimalsolution,itwillbeachieved
at one of the vertices of the feasible set. Hence, we need only evaluate the
objective function at each of the finitely many vertices. The vertices are de-
termined by the intersection of the linear constraints. The simplex method
also evaluates the objective function as it moves from one vertex to another,
usually changing the coordinates in one vertex only at each step. The trick
is to decide which vertex to check next by moving in the directionof greatest
increase/decrease in the objective function. Eventually, for bounded, nonde-
generateproblems,thevalueoftheobjectivefunctioncannotbeimprovedand
thealgorithmterminateswiththesolution. Thesimplexfunctionimplements
the algorithm.
library(boot) #for simplex function
A1 <- rbind(c(-2, 1, 1), c(4, -1, 3))
b1 <- c(1, 3)
a <- c(2, 2, 3)
simplex(a = a, A1 = A1, b1 = b1, maxi = TRUE)
Optimal solution has the following values
x1 x2 x3
2 5 0
The optimal value of the objective function is 14.
(cid:5)
11.9 Application: Game Theory
In the linear program of Example 11.16, the constraints are inequalities.
Equality constraints are also possible. Equality constraints might arise if, for
example,thesumofthevariablesisfixed. Ifthevariablesrepresentadiscrete
probability mass function, the sum of the probabilities must equal one. We
solve for a probability mass function in the next problem. It is a classical
problem in game theory.
Example 11.17 (Solving the Morra game)
One of the world’s oldestknowngames of strategy is the Morragame. In the
3-finger Morra game,each player shows 1, 2, or 3 fingers, and simultaneously
each calls his guess of the number of fingers his opponent will show. If both
players guess correctly, the game is a draw. If exactly one player guesses
correctly, he wins an amount equal to the sum of the fingers shown by both

350 Statistical Computing with R
players. ThisexampleappearsinDresher[74]andinSz´ekelyandRizzo[264].
For more details on methods of solving games, see Owen [208].
The strategies for each player are pairs (d,g), where d is the number of
fingers and g is the guess. Thus, each player has nine pure strategies, (1,1),
(1,2), ..., (3,3). This is a zero-sum game: the gain of the first player is the
lossofthesecondplayer. Player1seekstomaximizehiswinnings,andPlayer
2 seeks to minimize his losses. The game can be represented by the payoff
matrix in Table 11.1.
TABLE 11.1: PayoffMatrix of the Game of Morra
Strategy 1 2 3 4 5 6 7 8 9
1 0 2 2 ?3 0 0 ?4 0 0
2 ?2 0 0 0 3 3 ?4 0 0
3 ?2 0 0 ?3 0 0 0 4 4
4 3 0 3 0 ?4 0 0 ?5 0
5 0 ?3 0 4 0 4 0 ?5 0
6 0 ?3 0 0 ?4 0 5 0 5
7 4 4 0 0 0 ?5 0 0 ?6
8 0 0 ?4 5 5 0 0 0 ?6
9 0 0 ?4 0 0 ?5 6 6 0
Denote the payoff matrix by A = (aij). By von Neumann’s minimax the-
orem [282], the optimal strategies of both players in this game are mixed
strategies because minimaxjaij >maxjminiaij. A mixed strategy is simply
a probability distribution (x ,...,x ) on the set of strategies,where strategy
1 9
j is chosen with probability xj.
The minimax theoremimplies that if both playersapply optimalstrategies
x? andy? respectively,theneachplayerhas expectedpayoffv =x?T Ay?,the
value of the game. If the first player applies an optimal strategy x? against
any strategy y of the other player, his expected gain is at least v. Introduce
the variable x =v, and let x=(x ,...,x ,x ).
10 1 9 10
LetA be thematrixformedbyaugmentingAwithacolumnof-1’s. Then
1
since x?T Ay ? v for every pure strategy yj =(cid:10)1, we have the system of
constraints A
1
x ? 0. The equality constraint is m
i=1
xi = 1. The simplex
functionautomaticallyincludestheconstraintsxi ?0. (Tobesurethatv ?0,
onecantranslatethepayoffmatrixbysubtractingmin(A)fromeachelement.
The set of optimal strategies does not change.)
Definethe 1×(n+1)vectorA =[1,1,...,1,0]. Maximizev =x subject
3 10
to the constraints A x ? 0 and A x = 1. Keep in mind that the optimal x
1 3
returned by simplex will be x? =(x
1
,...,xm) and v =xm+1 .

Numerical Methods in R 351
Note that we are interested in optimal solutions of both the primal and
the dual problem, with analogous constraints and objective for the second
player. All two-player zero-sum games have similar representations as linear
programs,so the solution can be obtained for general m×n two-playerzero-
sum games. Our function solve.game has the payoff matrix as its single
argument,andreturnsinalist,the payoffmatrix,optimalstrategies,andthe
value of the game.
solve.game <- function(A) {
#solve the two player zero-sum game by simplex method
#optimize for player 1, then player 2
#maximize v subject to ...
#let x strategies 1:m, and put v as extra variable
#A1, the <= constraints
#
min.A <- min(A)
A <- A - min.A #so that v >= 0
max.A <- max(A)
A <- A / max(A)
m <- nrow(A)
n <- ncol(A)
it <- n^3
a <- c(rep(0, m), 1) #objective function
A1 <- -cbind(t(A), rep(-1, n)) #constraints <=
b1 <- rep(0, n)
A3 <- t(as.matrix(c(rep(1, m), 0))) #constraints sum(x)=1
b3 <- 1
sx <- simplex(a=a, A1=A1, b1=b1, A3=A3, b3=b3,
maxi=TRUE, n.iter=it)
#the ’solution’ is [x1,x2,...,xm | value of game]
#
#minimize v subject to ...
#let y strategies 1:n, with v as extra variable
a <- c(rep(0, n), 1) #objective function
A1 <- cbind(A, rep(-1, m)) #constraints <=
b1 <- rep(0, m)
A3 <- t(as.matrix(c(rep(1, n), 0))) #constraints sum(y)=1
b3 <- 1
sy <- simplex(a=a, A1=A1, b1=b1, A3=A3, b3=b3,
maxi=FALSE, n.iter=it)
soln <- list("A" = A * max.A + min.A,
"x" = sx$soln[1:m],
"y" = sy$soln[1:n],
"v" = sx$soln[m+1] * max.A + min.A)
soln
}

352 Statistical Computing with R
Although the function solve.game applies in principle to arbitrary m×n
games, it is of course limited in practice to systems that are not too large for
the simplex (boot) function to solve.
Now we apply the function solve.game to solve the Morra game. A list
object is returned that contains optimal strategies for each player and the
value of the game.
#enter the payoff matrix
A <- matrix(c( 0,-2,-2,3,0,0,4,0,0,
2,0,0,0,-3,-3,4,0,0,
2,0,0,3,0,0,0,-4,-4,
-3,0,-3,0,4,0,0,5,0,
0,3,0,-4,0,-4,0,5,0,
0,3,0,0,4,0,-5,0,-5,
-4,-4,0,0,0,5,0,0,6,
0,0,4,-5,-5,0,0,0,6,
0,0,4,0,0,5,-6,-6,0), 9, 9)
library(boot) #needed for simplex function
s <- solve.game(A)
Theoptimalstrategiesreturnedby solve.gamearethe sameforbothplayers
(the game is symmetric).
> round(cbind(s$x, s$y), 7)
[,1] [,2]
x1 0.0000000 0.0000000
x2 0.0000000 0.0000000
x3 0.4098361 0.4098361
x4 0.0000000 0.0000000
x5 0.3278689 0.3278689
x6 0.0000000 0.0000000
x7 0.2622951 0.2622951
x8 0.0000000 0.0000000
x9 0.0000000 0.0000000
Each player should randomize their strategies according to the probability
distributions above.
Itcanbe shown(see e.g.[74]) thatthe extreme points ofthe setofoptimal
strategies of either player for this Morra game are
(0,0,5/12,0,4/12,0,3/12,0,0), (11.12)
(0,0,16/37,0,12/37,0,9/37,0,0), (11.13)
(0,0,20/47,0,15/47,0,12/47,0,0), (11.14)
(0,0,25/61,0,20/61,0,16/61,0,0). (11.15)

Numerical Methods in R 353
Notice that the solutions obtained by the simplex method in this example
correspond to the extreme point (11.15). (cid:5)
For linear and integer programming, also see the lp function in the con-
tributed package lpSolve [26].
Exercises
11.1 The natural logarithm and exponential functions are inverses of each other,
so that mathematically log(expx) = exp(logx) = x. Show by example that
thispropertydoesnotholdexactlyincomputerarithmetic. Doestheidentity
hold with near equality? (See all.equal.)
11.2 Suppose that X and Y are independent random variables variables, X ?
Beta(a,b) and Y ? Beta(r,s). Then it can be shown [7] that
(cid:11) (cid:12)(cid:11) (cid:12)
(cid:5)r?1 r+s?1 a+b?1
P(X <Y)=
(cid:11)k a+r?1(cid:12)?k
.
a+b+r+s?2
k=max(r?b,0) a+r?1
Write a function to compute P(X < Y) for any a,b,r,s > 0. Compare your
result with a Monte Carlo estimate of P(X < Y) for (a,b) = (10,20) and
(r,s)=(5,5).
11.3 (a) Write a function to compute the kth term in
(cid:11) (cid:12) (cid:11) (cid:12)
(cid:5)? (?1)k (cid:16)a(cid:16)2k+2 ? d+1 ? k+ 3
(cid:11)2 (cid:12)2 ,
k!2k (2k+1)(2k+2) ? k+ d +1
k=0 2
where d?1 is an integer,a is a vector in Rd, and (cid:16)·(cid:16) denotes the Euclidean
norm. Perform the arithmetic so that the coefficients can be computed for
(almost) arbitrarily large k and d. (This sum converges for all a?Rd).
(b) Modify the function so that it computes and returns the sum.
(c) Evaluate the sum when a=(1,2)T.
?
11.4 Find the intersection points A(k) in (0, k) of the curves
(cid:21) !
a2(k?1)
Sk?1 (a)=P t(k?1)>
k?a2
and (cid:21) !
a2k
Sk(a)=P t(k)>
k+1?a2
,

354 Statistical Computing with R
for k = 4 : 25,100,500,1000,where t(k) is a Student t random variable with
k degrees of freedom. (These intersection points determine the criticalvalues
for a t-test for scale-mixture errors proposed by Sz´ekely [260].)
11.5 Write a function to solve the equation
(cid:6) (cid:7) (cid:8)
2?(k) c k?1 u2 ?k/2
(cid:2) 2 1+ du
?(k?1)?( k?1) k?1
2 0
(cid:6) (cid:7) (cid:8)
2?(k+1) c k u2 ?(k+1)/2
= ? 2 1+ du
?k?( k ) k
2 0
for a, where (cid:21)
a2k
ck =
k+1?a2
.
Compare the solutions with the points A(k) in Exercise 11.4.
11.6 Write a function to compute the cdf of the Cauchy distribution, which has
density
1
, ??<x<?,
??(1+[(x??)/?]2)
where? >0. CompareyourresultstotheresultsfromtheRfunctionpcauchy.
(Also see the source code in pcauchy.c.)
11.7 Use the simplex algorithm to solve the following problem.
Minimize 4x+2y+9z subject to
2x+y+z ?2
x?y+3z ?3
x?0, y ?0, z ?0.
11.8 Inthe Morragame,thesetofoptimalstrategiesarenotchangedifaconstant
is subtracted from every entry of the payoff matrix, or a positive constant
is multiplied times every entry of the payoff matrix. However, the simplex
algorithm may terminate at a different basic feasible point (also optimal).
Compute B <- A + 2, find the solution of gameB, and verify that it is one
of the extreme points (11.12)–(11.15) of the original game A. Also find the
value of game A and game B.

| Appendix |     |     | A   |     |     |     |     |     |     |
| -------- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
Notation
Selectednotationandabbreviationsusedthroughoutthetextaresummarized
| here.  | Notation               | that is specific | to  | a particular | chapter | is      | not included. |               |       |
| ------ | ---------------------- | ---------------- | --- | ------------ | ------- | ------- | ------------- | ------------- | ----- |
| Symbol | Description            |                  |     |              |         |         |               |               |       |
| E[X]   | Expectedvalueoftheran- |                  |     |              | ??1     | Inverse | cdf           | of the        | stan- |
|        | dom                    | variable X       |     |              |         | dard    | normal        | distribution: |       |
??1(?)=z
| I(A) | Indicator | function | on     | the |     |       |                 | ??(z)=? |     |
| ---- | --------- | -------- | ------ | --- | --- | ----- | --------------- | ------- | --- |
|      | set A:    | I(x) =   | 1 if x | ? A | D   |       |                 |         |     |
|      |           |          |        |     | =   | equal | in distribution |         |     |
x?/
|      | and        | I(x)=0 if    | A      |      | .   |                  |         |              |          |
| ---- | ---------- | ------------ | ------ | ---- | --- | ---------------- | ------- | ------------ | -------- |
|      |            |              |        |      | =   | is approximately |         |              | equal to |
| Id   | The        | d×d identity | matrix |      |     |                  |         |              |          |
|      |            |              |        |      | X ? | X                | has the | distribution |          |
| logx | Natural    | logarithm    | of     | x    |     |                  |         |              | ?.       |
|      |            |              |        |      |     | named            | on      | right of     |          |
| P    | Transition | matrix       |        | of a |     |                  |         |              |          |
i?id
|     | Markov | chain           |     |       |     | Variables |          | on           | the left |
| --- | ------ | --------------- | --- | ----- | --- | --------- | -------- | ------------ | -------- |
| R   |        |                 |     |       |     | are       | iid from | distribution |          |
|     | The    | one dimensional |     | field |     |           |          |              |          |
|     |        |                 |     |       |     | named     | on       | the right.   |          |
of real numbers
| Rd  |     |     |     |     | (cid:16)x(cid:16) | Euclidean |     | norm | of x |
| --- | --- | --- | --- | --- | ----------------- | --------- | --- | ---- | ---- |
Thed-dimensionalrealco-
|A|
|      | ordinate              | space |     |     |     | Determinant |     | of matrix | A   |
| ---- | --------------------- | ----- | --- | --- | --- | ----------- | --- | --------- | --- |
| ?(·) | Completegammafunction |       |     |     | AT  | Transpose   |     | of A      |     |
?(·)
|     | cdfofthestandardnormal |     |     |     | X   | Sample | mean  | or  | vector of |
| --- | ---------------------- | --- | --- | --- | --- | ------ | ----- | --- | --------- |
|     | distribution           |     |     |     |     | sample | means |     |           |
355

| 356 |     |     | Statistical |     | Computing | with R |     |
| --- | --- | --- | ----------- | --- | --------- | ------ | --- |
Abbreviations
| ASL       | achieved                                                   |                           | significance      | level        |             |              |     |
| --------- | ---------------------------------------------------------- | ------------------------- | ----------------- | ------------ | ----------- | ------------ | --- |
| ASH       | average                                                    |                           | shifted histogram |              | (density    | estimate)    |     |
| BVN       | bivariate                                                  |                           | normal            |              |             |              |     |
| cdf       | cumulative                                                 |                           | distribution      |              | function    |              |     |
| dCor      | distance                                                   |                           | correlation       |              |             |              |     |
| dCov      | distance                                                   |                           | covariance        |              |             |              |     |
| ecdf, edf | empirical                                                  |                           | cumulative        | distribution |             | function     |     |
| GUI       | graphical                                                  |                           | user interface    |              |             |              |     |
| iid       | independent                                                |                           | and               | identically  | distributed |              |     |
| IMSE      | integrated                                                 |                           | mean              | squared      | error       |              |     |
| LRT       | likelihood                                                 |                           | ratio test        |              |             |              |     |
| M-H       | Metropolis-Hastings                                        |                           |                   |              |             |              |     |
| MC        | Monte                                                      | Carlo                     |                   |              |             |              |     |
| MCMC      | Markov                                                     |                           | Chain Monte       | Carlo        |             |              |     |
| MISE      | mean                                                       | integrated                |                   | squared      | error       |              |     |
| MLE       | maximum                                                    |                           | likelihood        | estimator    | or          | estimate     |     |
| MSE       | mean                                                       | squared                   | error             |              |             |              |     |
| MVN       | multivariate                                               |                           | normal            |              |             |              |     |
| N(µ,?2)   | Normal                                                     |                           | distribution      | with         | mean µ      | and variance | ?2  |
| Nd(µ,?)   | d-dimensionalmultivariatenormaldistributionwithmeanvectorµ |                           |                   |              |             |              |     |
|           | and                                                        | variance-covariancematrix |                   |              | ?           |              |     |
?2(?)
|         | Chi-squared |     | distribution        |      | with ? degrees | of      | freedom |
| ------- | ----------- | --- | ------------------- | ---- | -------------- | ------- | ------- |
| Wd(?,n) | Wishart     |     | distribution        | with | parameters     | (?,n,d) |         |
| se      | standard    |     | error               |      |                |         |         |
| svd     | singular    |     | value decomposition |      |                |         |         |

Appendix B
Working with Data Frames and
Arrays
B.1 Resampling and Data Partitioning
B.1.1 Using the boot function
Bootstrap is implemented in the boot function (boot package [34]), which
provides functions and arguments for the book [63]. In ordinary bootstrap,
the samples are selected with replacement. The basic syntax for ordinary
bootstrap is
boot(data, statistic, R)
wheredataistheobservedsampleandRisthenumberofbootstrapreplicates.
The default is sim = "ordinary", the ordinary bootstrap (sampling with
replacement).
Thesecondargument(statistic)isafunction,orthenameofafunction,
which calculates the statistic to be replicated. Suppose we call this function
f. The boot function generates the random indices i = (i
1
,...,in) for each
bootstrap replicate, and passes to the function f a copy of the data and the
index vectori. The function f then computes the statistic ?ˆ(b) corresponding
to the resampled observations. Example B.1 discusses how to extract the
samples for the calculations inside f.
Example B.1 (Extracting a bootstrap sample using an index vector)
We have seen that the sample function can be used to sample from a vector
with replacement. Equivalently, if x is a vector of length n, we can sample
with replacement from the vector of indices 1:n, and use the resulting value
toextractthe elementsof x. Noticethatthetwomethods belowgeneratethe
same samples.
357

358 Statistical Computing with R
> set.seed(123)
> sample(letters[1:10], size = 10, replace = TRUE)
[1] "c" "h" "e" "i" "j" "a" "f" "i" "f" "e"
> set.seed(123)
> i <- sample(1:10, size = 10, replace = TRUE)
> letters[i]
[1] "c" "h" "e" "i" "j" "a" "f" "i" "f" "e"
Similarly, the [ ] operator can be used to extract bootstrap samples from
data frames and matrices using x[i, ].
> x
[,1] [,2] [,3] [,4]
[1,] 16 14 17 12
[2,] 14 13 16 14
[3,] 13 13 14 11
[4,] 19 11 15 11
[5,] 14 10 8 11
> i
[1] 1 3 3 2 1
> x[i, ]
[,1] [,2] [,3] [,4]
[1,] 16 14 17 12
[2,] 13 13 14 11
[3,] 13 13 14 11
[4,] 14 13 16 14
[5,] 16 14 17 12
Thebootfunctionwillpassacopyoftheobservedsamplexandthebth index
vector i; the user’s function f (statistic)should compute the test statistic
on x[i, ] or x[i]. For example, if x is a bivariate sample, and the statistic
to replicate is correlation, then the function f can be written as follows.
f <- function(x, i) {
cor(x[i, 1], x[i, 2])
}
For a resampling experiment, it is helpful to code the calculations for the
statistic in a function like f above, whether or not the boot function will be
used to run the bootstrap. (cid:5)
B.1.2 Sampling without replacement
The boot function can also be applied in situations where the resam-
pling should be without replacement. For example, in permutation tests,
the method of resampling should be sim = "permutation".

Working with Data Frames and Arrays 359
If boot is not used, then it is necessary to generate for each replicate a
permutation of the sample observations. To obtain a permutation of the
sample observations in a data frame or matrix x, use x[i, ], where i is a
permutation of the indices of the sample elements. A permutation of the
integers 1:n is generated by sample(1:n).
Insituationslikethejackknifeandcross-validation,itismoreconvenientto
specify what should not be extracted. To specify which elements to exclude,
use the [ ] operator with a negative argument. For example, to extract all
but row i of a matrix A, use A[-i, ]. In general, i can be a vector and
A[-i, ] extracts a submatrix from A that excludes the rows indexed by i.
Example B.2 (Extracting rows from a matrix)
> A <- matrix(1:25, 5, 5)
> A[-(2:3), ]
[,1] [,2] [,3] [,4] [,5]
[1,] 1 6 11 16 21
[2,] 4 9 14 19 24
[3,] 5 10 15 20 25
> A[-(2:3), 4]
[1] 16 19 20
In the last line, notice that the result has been converted to a vector. To
extract the 3×1 matrix use as.matrix(A[-(2:3), 4]). (cid:5)
A random sample of size k or n?k can be selected without replacement
from a sample x of size n by
i <- sample(1:n, size = k)}
x1 <- x[i, ]}
x2 <- x[-i, ]}
Then { x1, x2 } form a partition of the original sample x.
Some exact tests require that all permutations of a sample be generated.
The permutations function in package e1071 [72] generates a matrix con-
taining all n! permutations of an index set 1:n. Each row of the returned
matrix is a permutation of 1:n.
To generate random two-way contingency tables with given marginals see
the function r2dtable.

| 360            |             |             | Statistical | Computing        |               | with      | R                        |            |           |
| -------------- | ----------- | ----------- | ----------- | ---------------- | ------------- | --------- | ------------------------ | ---------- | --------- |
| B.2            | Subsetting  |             | and         | Reshaping        |               | Data      |                          |            |           |
| When           | workingwith |             | realdata,it | is               | often the     | case that | the                      | formator   | layout    |
| of the data    | does        | not         | match       | what is required |               | by the    | methods                  | one would  | like      |
| to apply,      | there       | are missing |             | values, or       | other issues. | R         | providesseveralutilities |            |           |
| for reshaping  |             | a dataset.  | The         | following        | simple        | examples  |                          | illustrate | some of   |
| the operations |             | that are    | possible,   | such             | as merging,   |           | subsetting               | or         | reshaping |
| data. These    |             | operations  | can         | be very          | complicated   | and       | difficult                | in         | practice. |
Refertothedocumentationforeachoftheindividualtopicsformoredetailed
| explanations      | and    | examples. |               |              |       |            |           |            |          |
| ----------------- | ------ | --------- | ------------- | ------------ | ----- | ---------- | --------- | ---------- | -------- |
| The examples      |        | that      | follow        | are provided | for   | convenient | reference |            | on a few |
| special           | topics | only, and | readers       | should       | refer | to one     | of the    | references | for a    |
| good introduction |        | to        | data analysis | using        | R,    | such as    | Dalgaard  | [62] or    | Verzani  |
[280].
| B.2.1                                                       | Subsetting    |              | Data       |                  |            |              |           |             |           |
| ----------------------------------------------------------- | ------------- | ------------ | ---------- | ---------------- | ---------- | ------------ | --------- | ----------- | --------- |
| Subsets                                                     | of data       | frames       | can        | be extracted     | using      | the          | operators | $, [[       | ]], and   |
| array indexing                                              |               | [ ], as      | shown      | above.           | The subset | function     |           | provides    | another   |
| approach                                                    | to subsetting |              | data.      | The subset       | function   |              | expects   | the name    | of the    |
| data set,                                                   | the condition |              | satisfied  | (subset)by       |            | the desired  | subset,   | and/or      | a list    |
| of variables                                                | (select).     |              |            |                  |            |              |           |             |           |
| Example                                                     | B.3           | (Subsetting  |            | data frames)     |            |              |           |             |           |
| Means                                                       | and summary   |              | statistics | computed         | for        | the iris     | data      | in Examples | 1.1       |
| and 1.4                                                     | can also      | be computed  |            | as follows.      | The        | first subset |           | uses the    | condition |
| thatthespeciesisversicolorandselectsthevariablepetallength. |               |              |            |                  |            |              |           | Thesecond   |           |
| subset selects                                              |               | sepal length | and        | width            | without    | restricting  | species.  |             |           |
| # versicolor                                                |               | petal        | length     |                  |            |              |           |             |           |
| y <-                                                        | subset(iris,  |              | Species    | == "versicolor", |            |              |           |             |           |
|                                                             |               | select       | =          | Petal.Length)    |            |              |           |             |           |
summary(y)
Petal.Length
| Min. | :3.00 |     |     |     |     |     |     |     |     |
| ---- | ----- | --- | --- | --- | --- | --- | --- | --- | --- |
1st Qu.:4.00
| Median | :4.35 |     |     |     |     |     |     |     |     |
| ------ | ----- | --- | --- | --- | --- | --- | --- | --- | --- |
| Mean   | :4.26 |     |     |     |     |     |     |     |     |
3rd Qu.:4.60
| Max. | :5.10 |     |     |     |     |     |     |     |     |
| ---- | ----- | --- | --- | --- | --- | --- | --- | --- | --- |

|         | Working      |             | with Data         | Frames | and Arrays    | 361 |
| ------- | ------------ | ----------- | ----------------- | ------ | ------------- | --- |
| # sepal | width,       | all species |                   |        |               |     |
| y <-    | subset(iris, | select      | = c(Sepal.Length, |        | Sepal.Width)) |     |
mean(y)
| Sepal.Length |     | Sepal.Width |     |     |     |     |
| ------------ | --- | ----------- | --- | --- | --- | --- |
| 5.843333     |     | 3.057333    |     |     |     |     |
(cid:5)
| B.2.2 Stacking/Unstacking |     |     |     | Data |     |     |
| ------------------------- | --- | --- | --- | ---- | --- | --- |
Adataframeorlistcanbestackedorunstackedusingthestack(unstack)
function.
| Example | B.4 (Unstacking |     | data) |     |     |     |
| ------- | --------------- | --- | ----- | --- | --- | --- |
TheInsectSpraysdataframecontainstwovariables,count(aninteger)and
| spray(afactor). | Theformatisstacked. |     |     | Thefirstfewobservationsareshown |     |     |
| --------------- | ------------------- | --- | --- | ------------------------------- | --- | --- |
below.
> attach(InsectSprays)
> InsectSprays
| count | spray |     |     |     |     |     |
| ----- | ----- | --- | --- | --- | --- | --- |
| 1     | 10 A  |     |     |     |     |     |
| 2     | 7 A   |     |     |     |     |     |
| 3     | 20 A  |     |     |     |     |     |
| 4     | 14 A  |     |     |     |     |     |
| 5     | 14 A  |     |     |     |     |     |
| 6     | 12 A  |     |     |     |     |     |
. . .
| The data         | can be unstacked |       | by the default | formula  | unstack(InsectSprays), |     |
| ---------------- | ---------------- | ----- | -------------- | -------- | ---------------------- | --- |
| or by explicitly | specifying       |       | the formula    | as shown | below.                 |     |
| > unstack(count, |                  | count | ~ spray)       |          |                        |     |
| A                | B C D            | E F   |                |          |                        |     |
| 1 10             | 11 0 3           | 3 11  |                |          |                        |     |
| 2 7              | 17 1 5           | 5 9   |                |          |                        |     |
| 3 20             | 21 7 12          | 3 15  |                |          |                        |     |
| 4 14             | 11 2 6           | 5 22  |                |          |                        |     |
| 5 14             | 16 3 4           | 3 15  |                |          |                        |     |
| 6 12             | 14 1 3           | 6 16  |                |          |                        |     |
| 7 10             | 17 2 5           | 1 13  |                |          |                        |     |
| 8 23             | 17 1 5           | 1 10  |                |          |                        |     |
| 9 17             | 19 3 5           | 3 26  |                |          |                        |     |
| 10 20            | 21 0 5           | 2 26  |                |          |                        |     |
| 11 14            | 7 1 2            | 6 24  |                |          |                        |     |
| 12 13            | 13 4 4           | 4 13  |                |          |                        |     |

362 Statistical Computing with R
If the result is stored in an object u, then the unstacking could be reversed
by stack(u). In the result of stack(u), the counts would then be labeled
“values”and the spray (indices) will be labeled “ind”. (cid:5)
R note B.1 The formula count~spray represents the linear model where
theresponseiscountandthesinglepredictoristhefactorspray. Anintercept
term is included by default. The default model formula associated with a data
frame is supplied by formula. For example, the default formula associated
with the iris data is the following one, which might not be what is expected.
> formula(iris)
Sepal.Length ~ Sepal.Width + Petal.Length + Petal.Width + Species
B.2.3 Merging Data Frames
Two data frames can be merged by common variable (column) names or
common row names, using the merge function.
Example B.5 (Merge by ID)
In this example, we have created two sets of scores, data1 and data2. The
commonvariableistheIDnumberinthefirstcolumn. Thisexampleistypical
ofrepeatedmeasurementdata. We wishto mergethe two scoresinto asingle
data frame, by ID. The ID is the first variable in data1and the first variable
indata2,soby=c(1,1)specifiesthatthe mergewillmatchbyID.Inthe first
versionbelow, only the observationswith commonID numbers,labeled “V1”
will be retained in the new data set. This corresponds to a listwise deletion
of any subjects with missing values.
data1
[,1] [,2]
[1,] 1 9
[2,] 2 12
[3,] 3 9
[4,] 4 13
[5,] 5 13
data2
[,1] [,2]
[1,] 3 6
[2,] 4 10
[3,] 5 13
[4,] 6 10
[5,] 7 10

Working with Data Frames and Arrays 363
Now merge the data sets. By default, only the complete casesare included in
the result. In the second version below, all observations are retained in the
new data set. Missing scores are assigned the missing value NA.
The syntax is
merge(x, y) #default
merge(x, y, by = intersect(names(x), names(y)),
by.x = by, by.y = by, all = FALSE, ...)
where ... indicates more arguments (see the help topic).
# keep only the common ID’s
merge(data1, data2, by=c(1,1))
V1 V2.x V2.y
1 3 9 6
2 4 13 10
3 5 13 13
#keep all observations
merge(data1, data2, by=c(1,1), all=TRUE)
V1 V2.x V2.y
1 1 9 NA
2 2 12 NA
3 3 9 6
4 4 13 10
5 5 13 13
6 6 NA 10
7 7 NA 10
(cid:5)
B.2.4 Reshaping Data
Suppose we need to reshape Example B.5 data into a “long”format, intro-
ducing a time variable. The reshapefunction is providedto convertbetween
the “wide” and “long” formats. The syntax is
reshape(data, varying, v.names, timevar, idvar, ids,
times, drop, direction, new.row.names,
split, include))
and all of the parameters except data and direction have default values.
To keep all observations use all=TRUE.The repeated measurements or time-
varyingmeasurementsarespecifiedby varying. The directionis “wide”or
“long.”

| 364        |                   |              |        | Statistical Computing |           | with    | R   |     |     |
| ---------- | ----------------- | ------------ | ------ | --------------------- | --------- | ------- | --- | --- | --- |
| Example    | B.6               | (Reshape)    |        |                       |           |         |     |     |     |
| Convert    | Example           | B.5          | data   | from “wide”           | to “long” | format. |     |     |     |
| #keep      | all               | observations |        |                       |           |         |     |     |     |
| a <-       | merge(data1,      |              | data2, | by=c(1,1),            | all=TRUE) |         |     |     |     |
| reshape(a, |                   | idvar="ID",  |        | varying=c(2,3),       |           |         |     |     |     |
|            | direction="long", |              |        | v.names="Scores")     |           |         |     |     |     |
|            | V1 time           | Scores       | ID     |                       |           |         |     |     |     |
| 1.1        | 1                 | 1            | 9      | 1                     |           |         |     |     |     |
| 2.1        | 2                 | 1            | 12     | 2                     |           |         |     |     |     |
| 3.1        | 3                 | 1            | 9      | 3                     |           |         |     |     |     |
| 4.1        | 4                 | 1            | 13     | 4                     |           |         |     |     |     |
| 5.1        | 5                 | 1            | 13     | 5                     |           |         |     |     |     |
| 6.1        | 6                 | 1            | NA     | 6                     |           |         |     |     |     |
| 7.1        | 7                 | 1            | NA     | 7                     |           |         |     |     |     |
| 1.2        | 1                 | 2            | NA     | 1                     |           |         |     |     |     |
| 2.2        | 2                 | 2            | NA     | 2                     |           |         |     |     |     |
| 3.2        | 3                 | 2            | 6      | 3                     |           |         |     |     |     |
| 4.2        | 4                 | 2            | 10     | 4                     |           |         |     |     |     |
| 5.2        | 5                 | 2            | 13     | 5                     |           |         |     |     |     |
| 6.2        | 6                 | 2            | 10     | 6                     |           |         |     |     |     |
| 7.2        | 7                 | 2            | 10     | 7                     |           |         |     |     |     |
(cid:5)
| B.3                | Data   | Entry | and       | Data Analysis |        |       |             |        |      |
| ------------------ | ------ | ----- | --------- | ------------- | ------ | ----- | ----------- | ------ | ---- |
| B.3.1              | Manual |       | Data      | Entry         |        |       |             |        |      |
| A spreadsheet-like |        |       | interface | to create     | a data | frame | is provided | in the | edit |
function.
| mydata                                               | <-       | edit(data.frame()) |                        |                          |           |                            |               |           |       |
| ---------------------------------------------------- | -------- | ------------------ | ---------------------- | ------------------------ | --------- | -------------------------- | ------------- | --------- | ----- |
| Thiscommandopensaspreadsheet-likeeditorfordataentry. |          |                    |                        |                          |           |                            | Whentheeditor |           |       |
| is closed,                                           | a data   | frame              | mydata                 | is created.              | Then      | mydata                     | can           | be edited | by    |
| edit(mydata).                                        |          | Itis               | probablyeasiertoentera |                          |           | largedatasetinaspreadsheet |               |           |       |
| and read                                             | it into  | a data             | frame                  | via read.table,described |           |                            | below.        |           |       |
| B.3.2                                                | Recoding |                    | Missing                | Values                   |           |                            |               |           |       |
| The first                                            | step     | in                 | recoding               | missing values           | is to     | find                       | the missing   | values.   | The   |
| function                                             | is.na    | tests              | for missing            | values,                  | returning | logical                    | values.       | The       | which |
| function                                             | returns  | the                | indices                | of a logical             | vector    | that                       | are TRUE.     | Applying  |       |

Working with Data Frames and Arrays 365
which to the result of is.na gives a vector containing the indices of the
missing values. Then if i contains the indices of the missing data of a vector
x, recoding NA to 0, for example, is as simple as x[i] <- 0.
Example B.7 (Recode)
With the repeated measures data in Example B.6, recode the missing scores
to 0. The function is.na tests for missing values. Extract the row indices of
themissingscoresusingthewhichfunction. Below,whichreturnstheindices
6,7,8,9, indicating that scores with those subscripts are missing.
#store the previous result into b
b <- reshape(a, idvar="ID", varying=c(2,3),
direction="long", v.names="Scores")
i <- which(is.na(b$Scores)) #these are missing
Now the indices stored in i are 6, 7, 8, 9, and we replace the corresponding
NA’s with 0.
b$Scores[i] <- 0 #replace NA with 0
b
V1 time Scores ID
1.1 1 1 9 1
2.1 2 1 12 2
3.1 3 1 9 3
4.1 4 1 13 4
5.1 5 1 13 5
6.1 6 1 0 6
7.1 7 1 0 7
1.2 1 2 0 1
2.2 2 2 0 2
3.2 3 2 6 3
4.2 4 2 10 4
5.2 5 2 13 5
6.2 6 2 10 6
7.2 7 2 10 7
The which function can also be used to extract array indices, by setting
arr.ind=TRUE.From the result of the second version of the merge operation
in Example B.5, we can extract the array indices of the missing values as
follows.
m <- merge(data1, data2, by=c(1,1), all=TRUE)
i <- which(is.na(m), arr.ind=TRUE) #these are missing
>i
row col
[1,] 6 2
[2,] 7 2
[3,] 1 3
[4,] 2 3

366 Statistical Computing with R
(cid:5)
B.3.3 Reading and Converting Dates
Atimeseriesforfinancialdatausuallyhasacalendardatecorrespondingto
eachobservation. Inthissectionwediscusssomebasicmethodsforimporting
files with dates, converting dates to useful formats, and extracting the day,
month, and year. Date arithmetic and formatting is a complicated subject,
however, and depends in part on the locale. Refer to the R manual [217] for
thorough documentation.
Our first example illustrates how to convert a string format date from
“mm/dd/yyyy” format into “yyyymmdd”. See the help topics for as.Date,
format.Date,and strptimefor more details and other examples.
Example B.8 (Date formats)
Convertthestringrepresentationofadateintoadateobject,anddisplaythe
result in several formats. The default format is “yyyy-mm-dd”. The date is
printed in four different formats below.
d <- "3/27/1995"
thedate <- as.Date(d, "%m/%d/%Y")
print(thedate)
[1] "1995-03-27"
print(format(thedate, "%Y%m%d"))
[1] "19950327"
print(format(thedate, "%B %d, %Y"))
[1] "March 27, 1995"
print(format(thedate, "%y-%b-%d"))
[1] "95-Mar-27"
(cid:5)
To extract year, month, day, or other components from the date or time,
we can use the POSIXlt date-time class (?DateTimeClasses).
Example B.9 (Date-time class)
Continuing with the previous example, use the POSIXlt date-time class to
extract the year, month, and day from the date 1995-03-27. The commands
and results are below. Notice that the months Jan., ..., Dec. are numbered
0,1,...,11, and year is years since 1900.
> pdate <- as.POSIXlt(thedate)
> print(pdate$year)
[1] 95
> print(pdate$mon)

Working with Data Frames and Arrays 367
[1] 2
> print(pdate$mday)
[1] 27
Type ?DateTimeClassesto see the documentation on the date-time objects
POSIXlt and POSIXct. (cid:5)
B.3.4 Importing/exporting .csv files
Data is often supplied in comma-separated-values (.csv) format, which is
a text file that separates data with special text characters called delimiters.
Files in .csv format can be opened in most spreadsheet applications. Spread-
sheet data should be saved in .csv format before importing into R. In a .csv
file, the dates are likely to be given as strings, delimited by double quotation
marks.
Example B.10 (Importing/exporting .csv files)
This example illustrates how to export the contents of a data frame to a .csv
file, and how to import the data from a .csv file into an R data frame.
#create a data frame
dates <- c("3/27/1995", "4/3/1995",
"4/10/1995", "4/18/1995")
prices <- c(11.1, 7.9, 1.9, 7.3)
d <- data.frame(dates=dates, prices=prices)
#create the .csv file
filename <- "/Rfiles/temp.csv"
write.table(d, file = filename, sep = ",",
row.names = FALSE)
Thenewfile“temp.csv”canbeopenedinmostspreadsheets. Whendisplayed
inatexteditor(notaspreadsheet),thefile“temp.csv”containsthefollowing
lines (without the leading spaces).
"dates","prices"
"3/27/1995",11.1
"4/3/1995",7.9
"4/10/1995",1.9
"4/18/1995",7.3
Most.csv formatfiles canbe readusing read.table. In addition there are
functions read.csv and read.csv2designed for .csv files.
#read the .csv file
read.table(file = filename, sep = ",", header = TRUE)
read.csv(file = filename) #same thing

368 Statistical Computing with R
dates prices
1 3/27/1995 11.1
2 4/3/1995 7.9
3 4/10/1995 1.9
4 4/18/1995 7.3
See Example B.8 for converting the character representation of the dates to
date objects. (cid:5)
B.3.5 Examples of data entry and analysis
Although it is not the subject of this text, users new to R generally need
to know how to analyze typical textbook examples with small data sets. For
MonteCarlostudies,onealsomayneedtoextractcertainresultsfromafitted
model. We conclude this section with a few simple examples of this type.
Stacked data entry
Example B.11 (One-way ANOVA)
Weight measurements are collected for two treatment groups of subjects and
a control group. This is a completely randomized design, and we want to
obtain the one-wayAnalysis of Variance (ANOVA). The layoutof the data is
the one-way layout, and for ANOVA we will need stacked data. The factor
has three levels. Here we create a vector for the response variable (weight)
and a vector for the group variable, encoding it as a factor. See Example
B.13 for another approachto stacking the data for the one-way layout.
# One-way ANOVA example
# Completely randomized design
ctl <- c(4.17,5.58,5.18,6.11,4.50,4.61,5.17,4.53,5.33,5.14)
trt1 <- c(4.81,4.17,4.41,3.59,5.87,3.83,6.03,4.89,4.32,4.69)
trt2 <- c(5.19,3.33,3.20,3.13,6.46,5.36,6.95,4.19,3.16,4.95)
group <- factor(rep(1:3, each=10)) #factor
weight <- c(ctl, trt1, trt2) #response
a <- lm(weight ~ group)
Note that encoding the group variable as a factor is important. If group
is not a factor, but simply a vector of integers, then lm will fit a regression
model. The output for anova is the ANOVA table. More detailed output is
available with the summarymethod.

Working with Data Frames and Arrays 369
> anova(a) #brief summary
Analysis of Variance Table
Response: weight
Df Sum Sq Mean Sq F value Pr(>F)
group 2 1.1200 0.5600 0.5656 0.5746
Residuals 27 26.7344 0.9902
> summary(a) #more detailed summary
Call:
lm(formula = weight ~ group)
Residuals:
Min 1Q Median 3Q Max
-1.4620 -0.5245 0.0685 0.5005 2.3580
Coefficients:
Estimate Std. Error t value Pr(>|t|)
(Intercept) 5.0320 0.3147 15.991 2.71e-15 ***
group2 -0.3710 0.4450 -0.834 0.412
group3 -0.4400 0.4450 -0.989 0.332
---
Signif. codes: 0 ’***’ 0.001 ’**’ 0.01 ’*’ 0.05 ’.’ 0.1 ’ ’ 1
Residual standard error: 0.9951 on 27 degrees of freedom
Multiple R-Squared: 0.04021, Adjusted R-squared: -0.03089
F-statistic: 0.5656 on 2 and 27 DF, p-value: 0.5746
(cid:5)
Extracting statistics and estimates from fitted models
In Monte Carlo studies, we often want to extract the p-values, F statistics,
orR-squaredvaluesfromtheanalysis,ratherthanprintasummaryofit. The
following example shows how to extract various results from an anovaobject
or the summary.
Example B.12 (Extract p-values and statistics from ANOVA)
To extractp-values, Fstatistics andotherinformationfromthe anovaobject
orresultof summary,weneedthenamesofthesevalues. Thentheinformation
canbeextractedbynameorbypositionusingsquarebrackets. (Thisexample
continues from the analysis in Example B.11.)
A <- anova(a)
names(A)
[1] "Df" "Sum Sq" "Mean Sq" "F value" "Pr(>F)"
Then,supposeweneedtheFstatistic. Itisavectoroflength2,corresponding
tothetworowsintheANOVAtable. TheFstatisticineachrowcorresponds
to the factor in the same row.

370 Statistical Computing with R
> A$"F value"
[1] 0.5655666 NA
> A$"F value"[1]
[1] 0.5655666
Similarly, we can use names to find the names of the values in the object
returned by the summary method.
B <- summary(a)
names(B)
[1] "call" "terms" "residuals" "coefficients" "aliased"
[6] "sigma" "df" "r.squared" "adj.r.squared" "fstatistic"
[11] "cov.unscaled"
NowsupposethatwewanttoextracttheR-squared,theMSE,andthedegrees
of freedom for error from this model.
> B$sigma
[1] 0.9950695
> B$r.squared
[1] 0.0402093
> B$df[2]
[1] 27
(cid:5)
Create data frame in stacked layout
The next example shows an alternate method for entering data in the one-
way layout. In this case, we create a data frame and use the stack function.
Example B.13 (Stacked data entry)
The small data set in this example is given in Case Study 12.3.1 of Larsen
and Marx [170]. The factor (type of antibiotic) has five levels. The response
variable measures the binding of the drug to serum proteins. The layout of
the data frame must be stacked for the ANOVA.
P <- c(29.6, 24.3, 28.5, 32)
T <- c(27.3, 32.6, 30.8, 34.8)
S <- c(5.8, 6.2, 11, 8.3)
E <- c(21.6, 17.4, 18.3, 19)
C <- c(29.2, 32.8, 25, 24.2)
#glue the columns together in a data frame
x <- data.frame(P, T, S, E, C)
#now stack the data for ANOVA
y <- stack(x)
names(y) <- c("Binding", "Antibiotic")

Working with Data Frames and Arrays 371
The first few rows of the stacked data in y are
Binding Antibiotic
1 29.6 P
2 24.3 P
3 28.5 P
4 32.0 P
5 27.3 T
6 32.6 T
. . .
and this data is in the one-waylayoutfor ANOVA. Now y is a data frame, so
there is a default formula associated with it.
> #check the default formula
> print(formula(y)) #default formula is right one
Binding ~ Antibiotic
As the default formula is the same model that we want to fit, lm can be
applied without specifying the formula.
> lm(y)
Call:
lm(formula = y)
Coefficients:
(Intercept) AntibioticE AntibioticP AntibioticS AntibioticT
27.800 -8.725 0.800 -19.975 3.575
> anova(lm(y))
Analysis of Variance Table
Response: Binding
Df Sum Sq Mean Sq F value Pr(>F)
Antibiotic 4 1480.82 370.21 40.885 6.74e-08 ***
Residuals 15 135.82 9.05
---
Signif. codes: 0 ’***’ 0.001 ’**’ 0.01 ’*’ 0.05 ’.’ 0.1 ’ ’ 1
Statistics, p-values, and estimates can be extracted from the fitted model in
the same way as shown in Example B.12. (cid:5)
Example B.14 (Two-way ANOVA)
The leafshape (DAAG) [185] data is already in stacked format, with two
factors locationand leaf architecture arch.
> data(leafshape, package = "DAAG")
> anova(lm(petiole ~ location * arch))

372 Statistical Computing with R
Analysis of Variance Table
Response: petiole
Df Sum Sq Mean Sq F value Pr(>F)
location 5 209.9 42.0 1.8107 0.1108
arch 1 1098.5 1098.5 47.3786 3.983e-11 ***
location:arch 5 232.6 46.5 2.0066 0.0779 .
Residuals 274 6352.8 23.2
---
Signif. codes: 0 ’***’ 0.001 ’**’ 0.01 ’*’ 0.05 ’.’ 0.1 ’ ’ 1
Use the formula petiole~location+archto fit the model without the inter-
action term. (cid:5)
Example B.15 (Multiple comparisons)
In Example B.13, one canfollow up with a multiple comparisonprocedure to
decide which means are significantly different. One such method is Tukey’s
procedure. The critical value of the studentized range statistic at ? = 0.05
can be obtained by
qtukey(p = .95, nmeans = 5, df = 15)
[1] 4.366985
For TukeyHSDuse aov to fit the model rather than lm.
#alternately: Tukey Honest Significant Difference
a <- aov(formula(y), data = y)
TukeyHSD(a, conf.level=.95)
Tukey multiple comparisons of means
95% family-wise confidence level
Fit: aov(formula = formula(y), data = y)
$Antibiotic
diff lwr upr p adj
E-C -8.725 -15.295401 -2.154599 0.0071611
P-C 0.800 -5.770401 7.370401 0.9952758
S-C -19.975 -26.545401 -13.404599 0.0000010
T-C 3.575 -2.995401 10.145401 0.4737713
P-E 9.525 2.954599 16.095401 0.0034588
S-E -11.250 -17.820401 -4.679599 0.0007429
T-E 12.300 5.729599 18.870401 0.0003007
S-P -20.775 -27.345401 -14.204599 0.0000006
T-P 2.775 -3.795401 9.345401 0.6928357
T-S 23.550 16.979599 30.120401 0.0000001
(cid:5)

|                 | Working         | with | Data | Frames                              | and Arrays |     | 373 |
| --------------- | --------------- | ---- | ---- | ----------------------------------- | ---------- | --- | --- |
| Example B.16    | (Regression)    |      |      |                                     |            |     |     |
| Otherexamplesof | formula(seee.g. |      |      | Example7.17)forregressionratherthan |            |     |     |
| ANOVA are       | the following.  |      |      |                                     |            |     |     |
library(DAAG)
attach(ironslag)
| # simple         | linear     | regression       | model            |        |       |     |     |
| ---------------- | ---------- | ---------------- | ---------------- | ------ | ----- | --- | --- |
| lm(magnetic      | ~          | chemical)        |                  |        |       |     |     |
| # quadratic      | regression |                  | model            |        |       |     |     |
| lm(magnetic      | ~          | chemical         | + I(chemical^2)) |        |       |     |     |
| # exponential    |            | regression       | model            |        |       |     |     |
| lm(log(magnetic) |            | ~ chemical)      |                  |        |       |     |     |
| # log-log        | model      |                  |                  |        |       |     |     |
| lm(log(magnetic) |            | ~ log(chemical)) |                  |        |       |     |     |
| # cubic          | polynomial | model            |                  |        |       |     |     |
| lm(magnetic      | ~          | poly(chemical,   |                  | degree | = 3)) |     |     |
detach(ironslag)
detach(package:DAAG)
| Inthe quadraticmodel,the |              |               | “asis”operatorI(        |               | )indicatesthattheexponen- |                |     |
| ------------------------ | ------------ | ------------- | ----------------------- | ------------- | ------------------------- | -------------- | --- |
| tiationoperatoris        | anarithmetic |               | operator,andshouldnotbe |               |                           | interpretedasa |     |
| formula operator.        | Note         | that          | poly                    | evaluates     | an orthogonalpolynomial.  |                |     |
| > cor(poly(chemical,     |              |               | 2))                     | #uncorrelated |                           |                |     |
|                          |              | 1             |                         | 2             |                           |                |     |
| 1 1.000000e+00           |              | -4.956837e-18 |                         |               |                           |                |     |
| 2 -4.956837e-18          |              | 1.000000e+00  |                         |               |                           |                |     |
| > cor(chemical,          |              | chemical^2)   |                         | #correlated   |                           |                |     |
| [1] 0.9919215            |              |               |                         |               |                           |                |     |
(cid:5)

References
| [1] M. Abramowitz                           |           | and                                 | I. A. Stegun,    |          | editors.         | Handbook              | of               | Mathematical |          |
| ------------------------------------------- | --------- | ----------------------------------- | ---------------- | -------- | ---------------- | --------------------- | ---------------- | ------------ | -------- |
| Functions                                   | with      | Formulas,                           | Graphs,          |          | and Mathematical |                       |                  | Tables.      | Dover,   |
| New                                         | York,     | 1972.                               |                  |          |                  |                       |                  |              |          |
| [2] D.AdlerandD.Murdoch.rgl:3Dvisualization |           |                                     |                  |          |                  | devicesystem(OpenGL), |                  |              |          |
| 2007.                                       | R package | version                             | 0.74.            |          |                  |                       |                  |              |          |
| [3] J. H.                                   | Ahrens    | and U.                              | Dieter. Computer |          | methods          |                       | for sampling     |              | from the |
| exponentialand                              |           | normal                              | distributions.   |          | Comm.            | ACM,                  | 15:873–882,1972. |              |          |
| [4] J. H.                                   | Ahrens    | and U.                              | Dieter.          | Sampling | from             | the                   | binomial         | and          | Poisson  |
| distributions:                              |           | Amethodwithboundedcomputationtimes. |                  |          |                  |                       |                  | Computing,   |          |
25:193–208,1980.
| [5] J. Albert.    | Bayesian   |                             | Computation        | with  | R.               | Springer,              | New         | York,       | 2007.     |
| ----------------- | ---------- | --------------------------- | ------------------ | ----- | ---------------- | ---------------------- | ----------- | ----------- | --------- |
| [6] J. H.         | Albert.    | Teaching                    | Bayesianstatistics |       | using            | sampling               |             | methods     | and       |
| MINITAB.          |            | The American                | Statistician,      |       | 47:182–191,1993. |                        |             |             |           |
| [7] P. M.         | E. Altham. | Exact                       | Bayesiananalysis   |       |                  | of a 2×2               | contingency |             | table     |
| and Fisher’s      |            | “exact”                     | significance       | test. | Journal          | of                     | the Royal   | Statistical |           |
| Society.          | Series     | B, 31:261–269,1969.         |                    |       |                  |                        |             |             |           |
| [8] T. W.         | Anderson.  | An                          | Introduction       |       | to Multivariate  |                        | Statistical |             | Analysis. |
| Wiley,            | New        | York, Second                | edition,           | 1984. |                  |                        |             |             |           |
| [9] T. W.         | Anderson   | and                         | D. A. Darling.     |       | A test           | of goodness-of-fit.    |             |             | Journal   |
| of the            | American   | Statistical                 | Association,       |       | 49:765–769,1954. |                        |             |             |           |
| [10] D.F.Andrews. |            | Plotsofhighdimensionaldata. |                    |       |                  | Biometrics,28:125–136, |             |             |           |
1972.
| [11] F. J. | Anscombe | and         | W. J. Glynn. | Distribution |                  | of  | the kurtosis |     | statistic |
| ---------- | -------- | ----------- | ------------ | ------------ | ---------------- | --- | ------------ | --- | --------- |
| b for      | normal   | statistics. | Biometrika,  |              | 70:227–234,1986. |     |              |     |           |
2
| [12] S.AryaandD.M.Mount. |                                                           |               | Approximatenearestneighborsearching. |               |     |               |     |     | In       |
| ------------------------ | --------------------------------------------------------- | ------------- | ------------------------------------ | ------------- | --- | ------------- | --- | --- | -------- |
| Proceedings              |                                                           | of the fourth | annual                               | ACM-SIAM      |     | Symposium     |     | on  | Discrete |
| Algorithms               |                                                           | (SODA 1993),  | pages                                | 271–280,1993. |     |               |     |     |          |
| [13] S. Arya,            | D.                                                        | M. Mount,     | N.                                   | S. Netanyahu, |     | R. Silverman, |     | and | A. Y.    |
| Wu.                      | Anoptimalalgorithmforapproximatenearestneighborsearching. |               |                                      |               |     |               |     |     |          |
| Journal                  | of the                                                    | ACM,          | 45:891–923,1998.                     |               |     |               |     |     |          |
375

376 References
[14] D. Asimov. The grand tour: a tool for viewing multidimensional data.
SIAM Journal on Scientific and Statistical Computing, 6(1):128–143,
1985.
[15] A. Azzalini and A. W. Bowman. A look at some data on the Old
Faithful geyser. Applied Statistics, 39:357–365,1990.
[16] L. J. Bain and M. Engelhardt. Introduction to Probability and Mathe-
matical Statistics. Duxbury Classic Series. Brooks-Cole,Pacific Grove,
CA, 1991.
[17] N.K.Bakirov,M.L.Rizzo,andG.J.Sz´ekely. Amultivariatenonpara-
metrictestofindependence. Journal of Multivariate Analysis,93:1742–
1756.
[18] J.Banks,J.Carson,B.L.Nelson,andD.Nicol. Discrete-Event System
Simulation.Prentice-Hall,UpperSaddleRiver,NJ,fourthedition,2004.
[19] P.Barbe and P.Bertail. The Weighted Bootstrap. Springer, New York,
1995.
[20] L. Baringhaus and C. Franz. On a new multivariate two-sample test.
Journal of Multivariate Analysis, 88:190–206,2004.
[21] M. S. Bartlett. On the theory of statistical regression. Proceedings of
the Royal Society of Edinburgh, 53:260–283.
[22] K. E. Basford and G. J. McLachlan. Likelihood estimation with nor-
mal mixture models. Journal of the Royal Statistical Society. Series C,
34(3):282–289,1985.
[23] M. A. Bean. Probability: The Science of Uncertainty with Applica-
tions to Investments, Insurance, and Engineering. Brooks-Cole,Pacific
Grove, CA, 2001.
[24] R. A. Becker, J. M. Chambers, and A. R. Wilks. The New S Lan-
guage: A Programming Environment for Data Analysis and Graphics.
Wadsworth & Brooks/Cole,Pacific Grove, CA, 1988.
[25] J.L.Bentley. Multidimensionalbinarysearchtreesusedforassociative
searching. Communications of the ACM, 18(9):509–517,1975.
[26] M. Berkelaar et al. lpSolve: Interface to Lp solve v. 5.5 to solve lin-
ear/integer programs, 2006. R package version 5.5.7.
[27] P.J. Bickel. A distribution free versionof the Smirnov two-sample test
in the multivariate case. Annals of Mathematical Statistics, 40:1–23.
[28] P. J. Bickel and L. Breiman. Sums of functions of nearest neighbor
distances, moment bounds, limit theorems and a goodness of fit test.
Annals of Probability, 11:185–214,1983.

References 377
[29] A. W. Bowman and A. Azzalini. sm: Smoothing methods for nonpara-
metric regression and density estimation, 2005. Ported to R by B. D.
Ripley up to version 2.0 and later versions by Adrian W. Bowman and
Adelchi Azzalini. R package version 2.1-0.
[30] A. W. Bowman, P. Hall, and D. M. Titterington. Cross-validation
in nonparametric estimation of probabilities and probability densities.
Biometrika, 71(2):341–351,1984.
[31] G. E. P. Box and M. E. Mu¨ller. A note on the generation of random
normal deviates. The Annals of Mathematical Statistics, 29:610–611,
1958.
[32] R. Brent. Algorithms for Minimization without Derivatives. Prentice-
Hall, New Jersey, 1973.
[33] S. P. Brooks, P. Dellaportas, and G. O. Roberts. An approach to di-
agnosing total variation convergence of MCMC algorithms. Journal of
Computational and Graphical Statistics, 6(3):251–265,1997.
[34] A.CantyandB.Ripley. boot: Bootstrap R (S-Plus) Functions (Canty),
2006. S original by Angelo Canty, R port by Brian Ripley. R package
version 1.2-28.
[35] O. Cappe and C. P. Robert. Markov Chain Monte Carlo: 10 years
and still running! Journal of the American Statistical Association,
95(452):1282–1286,2000.
[36] A. E. Carlin, B. P. Gelfand and A. F. M. Smith. HierarchicalBayesian
analysis of changepoint problems. Applied Statistics, 41:389–405,1992.
[37] B. P. Carlin and T. A. Louis. Bayes and Empirical Bayes Methods for
Data Analysis. Chapman and Hall/CRC, Boca Raton, FL, 2000.
[38] D.Carr.hexbin: HexagonalBinningRoutines,2006.PortedbyNicholas
Lewin-Koh and Martin Maechler. R package version 1.8.0.
[39] G. Casella and R. Berger. Statistical Inference. Duxbury Press, Bel-
mont, California, 1990.
[40] G. Casella and E. E. George. Explaining the Gibbs sampler. The
American Statistician, 46:167–174,1992.
[41] J.M. Chambers. Programming with Data: A Guide to the S Language.
Springer, New York, 1998.
[42] J. M. Chambers and T. J. Hastie. Statistical Models in S. Chapman &
Hall, London, 1992.
[43] J. M. Chambers, C. L. Mallows, and B. W. Stuck. A method for sim-
ulating stable random variables. Journal of the American Statistical
Association, 71:304–344,1976.

378 References
[44] M.-H. Chen, Q.-M. Shao, and J. G. Ibrahim. Monte Carlo Methods in
Bayesian Computation. Springer, New York, 2000.
[45] M. A. Chernick. Bootstrap Methods: A Practitioner’s Guide. Wiley,
New York, 1999.
[46] H.Chernoff. Theuseoffacestorepresentpointsink-dimensionalspace
graphically. Journal of the American Statistical Association, 68:361–
368, 1973.
[47] S. Chib and E. Greenberg. Understanding the Metropolis-Hastings al-
gorithm. The American Statistician, 49:327–335,1995.
[48] W. S. Cleveland. Visualizing Data. Summit Press, New Jersey, 1993.
[49] W. S. Cleveland. Coplots, nonparametric regression, and conditionally
parametric fits. In Multivariate Analysis and its Applications (Hong
Kong, 1992), volume24ofIMS Lecture Notes Monograph Series, pages
21–36.Inst. Math. Statist., Hayward, CA, 1994.
[50] W.S.ClevelandandR.McGill.Themanyfacesofascatterplot.Journal
of the American Statistical Association, 79(388):807–822,1984.
[51] J.-F. Coeurjolly. Simulation and identification of the fractionalBrown-
ian motion: a bibliographical and comparative study. Journal of Sta-
tistical Software, 5, 2000.
[52] D.CookandD.F.Swayne. Interactiveand DynamicGraphics for Data
Analysis: With R and GGobi. Springer, New York, 2007.
[53] G.CornuejolsandR.Tu¨tu¨ncu¨.OptimizationMethodsinFinance.Cam-
bridge University Press, Cambridge, 2007.
[54] M.K.CowlesandB.P.Carlin. MarkovChainMonteCarloconvergence
diagnostics: A comparativereview. Journal of the American Statistical
Association, 91(434):883–904,1996.
[55] D. R. Cox and N. J. H. Small. Testing multivariate normality. Bio-
metrika, 65:263–272,1978.
[56] H. Cram´er. On the composition of elementary errors. II Statistical
applications. Skandinavisk Aktuarietidskrift, 11:141–180,1928.
[57] M.J.Crawley.StatisticalComputing: AnIntroductiontoDataAnalysis
using S-Plus. Wiley, New York, 2002.
[58] R.B.D’Agostino.Testsforthenormaldistribution.InR.B.D’Agostino
and M. A. Stephens, editors, Goodness-of-Fit Techniques, pages 367–
420. Marcel Dekker, New York, 1986.
[59] R.B.D’AgostinoandE.S.Pearson.Testsford?eparturefromnormality.
empiricalresultsforthedistributionsofb and b .Biometrika,60:613–
2 1
622, 1973.

References 379
[60] R. B. D’Agostino and M. A. Stephens. Goodness-of-Fit Techniques.
Marcel Dekker, New York, 1986.
[61] D. B. Dahl. xtable: Export tables to LaTeX or HTML, 2007. With
contributions from many others. R package version 1.4-3.
[62] P. Dalgaard. Introductory Statistics with R. Springer,New York, 2002.
[63] A. C. Davison and D. V. Hinkley. Bootstrap Methods and their Appli-
cation. Cambridge University Press, Oxford, 1997.
[64] M.H.DeGrootandM.J.Schervish.ProbabilityandStatistics.Addison-
Wesley, New York, third edition, 2002.
[65] S.D´ejeanandS.Cohen. FracSim: AnRpackageto simulatemultifrac-
tional L´evy motions. Journal of Statistical Software, 14, 2005.
[66] S. D´ejean and S. Cohen. FracSim: Simulation of L´evy motions, 2005.
R package version 0.2.
[67] A. P. Dempster, N. M. Laird, and D. B. Rubin. Maximum likelihood
from incomplete data via the EM algorithm (with discussion). Journal
ofthe RoyalStatisticalSociety. Series B. Methodological, 39:1–38,1977.
[68] L. Devroye. The computer generation of Poisson random variables.
Computing, 26:197–207,1981.
[69] L. Devroye. Non-Uniform Random Variate Generation. Springer, New
York, 1986.
[70] L.Devroye.ACourseinDensityEstimation. Birkha¨user,Boston,1987.
[71] L. Devroye and L. Gyo¨rfi. Nonparametric Density Estimation: The L
1
View. John Wiley, New York, 1985.
[72] E. Dimitriadou, K. Hornik, F. Leisch, D. Meyer, and A. Weingessel.
e1071: Misc Functions of the Department of Statistics (e1071), TU
Wien, 2006. R package version 1.5-16.
[73] D. P. Doane. Aesthetic frequency classification. The American Statis-
tician, 30:181–183,1976.
[74] M. Dresher. Games of Strategy: Theory and Application. Dover, New
York, 1981.
[75] R.O.Duda,P.E.Hart,andD.G.Stork. Pattern Classification. Wiley,
New York, second edition, 2001.
[76] T. Duong. ks: Kernel smoothing, 2007. R package version 1.4.9.
[77] R. Durrett. Probability: Theory and Examples. Wadsworth Publishing
(Duxbury Press), Belmont, CA, second edition, 1996.

380 References
[78] R. Eckhardt. Stan Ulam, John von Neumann, and the Monte Carlo
method. Los Alamos Science, (15, Special Issue):131–137, 1987. With
contributions by Tony Warnock, Gary D. Doolen, and John Hendricks,
Stanislaw Ulam 1909–1984.
[79] S. Efromovich. Density estimation for the case of supersmooth mea-
surement error. Journal of the American Statistical Association,
92(438):526–535,1997.
[80] B. Efron. Bootstrapmethods: another look at the jackknife. Annals of
Statistics, 7:1–26, 1979.
[81] B.Efron. Nonparametricestimatesofstandarderror: thejackknife,the
bootstrap, and other methods. Biometrika, 68:589–599,1981.
[82] B.Efron. Nonparametricstandarderrorsandconfidenceintervals(with
discussion). Canadian Journal of Statistics, 9:139–172,1981.
[83] B. Efron. The Jackknife, the Bootstrap and Other Resampling Plans.
Society for Industrial and Applied Mathematics, Philadelphia, 1982.
[84] B.EfronandR.J.Tibshirani. An Introduction to the Bootstrap. Chap-
man & Hall/CRC, Boca Raton, FL, 1993.
[85] V.K.Epanechnikov.Non-parametricestimationofamultivariateprob-
ability density. Theory of Probability and its Applications, 14:153–158,
1969.
[86] R.L.Eubank. SplineSmoothingandNonparametricRegression. Marcel
Dekker, New York, 1988.
[87] M. Evans and T. Schwartz. Approximating Integrals via Monte Carlo
and Deterministic Methods. Oxford University Press, Oxford, 2000.
[88] B. Everitt and T. Hothorn. A Handbook of Statistical Analyses Using
R. Chapman & Hall/CRC, Boca Raton, FL, 2006.
[89] B. S. Everitt and D. J. Hand. Finite Mixture Distributions. Chapman
& Hall, London, 1981.
[90] J. J. Faraway. Linear Models with R. Chapman & Hall/CRC, Boca
Raton, FL, 2004.
[91] J. J. Faraway. Extending Linear Models with R: Generalized Lin-
ear, Mixed Effects and Nonparametric Regression Models. Chapman
& Hall/CRC, Boca Raton, FL, 2006.
[92] R. A. Fisher. On the ‘probable error’ of a coefficient of correlation
deduced from a small sample. Metron, 1:3–32, 1921.
[93] R. A. Fisher. The moments of the distribution for normal samples of
measuresofdeparturesfromnormality.Proceedings oftheRoyalSociety
of London, A, 130:16–28,1930.

References 381
[94] G. S. Fishman. Monte Carlo Concepts, Algorithms, and Applications.
Springer, New York, 1995.
[95] G. S. Fishman. Discrete-Event Simulation. Springer, New York, 2001.
[96] R. Fletcher and C. M. Reeves. Function minimization by conjugate
gradients. Computer Journal, 7:148–154.
[97] J. Fox. An R and S-Plus Companion to Applied Regression. Sage Pub-
lications, Thousand Oaks, CA, 2002.
[98] J. N. Franklin. Numerical simulation of stationary and non-stationary
Gaussian random processes. SIAM Review, 7:68–80.
[99] D. Freedman and P. Diaconis. On the histogram as a density estima-
tor: L theory.Zeitschriftfu¨rWahrscheinlichkeitstheorie undverwandte
2
Gebiete, 57:453–476.
[100] J. Friedman and J. Tukey. A projection pursuit algorithm for ex-
ploratorydataanalysis. IEEE Transactions on Computers,23:881–889,
1975.
[101] J. H. Friedman and L. C. Rafsky. Multivariate generalizations of the
Wald-Wolfowitz and Smirnov two-sample tests. Annals of Statistics,
7:697–717,1979.
[102] M. Friendly. Visualizing Categorical Data. SAS Press, Cary,NC, 2000.
[103] D. Gamerman. Markov Chain Monte Carlo. Stochastic simulation for
Bayesian inference. Chapman & Hall, London, 1997.
[104] A. E. Gelfand. Gibbs sampling. Journal of the American Statistical
Association, 95(452):1300–1304,2000.
[105] A.E.Gelfand,S.E.Hills,A.Racine-Poon,andA.F.M.Smith.Illustra-
tionofBayesianinferenceinnormaldatamodelsusingGibbssampling.
Journal of the American Statistical Association, 85:972–985,1990.
[106] A. E. Gelfand and A. F. M. Smith. Sampling based approaches to
calculating marginal densities. Journal of the American Statistical As-
sociation, 85:398–409,1990.
[107] A. Gelman. Inference and monitoring convergence. In W. R. Gilks,
S. Richardson, and D. J. Spiegelhalter, editors, Markov Chain Monte
Carlo in Practice, pages 131–143. Chapman & Hall, Boca Raton, FL,
1996.
[108] A. Gelman, J. B. Carlin, H. S. Stern, and D. B. Rubin. Bayesian Data
Analysis. Chapman and Hall, Boca Raton, second edition, 2004.
[109] A. Gelman and D. B. Rubin. Inference from iterative simulation using
multiple sequences (with discussion). Statistical Science, 7:457–511,
1992.

382 References
[110] A.GelmanandD.B.Rubin. AsinglesequencefromtheGibbssampler
gives a false sense of security. In J. M. Bernardo, J. O. Berger, O. P.
Dawid, and A. F. M. Smith, editors, Bayesian Statistics 4, pages 625–
631. Oxford University Press, Oxford, 1992.
[111] S. Geman and D. Geman. Stochastic relaxation, Gibbs distributions
andthe Bayesianrestorationof images. IEEE Transactions on Pattern
Analysis and Machine Intelligence, 6:721–741,1984.
[112] J. E. Gentle. Random Number Generation and Monte Carlo Methods.
Springer, New York, 1998.
[113] J.E.Gentle.ElementsofComputationalStatistics.Springer,NewYork,
2002.
[114] J. E. Gentle, W. Ha¨rdle, and Y. Mori, editors. Handbook of Computa-
tional Statistics : Concepts and Methods. Springer, New York, 2004.
[115] A. Genz and F. Bretz. mvtnorm: Multivariate Normal and T Distribu-
tion, 2007. R port by Torsten Hothorn. R package version 0.8-1.
[116] C. J. Geyer. Practical Markov Chain Monte Carlo (with discussion).
Statistical Science, 7:473–511,1992.
[117] C. J. Geyer. mcmc: Markov Chain Monte Carlo, 2005. R package
version 0.5-1.
[118] S.Ghahramani.FundamentalsofProbability.Prentice-Hall,NewJersey,
second edition, 2000.
[119] W.R.Gilks. Fullconditionaldistributions. InW.R.Gilks,S.Richard-
son, and D. J. Spiegelhalter, editors, Markov Chain Monte Carlo in
Practice, pages 75–88.Chapman & Hall, Boca Raton, FL, 1996.
[120] W. R. Gilks, S. Richardson, and D. J. Spiegelhalter. Markov Chain
Monte Carlo in Practice. Chapman & Hall, Boca Raton, FL, 1996.
[121] G. H. Givens and J. A. Hoeting. Computational Statistics. Wiley, New
Jersey, 2005.
[122] R. Gnanadesikan. Methods for the Statistical Analysis of Multivariate
Observations. Wiley, New York, Second edition, 1997.
[123] C. Gu. gss: General Smoothing Splines. R package version 0.9-3.
[124] F. A. Haight. Handbook of the Poisson Distribution. Wiley, New York,
1967.
[125] P. Hall and J. S. Marron. Choice of kernel order in density estimation.
Annals of Statistics, 16:161–173,1987.
[126] D.J.Hand,F.Daly,A.D.Lunn,K.J.McConway,andE.Ostrokowski.
A Handbook of Small Data Sets. Chapman & Hall, Boca Raton, FL,
1996.

References 383
[127] R.K.S.Hankin. gsl: wrapper fortheGnuScientificLibrary,2005. qrng
functions by Duncan Murdoch. R package version 1.6-7.
[128] W. Ha¨rdle. Applied Nonparametric Regression, volume 19 of Econo-
metric Society Monographs. Cambridge University Press, Cambridge,
1990.
[129] W. Ha¨rdle. Smoothing Techniques. Springer-Verlag, New York, 1991.
With implementation in S.
[130] W. Ha¨rdle, M. Mu¨ller, S. Sperlich, and A. Werwatz. Nonparametric
and Semiparametric Models. Springer-Verlag,New York, 2004.
[131] F.E.Harrell. Regression Modeling Strategies, with Applications to Lin-
ear Models, Survival Analysis and Logistic Regression. Springer, 2001.
[132] F. E. Harrell Jr. Hmisc: Harrell Miscellaneous, 2007. With contribu-
tions from many other users. R package version 3.3-1.
[133] H. O. Hartley and D. L. Harris. Monte Carlo computations in normal
correlationproblems.JournalofAssociation forComputingMachinery,
10:301–306,1963.
[134] T. Hastie. gam: Generalized Additive Models, 2006. R package version
0.98.
[135] T. Hastie and R. Tibshirani. Generalized additive models. Statistical
Science, 1(3):297–318,1986. With discussion.
[136] T. Hastie, R. Tibshirani, and J. Friedman. The Elements of Statistical
Learning.SpringerSeriesinStatistics.Springer-Verlag,NewYork,2001.
Data mining, inference, and prediction.
[137] T. J. Hastie and R. J. Tibshirani. Generalized Additive Models. Chap-
man and Hall Ltd., London, 1990.
[138] W. K. Hastings. Monte Carlo sampling methods using Markov chains
and their applications. Biometrika, 57:97–109,1970.
[139] N.Henze. Amultivariatetwo-sampletestbasedonthenumberofnear-
est neighbor coincidences. Annals of Statistics, 16:772–783,1988.
[140] N. Henze. On Mardia’s kurtosis test for multivariate normality. Com-
munications in Statistics: Theory and Methods, 23:1031–1045,1994.
[141] N. Henze. Extreme smoothing and testing for multivariate normality.
Statistics and Probability Letters, 35:203–213,1997.
[142] N. J. Higham. Accuracy and Stability of Numerical Algorithms. SIAM
Publications, Philadelphia, 1996.
[143] J. S. U. Hjorth. Computer Intensive Statistical Methods: Validation,
Model Selection and Bootstrap. Chapman and Hall, London, 1992.

384 References
[144] W. Hoeffding. A class of statistics with asymptotically normal distrib-
ution. Annals of Mathematical Statistics, 19:293–325,1948.
[145] W.Hoeffding. Anon-parametrictestofindependence. Annals of Math-
ematical Statistics, 19:546–547,1948.
[146] R. V. Hogg, J. W. McKean, and A. T. Craig. Introduction to Mathe-
matical Statistics. PrenticeHall,UpperSaddleRiver,NewJersey,sixth
edition, 2005.
[147] K. Hornik. The R FAQ. R Foundation for Statistical Computing, Vi-
enna, Austria, 2007. ISBN 3-900051-08-9.
[148] R. J. Hyndman and Y. Fan. Sample quantiles in statistical packages.
The American Statistician, 50:361–365,1996.
[149] S. M. Iacus. sde: Simulation and Inference for Stochastic Differential
Equations, 2006. R package version 1.9.5.
[150] J. P. Imhof. Computing the distribution of quadratic forms in normal
variables. Biometrika, 48(3/4):419–426,1961.
[151] J.P.Imhof. Corrigenda: Computingthedistributionofquadraticforms
in normal variables. Biometrika, 49(1/2):284,1962.
[152] A.Inselberg.Theplanewithparallelcoordinates.TheVisualComputer,
1:69–91,1985.
[153] R. G. Jarrett. A note on the intervals between coal-mining disasters.
Biometrika, 66:191–193,1979.
[154] M. E. Johnson. Multivariate Statistical Simulation. Wiley, New York,
1987.
[155] M. E. Johnson, W. Chiang, and J. S. Ramberg. Generation of contin-
uous multivariate distributions for statistical applications. American
Journal of Mathematical Management Science, 4:225–248,1984.
[156] N. L. Johnson, S. Kotz, and N. Balakrishnan. Continuous Univariate
Distributions, volume 1. Wiley, New York, Second edition, 1994.
[157] N. L. Johnson, S. Kotz, and N. Balakrishnan. Continuous Univariate
Distributions, volume 2. Wiley, New York, Second edition, 1995.
[158] N. L. Johnson, S. Kotz, and A. W. Kemp. Univariate Discrete Distri-
butions. Wiley, New York, Second edition, 1992.
[159] A.W.Kemp. Efficientgenerationoflogarithmicallydistributedpseudo-
random variables. Applied Statistics, 30:249–253,1981.
[160] S.E.Kemp. knnFinder: FastNearNeighbourSearch. Rpackageversion
1.0.

References 385
[161] W. J. Kennedy, Jr. and J. E. Gentle. Statistical Computing. Marcel
Dekker, New York, 1980.
[162] D. A. King and J. H. Maindonald. Tree architecture in relation to
leaf dimensions and tree stature in temperate and tropical rain forests.
Journal of Ecology, 87:1012–1024,1999.
[163] C.KleiberandS.Kotz. Statistical Size Distributions in Economics and
Actuarial Sciences. Wiley, 2003.
[164] D. B.Knuth. The Art of Computer Programming (Vol. 2: Seminumer-
ical Algorithms). Addison-Wesley, Reading, third edition, 1997.
[165] D. Kundu and A. Basu, editors. Statistical Computing: Existing Meth-
ods and Recent Developments. Alpha Science International Ltd., Har-
row, U.K., 2004.
[166] D. Kuonen. Saddlepoint approximations for distributions of quadratic
forms in normal variables. Biometrika, 86(4):929–935,1999.
[167] D. T. Lang, D. Swayne, H. Wickham, and M. Lawrence. rggobi: Inter-
face between R and GGobi, 2006. R package version 2.1.4-4.
[168] K. Lange. Numerical Analysis for Statisticians. Springer-Verlag, New
York, 1998.
[169] K. Lange. Optimization. Springer-Verlag,New York, 2004.
[170] R.J.LarsenandM.L.Marx.AnIntroductiontoMathematicalStatistics
and Its Applications. Prentice-Hall, Inc., New Jersey, fourth edition,
2006.
[171] P. M. Lee. Bayesian Statistics. Oxford University Press, New York,
third edition, 2004.
[172] E. L. Lehmann. Testing Statistical Hypotheses. Springer, New York,
second edition, 1986. Originally published New York: Wiley c1986.
[173] E. L. Lehmann and G. Casella. Theory of Point Estimation. Springer,
New York, second edition, 1998.
[174] F. Leisch and E. Dimitriadou. mlbench: Machine Learning Benchmark
Problems, 2007. R package version 1.1-3.
[175] R. V. Lenth. Algorithm AS 243 – Cumulative distribution function of
the non-central t distribution. Applied Statistics, 38:185–189,1989.
[176] A.LiawandM.Wiener. ClassificationandregressionbyrandomForest.
R News, 2(3):18–22,2002.
[177] U. Ligges. R-WinEdt. In K. Hornik, F. Leisch, and A. Zeileis, editors,
Proceedingsofthe3rdInternationalWorkshoponDistributedStatistical
Computing (DSC 2003), TU Wien, Vienna, Austria, 2003. ISSN 1609-
395X.

386 References
[178] R.J.A.Little andD.B.Rubin. Statistical Analysis with Missing Data.
Wiley, Hoboken, NJ, second edition, 2002.
[179] J. S. Liu. Monte Carlo Strategies in Scientific Computing. Springer,
New York, 2001.
[180] C. Loader. locfit: Local Regression, Likelihood and Density Estimation,
2006. R package version 1.5-3.
[181] C. R. Loader. Bandwidth selection: Classical or plug-in? The Annals
of Statistics, 27:415–438,1999.
[182] J. Ludbrook and H. Dudley. Why permutation tests are superior
to t and F tests in biomedical research. The American Statistician,
52(2):127–132,1998.
[183] M. Maechler and many others. sfsmisc: Utilities from Seminar fuer
Statistik ETH Zurich, 2007. R package version 0.95-9.
[184] J. Maindonald and J. Braun. Data Analysis and Graphics Using R –
an Example-based Approach. Cambridge University Press, Cambridge,
2003.
[185] J.MaindonaldandJ.Braun.DAAG:DataAnalysisandGraphics,2007.
R package version 0.95.
[186] E. Mammen. When Does Bootstrap Work? Springer, New York, 1992.
[187] K. V. Mardia. Measures of multivariate skewness and kurtosis with
applications. Biometrika, 57:519–530,1970.
[188] K. V. Mardia, J. T. Kent, and J. M. Bibby. Multivariate Analysis.
Academic Press, San Diego, 1979.
[189] J. S. Marron and M. P. Wand. Exact mean integrated squared error.
The Annals of Statistics, 20:712–736,1992.
[190] G. Marsaglia, W. W. Tsang, and J. Wang. Fast generation of discrete
random variables. Journal of Statistical Software, 11, 2004.
[191] A. D. Martin and K. M. Quinn. MCMCpack: Markov Chain Monte
Carlo (MCMC) Package, 2007. R package version 0.8-1.
[192] W.L.MartinezandA.R.Martinez. ComputationalStatisticsHandbook
with MATLAB. Chapman & Hall/CRC, Boca Raton, FL, 2002.
[193] R.N.McGrathandB.Y.Yeh. CountFive testfor equalvariance. The
American Statistician, 59:47–53,2005.
[194] G.J.McLachlanand T.Krishnan. The EM Algorithm and Extensions.
Wiley, New York, 1997.
[195] N. Metropolis. The beginning of the Monte Carlo method. Los Alamos
Science, (15, Special Issue):125–130,1987. Stanislaw Ulam 1909–1984.

References 387
[196] N.Metropolis. TheLosAlamosexperience,1943–1954. InA History of
ScientificComputing(Princeton, NJ,1987),ACMPressHistorySeries,
pages 237–250.ACM, New York, 1990.
[197] N. Metropolis, A. W. Rosenbluth, M. N. Rosenbluth, A. H. Teller, and
E. Teller. Equations of state calculations by fast computing machine.
Journal of Chemical Physics, 21:1087–1091,1953.
[198] N. Metropolis and S. Ulam. The Monte Carlo method. Journal of the
American Statistical Association, 44:335–341,1949.
[199] D.Meyer,A.Zeileis,andK.Hornik. vcd: Visualizing Categorical Data,
2007. R package version 1.0.5.
[200] P. W. Mielke, Jr. and K. J. Berry. Permutation tests for common
locationsamongsampleswithunequalvariances.JournalofEducational
and Behavioral Statistics, 19(3):217–236,1994.
[201] I. Miller and M. Miller. John E. Freund’s Mathematical Statistics with
Applications. Prentice Hall, New Jersey, seventh edition, 2004.
[202] J.F.Monahan. Numerical Methods of Statistics. CambridgeUniversity
Press, Cambridge, 2001.
[203] H.G.Mu¨ller. Nonparametric Regression Analysis of Longitudinal Data.
Springer-Verlag,Berlin, 1988.
[204] P.Murrell. R Graphics. Chapman&Hall/CRC,BocaRaton,FL,2005.
[205] J.A. Nelder andR. Mead. A simplex algorithmfor function minimiza-
tion. Computer Journal, 7:308, 1965.
[206] J. Nocedal and S. J. Wright. Numerical Optimization. Springer, New
York, 1999.
[207] P. L. Odell and A. H. Feiveson. A numerical procedure to generate a
sample covariance matrix. Journal of the American Statistical Associ-
ation, 61:199–203.
[208] G. Owen. Game Theory. Academic Press, New York, third edition,
1995.
[209] W. M. Patefield. Algorithm AS159. An efficient method of generating
r×ctableswithgivenrowandcolumntotals. Applied Statistics,30:91–
97, 1981.
[210] J. K. Patel and C. B. Read. Handbook of the Normal Distribution.
Marcel Dekker, New York, second edition, 1996.
[211] J.C. Pinheiro and D. M. Bates. Mixed-Effects Models in S and S-Plus.
Springer, 2000.

388 References
[212] M. Plummer, N. Best, K. Cowles, and K. Vines. coda: Output analysis
and diagnostics for MCMC, 2007. R package version 0.11-2.
[213] W. H. Press, S. A. Teukolsky, W. T. Vetterling, and B. P. Flannery.
Numerical Recipes in C: The Art of Scientific Computing. Cambridge
University Press, New York, Second edition, 1992.
[214] M. L. Puri and P. K. Sen. Nonparametric Methods in Multivariate
Analysis. Wiley, New York, 1971.
[215] M.H.Quenouille. Approximatetestsofcorrelationintimeseries. Jour-
nal of the Royal Statistical Society, Series B, 11:68–84,1949.
[216] M.H.Quenouille.Notesonbiasinestimation.Biometrika,43(3/4):353–
360, 1956.
[217] R Development Core Team. R: A Language and Environment for Sta-
tistical Computing. R Foundation for Statistical Computing, Vienna,
Austria, 2007. ISBN 3-900051-07-0.
[218] R Development Core Team. R Installation and Administration. R
Foundation for Statistical Computing, Vienna, Austria, 2007. ISBN
3-900051-09-07.
[219] A. E. Raftery and S. M. Lewis. How many iterations in the Gibbs
sampler? In J. M. Bernardo, J. O. Berger, O. P. Dawid, and A. F. M.
Smith,editors,Bayesian Statistics 4, pages763–773.OxfordUniversity
Press, Oxford, 1992.
[220] C. R. Rao, editor. Linear Statistical Inference and Its Applications.
Wiley, New York, second edition, 1973.
[221] C.R.Rao,editor. Computational Statistics. Elsevier,TheNetherlands,
1993.
[222] C.R. Rao, E.J. Wegman,and J.L. Solka, editors. Handbook of Statis-
tics, Volume 24: Data Mining and Data Visualization.
[223] B.D.Ripley. Stochastic Simulation. CambridgeUniversityPress,Cam-
bridge, 1987.
[224] B. D. Ripley. Pattern Recognition and Neural Networks. Cambridge
University Press, Cambridge, 1996.
[225] B. D. Ripley and D. J. Murdoch. The R for Windows FAQ. R Foun-
dation for Statistical Computing, Vienna, Austria, 2007.
[226] M. L. Rizzo and G. J. Sz´ekely. energy: E-statistics (energy statistics)
tests of fit, independence, clustering, 2007. R package version 1.0-6.
[227] C. P. Robert. Convergence control methods for Markov Chain Monte
Carlo algorithms. Statistical Science, 10(3):231–253,1995.

References 389
[228] C.P.RobertandG.Casella.MonteCarloStatisticalMethods. Springer,
New York, Second edition, 2004.
[229] G. O. Roberts. Markov chain concepts related to sampling algorithms.
InW.R. Gilks,S.Richardson,andD. J.Spiegelhalter,editors,Markov
Chain Monte Carlo in Practice, pages 45–58. Chapman & Hall, Boca
Raton, FL, 1996.
[230] G.O.Roberts,A.Gelman,andW.R.Gilks. Weakconvergenceandop-
timalscaling ofrandomwalk Metropolisalgorithms. Annals of Applied
Probability, 7:110–120,1997.
[231] V.K.Rohatgi. AnIntroductiontoProbability TheoryandMathematical
Statistics. Wiley, New York, 1976.
[232] S. M. Ross. A First Course in Probability. Prentice-Hall, New Jersey,
seventh edition, 2006.
[233] S. M. Ross. Simulation. Academic Press, San Diego, fourth edition,
2006.
[234] S. M. Ross. An Introduction to Probability Models. Academic Press,
San Diego, ninth edition, 2007.
[235] J. P. Royston. Algorithm AS 181. The W test for normality. Applied
Statistics, 31:176–180,1982.
[236] J.P.Royston. AnextensionofShapiroandWilk’sWtestfornormality
to large samples. Applied Statistics, 31(2):115–124,1982.
[237] P.Royston. ApproximatingtheShapiro-WilkW-testfornon-normality.
Statistical Computing, 2:117–119,1992.
[238] R.Y.Rubinstein. Simulation and theMonteCarlo Method. Wiley,New
York, 1981.
[239] D. Sarkar. lattice: Lattice Graphics, 2007. R package version 0.15-8.
[240] M. F. Schilling. Multivariate two-sample tests based on nearest neigh-
bors.JournaloftheAmericanStatisticalAssociation,81:799–806,1986.
[241] D. W. Scott. On optimal and data-based algorithms. Biometrika,
66:605–610,1979.
[242] D. W. Scott. Averaged shifted histograms: Effective nonparametric
density estimatorsin severaldimensions. Annals of Statistics, 13:1024–
1040,1985.
[243] D. W. Scott. Frequency polygons: Theory and application. Journal of
the American Statistical Association, 80:348–354,1985.
[244] D. W. Scott. Multivariate Density Estimation. Theory, Practice, and
Visualization. John Wiley, New York, 1992.

390 References
[245] D. W. Scott and A. Gebhardt. ash: David Scott’s ASH routines. S
original by David W. Scott, R port by Albrecht Gebhardt. R package
version 1.0-9.
[246] P. K. Sen. On some multisample permutation tests based on a
class of U-statistics. Journal of the American Statistical Association,
62(320):1201–1213,1967.
[247] J.ShaoandD.Tu. The Jackknife and Bootstrap. Springer-Verlag,New
York, 1995.
[248] S.S.ShapiroandM.B.Wilk. Ananalysisofvariancetestfornormality
(complete samples). Biometrika, 52:591–611,1965.
[249] S.S.Shapiro,M.B.Wilk,andH.J.Chen. Acomparativestudyofvar-
ioustestsofnormality. Journalof the American Statistical Association,
63:1343–1372,1968.
[250] B. W. Silverman. Choosing the window width when estimating a den-
sity. Biometrika, 65(1):1–11,1978.
[251] B. W. Silverman. Some properties of a test for multimodality based
on kernel density estimates. In Probability, Statistics and Analysis,
volume 79 of London Mathematical Society Lecture Note Series, pages
248–259.Cambridge University Press, Cambridge, 1983.
[252] B. W. Silverman. Density Estimation for Statistics and Data Analysis.
Chapman & Hall, London, 1986.
[253] P.W. F.Smith, J.J.Forster,andJ.W. McDonald. Monte Carloexact
tests for square contingency tables. Journal of the Royal Statistical
Society. Series A (Statistics in Society), 159(2):309–321,1996.
[254] G. Snow. TeachingDemos: Demonstrations for teaching and learning,
2005. R package version 1.5.
[255] C. Spearman. The proof and measurement of association between two
things. American Journal of Psychology, 1904.
[256] Student. The probable error of a mean. Biometrika, 6:1–25, 1908.
[257] H. A. Sturges. The choice of a class interval. Journal of the American
Statistical Association, 21:65–66,1926.
[258] G. J. Sz´ekely. Potential and kinetic energy in statistics. Lecture notes,
Budapest Institute of Technology (Technical University), 1989.
[259] G. J. Sz´ekely. E-statistics: Energy of statistical samples. Technical
Report 03-05, Bowling Green State University, Department of Mathe-
matics and Statistics, 2000.
[260] G. J. Sz´ekely. Student’s t-test for scale mixture errors. In J. Rojo, ed-
itor, Optimality, The Second Lehmann Symposium, volume 49 of IMS

References 391
Lecture Notes – Monograph Series, pages 9–15.Institute of Mathemat-
ical Statistics, 2006.
[261] G. J. Sz´ekely and M. L. Rizzo. Testing for equal distributions in high
dimension. InterStat, 11(5), 2004.
[262] G.J.Sz´ekelyandM.L.Rizzo. Hierarchicalclusteringviajointbetween-
withindistances: extendingWard’sminimumvariancemethod.Journal
of Classification, 22(2):151–183,2005.
[263] G. J. Sz´ekely and M. L. Rizzo. A new test for multivariate normality.
Journal of Multivariate Analysis, 93(1):58–80,2005.
[264] G.J.Sz´ekelyandM.L.Rizzo.Theuncertaintyprincipleofgametheory.
The American Mathematical Monthly, 8:688–702,October 2007.
[265] G. J. Sz´ekely, M. L. Rizzo, and N. K. Bakirov. Measuring and test-
ing dependence by correlation of distances. Annals of Statistics, 35(6),
December 2007.
[266] M. A. Tanner. Tools for Statistical Inference: Methods for the Ex-
ploration of Posterior Distributions and Likelihood Functions. Third
edition, 1993.
[267] M. A. Tanner and W. H. Wong. The calculation of posterior distribu-
tions by data augmentation. Journal of the American Statistical Asso-
ciation, 82:528–549,1987.
[268] T. M. Therneau and B. Atkinson. rpart: Recursive Partitioning, 2007.
R port by Brian Ripley. R package version 3.1-36.
[269] R. A. Thisted. Elements of Statistical Computing. Chapman and Hall,
New York, 1988.
[270] H.C.Thode,Jr. TestingforNormality. MarcelDekker,Inc.,NewYork,
2002.
[271] R. Tibshirani and F. Leisch. bootstrap, 2006. Functions for the book
“An Introduction to the Bootstrap.” S original by Rob Tibshirani, R
port by Friedrich Leisch. R package version 1.0-20.
[272] L. Tierney. Markov chains for exploring posterior distributions (with
discussion). Annals of Statistics, 22:1701–1762,1994.
[273] Y.L.Tong. TheMultivariateNormalDistribution. Springer,NewYork,
1990.
[274] J. Tukey. Bias and confidence in not quite large samples (abstract).
Annals of Mathematical Statistics, 29:614,1958.
[275] J. W. Tukey. Exploratory Data Analysis. Addison-Wesley, New York,
1977.

392 References
[276] S.Ulam,R.D.Richtmyer,andJ.vonNeumann. Statisticalmethods in
neutrondiffusion. Los Alamos Scientific Laboratory, reportLAMS-551,
1947.
[277] W.N.VenablesandB.D.Ripley. S Programming. Springer,NewYork,
2000.
[278] W. N. Venables and B. D. Ripley. Modern Applied Statistics with S.
Springer, New York, fourth edition, 2002. ISBN 0-387-95457-0.
[279] W. N. Venables, D. M. Smith, and the R Development Core Team. An
Introduction to R. R Foundation for Statistical Computing, Vienna,
Austria, 2007. ISBN 3-900051-12-7.
[280] J.Verzani. Using R for IntroductoryStatistics. Chapman&Hall/CRC,
Boca Raton, FL, 2005.
[281] R.vonMises. Wahrscheinlichkeitsrechnung und Ihre Anwendungin der
Statistik und Theoretischen Physik. Deuticke, Leipzig, Germany, 1931.
[282] J. von Neumann. Zur Theorie der Gesellschaftsspiele. Mathematische
Annalen, 100:295–320,1928.
[283] J. von Neumann. Various techniques used in connection with ran-
dom digits. National Bureau of Standards Applied Mathematics Series,
12:36–38,1951.
[284] G.Wahba. Spline Models for Observational Data. SIAM, Philadelphia,
1990.
[285] G. G. Walter and X. Shen. Wavelets and other Orthogonal Systems.
Chapman & Hall/CRC, Boca Raton, FL, second edition, 2001.
[286] M. Wand and B. Ripley. KernSmooth: Functions for kernel smoothing
for Wand & Jones (1995), 2007. S original by Matt Wand. R port by
Brian Ripley. R package version 2.22-20.
[287] M.P.Wand. Frequencypolygons: Theoryandapplications. Journal of
the American Statistical Association, 80:348–354,1985.
[288] M.P.Wand. Data-basedchoice ofhistogrambinwidth. The American
Statistician, 51:59–64,1997.
[289] M. P. Wand and M. C. Jones. Kernel Smoothing, volume 60 of Mono-
graphs on Statistics and Applied Probability. Chapman and Hall Ltd.,
London, 1995.
[290] G.R.Warnes.gplots: VariousRprogrammingtoolsforplottingdata.In-
cludes Rsourcecode and/ordocumentationcontributedby BenBolker
and Thomas Lumley. R package version 2.3.2.
[291] G. R. Warnes. mcgibbsit: Warnes and Raftery’s MCGibbsit MCMC
diagnostic, 2005. R package version 1.0.5.

References 393
[292] M. Watanabe and K. Yamaguchi. The EM Algorithm and Related Sta-
tistical Models. Marcel Dekker, New York, 2004.
[293] E. Wegman. Nonparametric probability density estimation: I. A sum-
mary of available methods. Technometrics, 14:533–546,1972.
[294] E.Wegman.Hyperdimensionaldataanalysisusingparallelcoordinates.
Journal of the American Statistical Association, 85:664–675,1990.
[295] E. J. Wegman. Computational statistics: A new agenda for statistical
theory and practice. Journal of the Washington Academy of Sciences,
78:310–322,1988.
[296] S. S. Wilks. On the independence of k sets of normally distributed
statistical variables. Econometrica, 3:309–326,1935.
[297] M. Wiper, D. R. Insua, and F. Ruggeri. Mixtures of gamma distri-
butions with applications. Journal of Computational and Graphical
Statistics, 10(3):440–454,2001.
[298] P. Wolf and U. Bielefeld. aplpack: Another Plot PACKage: stem.leaf,
bagplot, faces, spin3R, ..., 2006. R package version 1.0.
[299] D.Wuertz,manyothers,andseethesourcefile.fSeries: Rmetrics–The
DynamicalProcess Behind Markets,2006. Rpackageversion240.10068.
