# Reproducible Research with R's *knitr* package
| Center for Health Systems Effectiveness
| Benjamin Chan (chanb@ohsu.edu)
| Stephanie Renfro (renfrst@ohsu.edu)
| Thomas Meath (meath@ohsu.edu)
  
July 22, 2015  


## Outline {.columns-2}

1. Introduction
2. Example and workflow
3. Getting fancy

![flyer](Reproducible Research FLYER scaled.png)


## Introduction {.columns-2}

1. What is reproducible research?
2. Why reproducible research?
3. How to do reproducible research?

![flyer](Reproducible Research FLYER scaled.png)


## What is reproducible research? {.columns-2}

* Reproducible research is the idea that data analyses... **are published with their data and software code** so that others may verify the findings and build upon them
* Reproducibility makes an analysis more useful to others because the data and **code that actually conducted the analysis are available**

RR is **open sourcing** your project

[![Peng Coursera.png](Peng Coursera.png)](https://www.coursera.org/course/repdata)


## Why reproducible research? {.columns-2}

One of the most effective ways to promote high-quality science is to create free open-source tools that give scientists easier and cheaper ways to incorporate transparency into their daily workflow: 

* from open lab notebooks, 
* to software that tracks every version of a data set, 
* to **dynamic document generation**

[![Buck citation.png](Buck citation.png)](http://www.sciencemag.org/content/348/6242/1403.full)


## Why reproducible research? {.columns-2 .smaller}

Reproducibility practices and reward systems

* Important to **reward scientists on the basis** of good quality of research and documentation, and **reproducibility of results**, rather than statistical significance
* Statistical shops could adopt software systems that **encourage accuracy and reproducibility of their software scripts** [e.g., *knitr*]
* **Public availability** of raw data and **complete scripts of statistical analyses** could be required by journals and funding agencies sponsoring new research --- e.g., as the IOM recommended in a report on omics  

[![Ioannidis citation scaled.png](Ioannidis citation scaled.png)](http://www.sciencedirect.com/science/article/pii/S0140673613622278)


## Why reproducible research?

[![Nosek table](Science 2015 Jun 348(6242) 1422-5, partial scaled.png)](http://www.sciencemag.org/content/348/6242/1422.full)


## Why reproducible research?

Although much of the focus on reproducibility is at the basic and preclinical research level, reproducibility is where we're all headed.

* [Principles and Guidelines for Reporting Preclinical Research (*NIH*)](http://www.nih.gov/science/reproducibility/principles-guidelines.htm)
* [Policy: NIH plans to enhance reproducibility (*Nature*)](http://www.nature.com/news/policy-nih-plans-to-enhance-reproducibility-1.14586)
* [Trouble at the lab (*The Economist*)](http://www.economist.com/news/briefing/21588057-scientists-think-science-self-correcting-alarming-degree-it-not-trouble)


## How to do reproducible research?



Standard research pipeline

![pipelineStandard.svg](pipelineStandard.svg)


## How to do reproducible research?

Almost reproducible research pipeline

![pipelineAlmostReproducible.svg](pipelineAlmostReproducible.svg)


## How to do reproducible research?

Fully reproducible research pipeline

![pipelineFullyReproducible.svg](pipelineFullyReproducible.svg)


## How to do reproducible research?

Now, some examples...