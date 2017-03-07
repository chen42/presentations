# Analyzing big data: from simple clustering to deep learning
<hr style="color:royalblue">
## Hao Chen
hchen@uthsc.edu 
#### Assistant Professor
#### Department of Pharmacology, UTHSC

March 7th 2017

https://chen42.github.io/talks/ml.html

---


## Outline

* Data, Big data
* Unsupervised learning
	* Clustering (e.g., Hierarchical clustering) 	
	* Dimension reduction (e.g., Principal component analysis)
* Supervised learning
	* Regression
	* Deep neural networks	
---

## Learning Objectives

* Understand a few commonly used algorithms 

* Understand the idea behind deep neural network

* Appreciate the tremendous potential of data science in medicine

---

## What is big data

* Big data 
	* Volume 
		* Boeing 737 generates 240 terabytes of flight data during a single flight
	* Velocity 
		* sensors can have millisecond resolutions
	* Variety
		* geospatial, audio, video
* Major difference between "Big" data and "small" data 
	* analysis methods 
	* analysis objective  
		* Hypothesis testing vs Discovery vs prediction

---

## Some data 

<font size=1>

2004-01, 2004-02, 2004-03, 2004-04, 2004-05, 2004-06, 2004-07, 2004-08, 2004-09, 2004-10, 2004-11, 2004-12, 2005-01, 2005-02, 2005-03, 2005-04, 2005-05, 2005-06, 2005-07, 2005-08, 2005-09, 2005-10, 2005-11, 2005-12, 2006-01, 2006-02, 2006-03, 2006-04, 2006-05, 2006-06, 2006-07, 2006-08, 2006-09, 2006-10, 2006-11, 2006-12, 2007-01, 2007-02, 2007-03, 2007-04, 2007-05, 2007-06, 2007-07, 2007-08, 2007-09, 2007-10, 2007-11, 2007-12, 2008-01, 2008-02, 2008-03, 2008-04, 2008-05, 2008-06, 2008-07, 2008-08, 2008-09, 2008-10, 2008-11, 2008-12, 2009-01, 2009-02, 2009-03, 2009-04, 2009-05, 2009-06, 2009-07, 2009-08, 2009-09, 2009-10, 2009-11, 2009-12, 2010-01, 2010-02, 2010-03, 2010-04, 2010-05, 2010-06, 2010-07, 2010-08, 2010-09, 2010-10, 2010-11, 2010-12, 2011-01, 2011-02, 2011-03, 2011-04, 2011-05, 2011-06, 2011-07, 2011-08, 2011-09, 2011-10, 2011-11, 2011-12, 2012-01, 2012-02, 2012-03, 2012-04, 2012-05, 2012-06, 2012-07, 2012-08, 2012-09, 2012-10, 2012-11, 2012-12, 2013-01, 2013-02, 2013-03, 2013-04, 2013-05, 2013-06, 2013-07, 2013-08, 2013-09, 2013-10, 2013-11, 2013-12, 2014-01, 2014-02, 2014-03, 2014-04, 2014-05, 2014-06, 2014-07, 2014-08, 2014-09, 2014-10, 2014-11, 2014-12, 2015-01, 2015-02, 2015-03, 2015-04, 2015-05, 2015-06, 2015-07, 2015-08, 2015-09, 2015-10, 2015-11, 2015-12, 2016-01, 2016-02, 2016-03, 2016-04, 2016-05, 2016-06, 2016-07, 2016-08, 2016-09, 2016-10, 2016-11, 2016-12, 2017-01, 2017-02, 2017-03

99, 100, 100, 98, 91, 88, 83, 85, 93, 94, 92, 79, 89, 91, 87, 87, 85, 79, 73, 75, 82, 84, 86, 69, 80, 80, 82, 76, 78, 70, 63, 67, 74, 75, 76, 62, 72, 71, 70, 68, 70, 63, 60, 61, 69, 69, 71, 59, 67, 68, 65, 68, 64, 60, 54, 57, 68, 65, 66, 55, 62, 63, 64, 63, 61, 58, 52, 55, 63, 65, 64, 53, 62, 63, 64, 61, 60, 56, 50, 52, 61, 60, 62, 50, 57, 59, 59, 54, 56, 53, 47, 49, 57, 59, 60, 48, 57, 58, 57, 54, 55, 48, 45, 48, 58, 59, 55, 46, 53, 56, 55, 55, 53, 48, 44, 46, 57, 59, 58, 48, 54, 57, 55, 53, 52, 48, 43, 47, 60, 60, 57, 48, 54, 57, 57, 54, 52, 49, 42, 48, 60, 59, 58, 48, 56, 58, 56, 55, 52, 48, 41, 48, 60, 59, 58, 48, 57, 60, 75

