
## GGI 901 Integrative Genetics 

### November 1, 2018 


<a href="https://www.nature.com/articles/nbt.4235" target=_new> <img src="./images/deepvar/cover.png"></a>

<hr style="color:royalblue">

 **Hao Chen**, hchen@uthsc.edu, Department of Pharmacology, UTHSC

https://chen42.github.io/talks/deepvar.html

<small> Written using [Reveal.js](https://github.com/hakimel/reveal.js) and [markdown](https://help.github.com/categories/writing-on-github/) </small>

---

### outline

* NextGen sequencing
  * Platforms
  * GATK: calling SNP and Indel from NextGen data
* Deep Learning
  * <u>C</u>onvolutional <u>N</u>eural <u>N</u>et (CNN)
  * Google Inception network
* DeepVariant: Applying CNN (Inception) to NextGen Seq data  
  * Design
  * Training
  * Software
  * Validation
  
---

## Deep Neural Network


<img src="https://cdn-images-1.medium.com/max/1600/1*v88ySSMr7JLaIBjwr4chTw.jpeg" width=70%>

<img src="http://www.electronicdesign.com/sites/electronicdesign.com/files/MachineLearning_WTD_Fig3.png" width=70%>

---

## Live demo of DNN

<a href="https://lecture-demo.ira.uka.de/neural-network-demo/?preset=Three%20classes%20test" target=_new ><img src="./images/deepvar/neuralnet.png"></a>

---


## Convolution

![](https://ujwlkarn.files.wordpress.com/2016/07/screen-shot-2016-07-24-at-11-25-13-pm.png?w=150&h=136)
![](https://ujwlkarn.files.wordpress.com/2016/07/screen-shot-2016-07-24-at-11-25-24-pm.png?w=74&h=64) 
![](https://ujwlkarn.files.wordpress.com/2016/07/convolution_schematic.gif?w=268&h=196&zoom=2)

https://ujjwalkarn.me/2016/08/11/intuitive-explanation-convnets/

---

## Convolution as feature detector

![](https://ujwlkarn.files.wordpress.com/2016/08/screen-shot-2016-08-05-at-11-03-00-pm.png?w=342&h=562)

https://ujjwalkarn.me/2016/08/11/intuitive-explanation-convnets/

---

## Convolutional Neural Net for Object Classification 

![](https://www.mathworks.com/content/mathworks/www/en/discovery/convolutional-neural-network/jcr:content/mainParsys/image_copy.adapt.full.high.jpg/1523891796216.jpg)

---
## Four main Features of the ConvNet 

* Convolution (feature extraction)
* Non Linearity ([ReLU](https://cdn-images-1.medium.com/max/1600/1*DfMRHwxY1gyyDmrIAd-gjQ.png))
* Pooling or Sub Sampling
* Classification (fully connected layer)

---

## Visual example of a ConvNet

<a href="http://scs.ryerson.ca/~aharley/vis/conv/"><img src="https://ujwlkarn.files.wordpress.com/2016/08/conv_all.png?w=1024"></a>


Author: [Adam Harley](http://www.cs.cmu.edu/~aharley/)

---

## Google InceptionNet

Inception Net: [Towards Data Science Intro](https://towardsdatascience.com/a-simple-guide-to-the-versions-of-the-inception-network-7fc52b863202)

[Going deeper with convolutions, pdf](https://arxiv.org/pdf/1409.4842v1.pdf)

---


## DeepVariant 

sources of info

* Dec 14 2016 [BioRxiv](https://www.biorxiv.org/content/early/2016/12/14/092890)
* Dec 04 2017 [Google Blog](https://ai.googleblog.com/2017/12/deepvariant-highly-accurate-genomes.html)
* Sep 24 2018 [Nature Biotechnology](https://www.nature.com/articles/nbt.4235)

