## White Station High School 
----
# Team 5045  
----
## Python Programming  

Advisor: Hao Chen 

inbox@haochen.name


---


## How can we be ready to program the robot 
### by Jan 2019? 

* [Week 1](#week1) Oct 04, 2018 Introduction to Python, GitHub
* [Week 2](#week2) Oct 11, 2018 Function in Python, GitHub practice, markdown, text editor
* [Week 3] Object Oriented Python
* [Week 4] Problem solving in Python 
* [Week 5] Using Python libraries: Math, enum; collections; datetime; pickle; pathfinder; os 
* [Week 6] WPILIB, the robotics interface

---

<section id="week1">

## Introduction to Python

https://www.w3schools.com/python/default.asp

http://getpython3.com/diveintopython3/table-of-contents.html


* Basic syntax
  * indentation (i.e. space) has meaning
* Data types 
  * numbers and basic math operation (addition, substraction)
  * strings and basic string operation (concatenation) 
  * lists, dictionaries
* Programming logic
  * follow the flow of the code execution
  * if  .. else
  * for loops
  * while loops
* Test yourself    
  * https://www.w3schools.com/python/exercise.asp


---

## Introduction to github

https://medium.com/@abhishekj/an-intro-to-git-and-github-1a0e2c7e3a2f

* Install https://desktop.github.com/

* Purpose: add version to your code
  * once added, you never lose it, even if you delete it (using the regular method) 
  * you can compare the differences between versions
* basic concepts 
  * branch: master/testing/experimenting
  * **fork**: copy other people's code and make that *your own* 
    * for the purpose of  **modify** it 
    * usually done on github.com
  * **clone**: copy remote code to your local computer  
    * for the purpose of **using** it 
    * usually done on your computer
---
## Git commands

```
   git init ## starting a new repo
   git clone ## get someone else's code
   git add this_file # I changed this_file, or I want to save a new file
   git commit -m "I am just starting" # I am saving this with a comment
   git push origin master # up to the cloud
   git pull # get the latest from the cloud
```


---

<section id="week2">

## Function in Python

* Give lines of code a name so that you can use it over and over
* You can also change the output by giving it a different input 


```
def myFun(fname):
	print("Hello " + fname + ",\n" + "How are you today? I have a long line of text I want to print, and every time I print it I want to embed a different name\n")  
	return(fname.upper())
	
upper=myFun("hao")
myFun(upper)
```
```
Hello hao,
How are you today? I have a long line of text I want to print, and every time I print it I want to embed a different name

Hello HAO,
How are you today? I have a long line of text I want to print, and every time I print it I want to embed a different name
```
---

## GitHub practice

* Create a markdown file
	* [Markdown Intro]( https://guides.github.com/features/mastering-markdown)
	* [Detailed Instructions on the markdown format](https://help.github.com/articles/basic-writing-and-formatting-syntax/)

* Try a few text editors
	* [a guide for text editors](https://realpython.com/python-ides-code-editors-guide/)
	* Eclipse / sublime text / atom / emacs / vim

---

## Try your python skills

* Can you write a program to print the following diamond?
	* You can start with a diamond with only one symbol (all **x** or **o**)  
	* Can you write your code so that you can also produce a similar diamond with  5 or 9 layers?
	

```
     x
    xox
   xoxox
  xoxoxox 
   xoxox
    xox
     x

```