69, 69, 70, 70, 67, 67, 69, 71, 66, 63, 68, 67, 70, 75, 67, 64, 69, 80, 100, 75, 67, 68, 69, 65, 64, 63, 61, 63, 61, 61, 65, 62, 59, 59, 61, 61, 56, 55, 54, 55, 56, 57, 57, 55, 53, 51, 55, 56, 56, 61, 55, 54, 54, 54, 56, 55, 50, 52, 55, 54, 53, 53, 53, 54, 54, 54, 56, 57, 54, 53, 57, 54, 56, 54, 54, 56, 59, 56, 58, 58, 53, 54, 56, 56, 58, 63, 63, 70, 82, 81, 81, 78, 76, 73, 83, 85, 82, 90, 82, 73, 70, 68, 72, 68, 64, 64, 64, 64, 63, 65, 64, 64, 66, 64, 65, 67, 61, 63, 65, 63, 65, 65, 66, 66, 66, 65, 66, 69, 63, 63, 67, 63, 69, 71, 69, 67, 70, 68, 77, 81, 79, 77, 79, 77, 75, 72, 72, 74, 73, 71, 75, 72, 73, 75, 73, 73, 77, 75, 71

4, 4, 2, 3, 4, 3, 4, 5, 4, 3, 4, 4, 4, 4, 4, 4, 2, 4, 3, 2, 3, 4, 4, 5, 3, 3, 3, 4, 2, 2, 2, 2, 2, 4, 4, 2, 3, 2, 3, 3, 3, 2, 3, 3, 3, 3, 3, 2, 2, 3, 3, 3, 3, 3, 2, 3, 4, 3, 3, 3, 3, 4, 3, 3, 3, 3, 3, 3, 3, 4, 3, 3, 3, 3, 4, 4, 3, 4, 2, 3, 2, 4, 3, 3, 3, 3, 3, 2, 3, 4, 3, 3, 3, 4, 4, 3, 3, 4, 4, 4, 5, 4, 3, 4, 4, 5, 7, 5, 5, 6, 7, 8, 9, 8, 8, 7, 9, 10, 9, 10, 11, 14, 13, 13, 13, 12, 12, 14, 15, 15, 15, 23, 24, 25, 27, 24, 26, 29, 29, 27, 30, 32, 36, 35, 44, 43, 55, 55, 54, 54, 53, 55, 61, 64, 69, 71, 75, 84, 100
44, 78, 82, 100, 62, 46, 55, 50, 53, 63, 71, 56, 46, 70, 60, 90, 63, 62, 41, 40, 46, 51, 74, 54, 48, 46, 64, 67, 61, 39, 41, 34, 46, 59, 60, 46, 34, 47, 49, 59, 54, 37, 32, 35, 35, 59, 62, 39, 28, 40, 50, 62, 49, 31, 31, 32, 44, 55, 54, 44, 37, 45, 55, 67, 49, 39, 32, 33, 47, 63, 65, 52, 39, 59, 63, 75, 56, 41, 35, 42, 46, 58, 62, 56, 41, 53, 57, 67, 61, 42, 39, 43, 52, 60, 66, 54, 40, 55, 60, 70, 62, 44, 36, 40, 54, 58, 63, 56, 43, 53, 59, 75, 66, 44, 37, 39, 54, 58, 67, 59, 38, 55, 62, 74, 67, 43, 38, 45, 53, 62, 71, 64, 40, 54, 67, 77, 64, 46, 35, 38, 52, 62, 71, 61, 37, 52, 63, 79, 64, 39, 36, 40, 53, 62, 75, 57, 43, 56, 81
</font>

---

## Cherry picking; Visualization

![](./images/deep_learning/deepLearning_google_trends.png)


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

## Data for Hierarchical clustering

![](./images/deep_learning/100.samples.boxplot.png)


Each sample has the expression level of 12,000 genes. So the data set has 12,000,000 data points.  The means of RNA samples are very similar.  

---
<!---

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

## Density plots of ~100 RNA-Seq samples


![](./images/deep_learning/100.samples.densityplot.png)

The distribution is somewhat different between brain regions.


--->


## Hierarchical clustering 


