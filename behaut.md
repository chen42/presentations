
#### Anat 841 Behavior Neuroscience

# automating rodent behavior experiments 
## the DIY way  

<hr>


### **Hao Chen**, Department of Pharmacology, UTHSC

 December 11, 2018, 2:00-3:30p

https://chen42.github.io/talks/behaut.html

<small> Written using [Reveal.js](https://github.com/hakimel/reveal.js) and [markdown](https://help.github.com/categories/writing-on-github/) </small>

---

## outline

* Analysis of rodent behaviors and approaches for automation
* Know your tools  
* Example systems

---

## Typical rodent behavior experiments

* Only visual observation --> camera 
  * Open field, plus maze, object interaction, social interaction
  * Video analysis
* Measure a specific reaction --> sensor
  * Tail immersion
  * Tremor
* Operant conditioning  --> sensor + motor
  * Lever pressing
  * Nose poking
  * Licking
  * Touching

---

#### Single board computers

## Raspberry Pi Family

<a href="https://maker.pro/raspberry-pi/tutorial/how-to-get-started-with-your-first-raspberry-pi" ><img src="https://raspi.tv/wp-content/uploads/2018/03/Pi-Family-Photo-Master-Mar2018-1500-1-939x1024.jpg" width=50%, style="transform:rotate(270deg);"></a>

---

## Raspberry Pi 3B+

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Raspberry_Pi_3_B%2B_%2839906369025%29.png/1280px-Raspberry_Pi_3_B%2B_%2839906369025%29.png">


---

## GPIO (general purpose input-output)

<img src="https://www.raspberrypi-spy.co.uk/wp-content/uploads/2012/06/Raspberry-Pi-GPIO-Layout-Model-B-Plus-rotated-2700x900.png">

* Ground (grey), 5V (pink), 3V(orange),
* GPIO (either input or output, green)
* Special I/O protocols
  *  I2C (magenta)
  *  serial (purple)
  *  SPI (blue)

---


## Operating system for the RPi

* Raspbian is the official OS 
  * graphical user interface (GUI) 
  * command line interface (CLI)
  * derived from Debian Linux
* Why you should learn some Linux commands 
  * Servers
  * Mac OS 
  * Supercomputer
  * Windows

---

## Sensors: Camera

<img src="https://www.raspberrypi.org/app/uploads/2017/05/Pi-Camera-attached-1-1390x1080.jpg", width=60%> 

---

## Sensors: Temperature 

<a href="https://pimylifeup.com/raspberry-pi-temperature-sensor/"><img src="https://cdn.pimylifeup.com/wp-content/uploads/2016/03/Raspberry-Pi-Temperature-Sensor-Diagram-v2.png"></a>

---

## Sensors: Temperature

<a href="https://raspberrypi.stackexchange.com/questions/48357/connecting-ds18b20-temperature-sensor-with-rj45-connector">
<img src="https://i.stack.imgur.com/5EKzW.png"></a>

---

## Sensors: Capacitive touch sensor

<iframe width="780" height="560" src="https://www.youtube.com/embed/Wk76UPRAVxI?start=15" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<a href="https://www.forbes.com/profile/limor-fried/?list=top-tech-women-america#2077af9a4ecc">America's top 50 women in tech, 2018</a>

---

## Output: Buzzer 

<a href="https://www.sunfounder.com/learn/sensor-kit-v2-0-for-raspberry-pi-b-plus/lesson-10-buzzer-module-sensor-kit-v2-0-for-b-plus.html">
<img src="https://www.sunfounder.com/media/wysiwyg/swatches/sensor_kit_v2_0_for_b_plus/lesson-10-buzzer-module/fdsfdsfd.png" width=50%> </a>

---

## Output: LED

<a href="https://thepihut.com/blogs/raspberry-pi-tutorials/27968772-turning-on-an-led-with-your-raspberry-pis-gpio-pins">

<img src="https://cdn.shopify.com/s/files/1/0176/3274/files/LEDs-BB400-1LED_bb_grande.png?6398700510979146820" width=40% style="transform:rotate(270deg);"></a>

---

## Output: LCD 

<iframe width="780" height="560" src="https://www.youtube.com/embed/Fj3wq98pd20?start=30" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

---

## Output: motor

<a href="https://projects.raspberrypi.org/en/projects/physical-computing/16">
<img src="https://projects-static.raspberrypi.org/projects/physical-computing/0cb2cbd34292a05a668aeea3f291ceb3c7d9cd83/en/images/mcb-wiring.png"></a>

---

## Microcontrollers

### Arduino

<img src="https://cdn.sparkfun.com/assets/9/1/e/4/8/515b4656ce395f8a38000000.png">

<a href="https://www.arduino.cc/en/Guide/Introduction"> Input-Output Coupling</a>

---

## Radio frequency ID

<img src="https://pragra.files.wordpress.com/2008/06/tag-specification.jpg" width=60%>


---

## RFID reader

<img src="https://camo.githubusercontent.com/9d22b7aceaceae905d17ced4b82858834b00cfab/687474703a2f2f7777772e736565656473747564696f2e636f6d2f646f63756d656e742f706963732f3132354b687a253230554152542e6a7067">


---

## 3D printing

<iframe width="780" height="560" src="https://www.youtube.com/embed/ZcohRrFfmvc?start=404" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

---

## Example 1: RFID reader
<a href="https://github.com/chen42/openbehavior/tree/master/RFID">
<img src="./images/rpi_rfid_reader.jpg"></a>


---

## Example 2: Environment sensor

<a href="https://github.com/chen42/openbehavior/tree/master/envSensors">

<img src="https://raw.githubusercontent.com/chen42/openbehavior/master/envSensors/images/envSensor4.jpg" width=60%>

</a>


---

## Example 3: Operant Licking

<a href="https://github.com/chen42/openbehavior/blob/master/operantLicking/Assembly.md"> 
<img src="https://raw.githubusercontent.com/chen42/openbehavior/master/operantLicking/images/assembled.jpg" width=50%> 
</a>

<a href="https://peerj.com/articles/2981/"> Peer J Article </a>

---


## Example 4. Tremor 

<a href="https://github.com/chen42/openbehavior/tree/master/ratremor">

<img src="https://github.com/chen42/openbehavior/raw/master/ratremor/ratremor_prototype.jpg" width=70%></a>

---

## Example 6. Tail Immersion

<a href="https://github.com/chen42/openbehavior/tree/master/RFID">
<img src="./images/rpi_tail_immersion.jpg">
</a>

---
## Example 6: Record video

<img src="./images/rpi_camera_tripod.jpg" width=60%>

---

## Example 7. Analyze social behavior

#### Use 3D printed ear tag with different colors to identify individual rats

 <img src="./images/many_colorful_eartags.jpg" width=60%>

---

## Social interaction between rats 

<iframe width="500" height="500" src="https://www.youtube.com/embed/mJglzLs3RNo" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>


---

## Three chamber social interaction test
<a href="https://med.stanford.edu/sbfnl/services/bm/si/three-chamber.html">
<img src="https://med.stanford.edu/sbfnl/services/bm/si/three-chamber/_jcr_content/main/panel_builder_1442233973/panel_1/image_1850971973.img.full.high.png" width=40%>
</a>

---

## Object recognition

<img src="https://d26pej6xfl28et.cloudfront.net/wp-content/uploads/2017/08/AI_Object_Recognition_Feature_Img.jpg?">

---

## Neural Network
### Modeling one neuron 

<img src="https://cdn-images-1.medium.com/max/1600/1*v88ySSMr7JLaIBjwr4chTw.jpeg" width=70%>

---

## Deep Neural Network
### Fully connected
<img src="http://www.electronicdesign.com/sites/electronicdesign.com/files/MachineLearning_WTD_Fig3.png" width=70%>

---

## Deep Neural network

### Training the network

<a href="https://theclevermachine.wordpress.com/tag/backpropagation/">
<img src="./images/deepvar/fprop_bprop5.png" width=70%>

</a>


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

## Deep Neural network

### ConvNet, CNN

![](https://www.mathworks.com/content/mathworks/www/en/discovery/convolutional-neural-network/jcr:content/mainParsys/image_copy.adapt.full.high.jpg/1523891796216.jpg)

---

## Visual example of a ConvNet

<a href="http://scs.ryerson.ca/~aharley/vis/conv/"><img src="https://ujwlkarn.files.wordpress.com/2016/08/conv_all.png?w=1024"></a>


Author: [Adam Harley](http://www.cs.cmu.edu/~aharley/)

---

## YOLO (2016)

![](https://cdn-images-1.medium.com/max/1040/1*ZbmrsQJW-Lp72C5KoTnzUg.jpeg)

S x S grid, each grid predict a few bounding boxes. Each bounding box has x, y, w, h, confidence, and class probability. 

---

## YOLO v3 (2018)

![](https://cdn-images-1.medium.com/max/1300/1*d4Eg17IVJ0L41e7CTWLLSg.png)

[towarddatascience.com](https://towardsdatascience.com/yolo-v3-object-detection-53fb7d3bfe6b)

---

## YoRodents: Labeling images

<img src="./images/deep_learning/labelRatBodyParts.png" width=60% >

### 8093 images so far

---


## Training a custom YOLO network

<img src="./images/deep_learning/training_progression.png" width=40%>

```
darknet detector train rat12class.data yolo_12_class.cfg darknet19_448.conv.23 
```

---

## Detecting objects using the trained network

<img src="./images/deep_learning/epoc30000_whiteEartags1_0001482.jpg" width=40%>

---

## Prediction probability of 9 classes

<img src="./images/deep_learning/prob_comparison_dualGPU40k.svg" width=60%>

---

## Reconstructing behavior 

* Re-assemble bounding boxes into **individuals** based on ear tag color in python
* Slightly compress time course (30fps -> 10fps) by taking the median 
* Imput missing body parts using Amelie package in R
* Smooth the imputed data using Lowess in R 

---

## From bounding box to behavior 

* Distance and velocity 
	* Calculate distances between different objects (nose-nose, nose-anog, etc)
	* Calculate speed and direction of travel
* Social behavior
	* Nose-nose 
	* Nose-body
	* Nose-anogenital 
	* Follow 
	* Grouping (active join, passive joing, leaving) 
	* Huddle 
 
---

## Putting everything together 

<iframe width=80% height="450" src="https://www.youtube.com/embed/Lwfg2t9nXcI?start=45" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

---

## Visualization is good for detecting errors

<img src="./images/deep_learning/socialgraph.png" width=80%>

---

## Time course of behaviors 

<img src="./images/deep_learning/circos.png" width=50%>

---

## Mask R-CNN (2017)

![](https://cdn-images-1.medium.com/max/2000/1*6CClgIKH8zhZjmcftfNoEQ.png)

---

## Summary

* Single board computers are useful for automating many rodent behavioral experiments
	* RFID chips are cheap ($1)  
	* Many types of sensors can be used. 
	* Motors or lights or tone generators can be used to provide stimulus.
* 3D printers can be used to make various parts 
* Computer programming skills are useful, for the rest of your life

---

## Hands on 

* Linux command line 
	* <a href="https://chen42.github.io/talks/linux.html"> Hao's tutorial </a> 
* Openscad
	* <a href="https://www.makeuseof.com/tag/beginners-guide-openscad-programming-3d-printed-models/">Makeuseof.com tutorial</a>
	* <a href="http://edutechwiki.unige.ch/en/OpenScad_beginners_tutorial#Primitive_Solids"> EduTech Wiki</a>
