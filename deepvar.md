
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
## DNA sequencing

### Sanger sequencing with ddNTP 

<img src="https://ka-perseus-images.s3.amazonaws.com/d56c026870bbfee4658a9eaa52daba496d4a58ad.png" width=50%>

---
### NextGen Sequencing: SOLiD

<a href="http://seqanswers.com/forums/showthread.php?t=10">
<img src="http://seqanswers.com/forums/images/content/abi-fig4.jpg" width=40%>
</a>

---

### NextGen Sequencing: Illumina 


<img src="http://www.biofidal-lab.com/site/images/normal/NextGen-Sequencing-Whole-Genome-Sequencing56b9ea45bd182.png" width=70%>
---

### NextGen Sequencing: Ion Torrent

<img src="https://www.omicsonline.org/articles-images/biology-and-medicine-torrent-9-395-g003.png" width=70%>

---

### NextGen Seq data files 

Illumina, Ion Torrent: fasta


```
>cluster_2:UMI_ATTCCG             # record name; starts with '>'
TTTCCGGGGCACATAATCTTCAGCCGGGCGC   # DNA sequence

```

Illumina, Ion Torrent: fastq

```
@cluster_2:UMI_ATTCCG             # record name; starts with '@'
TTTCCGGGGCACATAATCTTCAGCCGGGCGC   # DNA sequence
+                                 # empty line; starts with '+'
9C;=;=<9@4868>9:67AA<9>65<=>591   # phred-scaled quality scores
``` 

SOLiD: csfasta

```
>2_14_26_F3
T110021221100310030120022032222111321022112223
```
---

## GATK: A topic for future class

<a href="https://software.broadinstitute.org/gatk/best-practices/workflow?id=11145" target=_new> 
<img src="https://us.v-cdn.net/5019796/uploads/editor/mz/tzm69d8e2spl.png" width=70%></a>


---
## Neural Network
### one node at a time


<img src="https://cdn-images-1.medium.com/max/1600/1*v88ySSMr7JLaIBjwr4chTw.jpeg" width=70%>

---

## Deep Neural Network
### Fully connected
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

## Visual example of a ConvNet

<a href="http://scs.ryerson.ca/~aharley/vis/conv/"><img src="https://ujwlkarn.files.wordpress.com/2016/08/conv_all.png?w=1024"></a>


Author: [Adam Harley](http://www.cs.cmu.edu/~aharley/)

---

## Google InceptionNet

<img src="./images/deepvar/inceptionv1.png" width=80%>

[InceptionNet](https://towardsdatascience.com/a-simple-guide-to-the-versions-of-the-inception-network-7fc52b863202)


---


## DeepVariant 

sources of info

* Dec 14 2016 [BioRxiv](https://www.biorxiv.org/content/early/2016/12/14/092890)
* Dec 04 2017 [Google Blog](https://ai.googleblog.com/2017/12/deepvariant-highly-accurate-genomes.html)
* Sep 24 2018 [Nature Biotechnology](https://www.nature.com/articles/nbt.4235)