![](./images/deep_learning/brain.region.hclust.png)

Label of the sample is not part of the input data for clustering. And yet the samples from the same brain region stayed right next to each other.  


---


## Supervised Learning

* Training 	
	* Collect a set of data that has labels 
		* Images with text annotation of the object in the image (e.g. [hand written digits](https://www.kaggle.com/c/digit-recognizer))
	* Select a mathematical model, adjust the parameter in the model  so the output equals to the label
	* Repeatedly adjust the parameters for all the samples in the data collection, with an effort to reduce overall error rate
* Testing
	* Run a set of new samples with labels through the model 
	* Record the number of errors.
* Deployment
	* Use the model to **predict** the label of completely new data.

---

## Decision Tree

<a href="http://www.r2d3.us/visual-intro-to-machine-learning-part-1/" target=_new><img src="./images/deep_learning/decisionTree.png"></a>

---

## Linear regression

Y=a*X+b

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

## Linear regresssion by iterative updates [R code](https://www.r-bloggers.com/linear-regression-by-gradient-descent/)



![](./images/deep_learning/gradient_descent_for_linear_regression.gif)


<pre> <code>
## theta is the parameter, alpha is learning rate
for (i in 1:num_iters) {
  error <- (X %*% theta - y)
  delta <- t(X) %*% error / length(y)
  theta <- theta - alpha * delta
}
</code>
</pre>

---

## Gradient descent error surface
<a href="https://spin.atomicobject.com/2014/06/24/gradient-descent-linear-regression/">
<img src="./images/deep_learning/gradient_descent_error_surface.png"></a>

---
## Gradient descent and deep neural network


![](http://neuralnetworksanddeeplearning.com/images/tikz40.png)


---

## A neuron: biological model vs mathematical model 

<table><tr><td width=50%>
<img src="./images/deep_learning/neuron.gif" width=90%>
</td>
<td width=50%>
<img src="./images/deep_learning/perceptron.png" width=90%>
</td></tr>
</table>



---


## Rectified Linear Unit  (ReLU)

Activation of the neurons

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


## Logistic regression

Output layer

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

## Multilayer neural networks and backpropagation

<a href="http://www.nature.com/nature/journal/v521/n7553/abs/nature14539.html">
<img src="./images/deep_learning/network_structure.png">
</a>


---
## A toy neural network 

<a href="http://www.emergentmind.com/neural-network" target=_new>
<img src="./images/deep_learning/toy.png">
</a>

---

## Convolutional neural network

<a href="http://www.nature.com/nature/journal/v521/n7553/abs/nature14539.html">
<img src="./images/deep_learning/cnn.png">
</a>

---

<a href="https://www.ncbi.nlm.nih.gov/pubmed/28117445">
<img src="./images/deep_learning/dermatologist.png">
</a>
![](./images/deep_learning/skin_cnn.png)

---

##  Dimension reduction on the last hidden layer 

![](./images/deep_learning/tSNE.png)


---


![](./images/deep_learning/google_research_blog.png)


---

## Can deep neural networks be used on genetics data?

<img src="./images/deep_learning/gwas.jpg">

---
## Use genetic variation to predict skin color in rats

<pre><code data-trim data-noescape>
#python
from keras.models import Sequential
from keras.layers import Dense, Dropout, Activation, Flatten

# read in the data, split training vs testing 
dataset=pd.read_csv("./hs_snps.csv",delimiter=",", dtype="float", na_filter=True)
X = dataset[:,1:18571] #chr1  SNPs
Y = dataset[:,0] #coat color
X_train, X_test, y_train, y_test = train_test_split(X, Y, test_size=0.25, random_state=42)

# construct the network
model = Sequential()
model.add(Dense(200, input_dim=18570, init='uniform', activation='relu'))
model.add(Dense(200, init='uniform', activation='relu'))
model.add(Dense(5, init='uniform', activation='softmax'))

# compile the model
model.compile(loss='categorical_crossentropy', optimizer='adam', metrics=['accuracy'])

# fit the model
model.fit(X_train, y_train, nb_epoch=100, batch_size=200)

#evaluate the model and print results
scores = model.evaluate(X_test, y_test)
print("%s: %.2f%%" % (model.metrics_names[1], scores[1]*100))
</code>
</pre>


---

##  What is left for human?

<iframe width="560" height="315" src="https://www.youtube.com/embed/aR5N2Jl8k14" frameborder="0" allowfullscreen></iframe>
