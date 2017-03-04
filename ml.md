# Analyzing big data: from simple clustering to deep learning.
-----
## Hao Chen
 
### Assistant Professor
### Department of Pharmacology
### UTHSC

March 7th 2017

---


## Outline

* Data, Big data
* Unsupervised learning
	* Clustering
		* Hierachcial clustering	
	* Dimention reduction
		* Principal component analysis
* Supervised learing
	* Regression
	* Neuronetworks
	* Deep Neuronets	
---

## Learning Objective

* Understand a few commonly used algorithms 

* Understand the idea behind deep neural network

* Appreciate the tremendous potential of data science in medicine

---

## Big data?

* Big data V3
	* Volume 
		* Boeing 737 generates 240 terabytes of flight data during a single flight
		* one Next-Generation sequencing run produces terabytes of data 
	* Velocity 
		* sensors can have millisecond resolutions
	* Variety
		* geospatial, audio, video
		* structured vs unstructured
			* text is data too
* May *not* contain much values
* A major difference between "Big" data and "small" data is the analysis methods. 

---

## For big data, analysis is learning, machine learning

![](./images/deep_learning/deepLearning_google_trends.png)

---

<a href="https://www.udacity.com/course/machine-learning-for-trading--ud501">
<img src="./images/deep_learning/udacity_trading.png"> </a> 

---

## Numerous online resources for learning machine learning

<iframe width="560" height="315" src="https://www.youtube.com/embed/UzxYlbK2c7E" frameborder="0" allowfullscreen></iframe>

---

## Two major types of machine learning
* Unsupervised 
	* The data has no label
	* The label of the data are not used 

* Supervised learning
	* Part of the data has label (e.g. disease, healthy) 
	* Can you predict the label of new data?

---

## Unsupervised learning 

What kind of inherent structure can an algorithm discover?

---

## Dimension reduction

![](./images/deep_learning/fake_data.png)


---

## Variable loading in a PCA analysis

![](./images/p50retreat2017/pca_loading.png)


---

## Principal component analysis

![](./images/deep_learning/fig_pca_principal_component_analysis.png)

---

## Box plot of ~100 RNA-Seq samples

![](./images/deep_learning/100.samples.boxplot.png)


Each sample has the expression level of 12,000 genes. So the data set has 12,000,000 data points.  The means of RNA samples are very similar.  

---


## Histogram and density plots 

![](./images/deep_learning/histogram_density.png)

<pre> <code data-trim data-noescape>
# R code
library(ggplot2)
df0<-data.frame(x=rnorm(1000, mean=10,sd=10))
p<-ggplot(df0, aes(x=x))+geom_histogram(aes(y=..density..), color="grey60", fill="grey80")+
geom_density()+
theme(axis.text.y=element_text(face="bold", size=12))
print(p)
</code>
</pre>
---

## Density plots of ~100 RNA-Seq samples


![](./images/deep_learning/100.samples.densityplot.png)

The distribution is somewhat different between brain regions.


---


## Hierarchical clustering 


![](./images/deep_learning/brain.region.hclust.png)

Label of the sample is not part of the input data for clustering. And yet the samples from the same brain region stayed right next to each other.  


---


## Supervised Learning

* Training 	
	* Collect a set of data that has labels 
		* Images with text annotation of the object in the image
	* Select a mathematical model, adjust the parameter in the model  so the output equals to the label
	* Repeatedly adjust the parameters for all the samples in the data collection, with an effort to reduce overall error rate
* Testing
	* Run a set of new samples with labels through the model 
	* Record the number of errors.
* Deployment
	* Use the model to predict the label of completely new data.

---

## Decision Tree

<a href="http://www.r2d3.us/visual-intro-to-machine-learning-part-1/" target=_new><img src="./images/deep_learning/decisionTree.png"></a>

---

## Linear regression

![](./images/deep_learning/linear_regression.png)
<pre> <code data-trim data-noescape>
#Linear regression
library(ggplot2)
x0<-runif(10, min=0,max=9)
y0<-x0*rnorm(10,mean=1,sd=0.1)+rnorm(10,mean=0,sd=0.2)
dat<-data.frame(x=x0, y=y0)
summary(lm(x0~y0, dat))
P<-ggplot(dat, aes(x,y))+geom_point(color="grey40",size=4)+stat_smooth(method="lm")
print(P)
</code>
</pre>


---

## Gradient descent

![](./images/deep_learning/gradient_descent_example.gif)

![](./images/deep_learning/gradient_descent_error_surface.png)
---

## Logistic regression

![](./images/deep_learning/logit_regression.png)
<pre> <code data-trim data-noescape>
#Logistic regression
library(ggplot2)
x<-c(runif(20, min=1,max=5), runif(4, min=5,max=10), runif(20, min=10,max=15))
y<-c(rep(1,22), rep(0,22))
dat<-data.frame(X=x, Y=y)
p<-ggplot(dat, aes(X,Y))+geom_point(color="grey40")+stat_smooth(method="glm", method.args=list(family="binomial"), se=F)
print(p)
</code>
</pre>

---


## Rectified Linear Unit  (ReLU)
![](./images/deep_learning/relu.png)

<pre> <code data-trim data-noescape>
#ReLU
library(ggplot2)
relu<-function(x) sapply(x, function(z) max(-5,z))
x<-seq(from=-10, to=5, by=0.1)
y<-relu(x)
dat<-data.frame(X=x, Y=y)
P<-ggplot(dat, aes(x=X, y=Y))+geom_line(size=1.6, color="orange")
print(P)
</code>
</pre>


---

http://blog.hackerearth.com/gradient-descent-algorithm-linear-regression
