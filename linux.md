# The Linux Command Line 101
<hr style="color:royalblue">
## Hao Chen
hchen@uthsc.edu 
#### Assistant Professor
#### Department of Pharmacology, UTHSC

Nov 7th 2017

https://chen42.github.io/talks/linux.html

<small>
Written using [Reveal.js](https://github.com/hakimel/reveal.js) and [markdown](https://help.github.com/categories/writing-on-github/)
</small>

---

## Outline

* Getting around (shell, more specifically, Bash) 
* Working with text files and directories 
* Cut, sort, uniq, pipes
* Put commands in text files (shell scripts)
* Run many programs on many sets of files (cluster)
* Download and install programs (as a user)
---


### Login a remote server

On Windows, you can use [putty](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html)

On Mac, there is a *terminal* app

```
ssh user@sub.domain.edu # secure shell

ssh one@128.169.5.89 # pass: userone
ssh two@128.169.5.89 # pass: usertwo
ssh three@128.169.5.89 # pass: userthree

```
### Find out where you are and move around

```
pwd # current directory

ls # list files and dirs in the current directory

cd dir1 # change directory to dir1 


```
---

#### Working with Directories (folders)

```
pwd # list the full path of my current directory

mkdir hg19 # make a new directory called hg19 

cd hg19 # change to the hg19 directory 

cd .. # move to the parent dir
 
cd ~ # go home

rmdir hg19 # remove dir hg19 (only when the dir is empty)

rmdir -rf hg19 # remove dir hg19 ( recrusive and force )

```

---

### read text files

```
more file_name

less file_name

cat file_name

```

---


### Edit text files
```
pico file_name

nano file_name

vi file_name

vim file_name

emacs file_name
```

Selecting a text editor is one of they key things you'll need to decide

---

### Copy and  delete files

```	
cp file_1 file_2
cp /etc/fstab ~
cp /etc/fstab fstab2
ls fs* # wild cared
rm fs*
ls fs*

```
---
### grep  (find)

```
grep word one_text_file
grep word text_file1 text_file2
grep "word1|word2" text_file # word1 or word2 
grep word1 text_file |grep text2 # word1 and word2
grep "^word1" text_file # line starts with word1
grep "word1$" text_file # line ends with word1
grep "word1\t" text_file # line contains word1 followd by a tab 
```
---
### wc  

```
wc -l text_file # number of lines 
grep -v "^#" test.vcf |wc -l # exclude the comments of a vcf file before counting lines

```
---

### cut, sort, uniq, pipes

```
less test.vcf

cut -f 2,4 test.vcf 
cut -f 2,4 test.vcf |sort |less
cut -f 4 test.vcf |sort | uniq 
cut -f 4 test.vcf |sort | uniq  -c 
cut -f 4 test.vcf |sort | uniq  -c |sort -rn |head 
cut -f 4 test.vcf |sort | uniq  -c |sort -rn |tail
```

---

### File compression

```
unzip compressed.zip
gunzip compressed.gz
bunzip2 compressed.bz2
```

---
### Redirect output  (save to file)

```
head test.vcf

head -n 20 test.vcf  >first20lines.vcf

echo "tail -n 20 test.vcf" 

echo "tail -n 20 test.vcf" >a_program # redirect into a text file

bash a_program  # run the text file as a command
 
echo "tail -n 20 test.vcf > last20lines.vcf" >a_program

bash a_program

ls 

```

---

### Redirect output (use as input)
run a program on many files

```
ls *.vcf
```

put the following in a text file named "test.sh"
```
#!/bin/bash
for i in `ls *.vcf` ; do \  # note the backtick,  not single quote
head $i >$i\_first10lines.vcf \
done

```
Run the following command 

```
ls -l test.sh
chmod a+x test.sh # "all" can run (eXecute) the program
ls -l test.sh
./test.sh
```
---

### Screen, worthy of  its own slide

```
screen 

```

Ctrl-ac # create a virtual teriminal 

Ctrl-a1 # switch to virtural terminal 1

Ctrl-ad # dissociate from this session

```
screen -RD # force reconnect to a running session 
```

---
### On to the cluster


Cluster Architecture [hera](http://rhodes.uthsc.edu/index.php/Cluster_@_Hera)

Cluster status [hera](http://hera.uthsc.edu/ganglia/)



---
### Run many programs on many files (on a cluster)

Do not run the programs directly on headmaster!!!  Put the commands into a shell program and submit it.

```
qsub job_file

qstat 

qhost

pbsnodes

```
Requesting multiple cores (threads) are common, request multiple nodes are rare. This depends on the software you are using.

```
#PBS -l nodes=1:ppn=1,cput=00:00:40
cd /home/user/
/home/user/bin/samtools view -bS test.sam >test.bam 
```

---

### Install software (Samtools)

Get the source code
```
# easiest but may fail due to authentication 
wget https://github.com/samtools/samtools/releases/download/1.6/samtools-1.6.tar.bz2
# using a text browser, worth a try 
links www.htslib.org/download 
# transfer from local machine
scp samtools-1.6.tar.bz2  user@server.com:/home/user

```
Install
```
tar xvf samtools-1.6.tar.bz2
ls
cd samtools-1.6
./configure --prefix=/home/username/bin
make 
make install

```
---

### PATH 

Bash looks through many places to find your software

```
echo $PATH # this is the earch path

# add a directory to your search path
export PATH=/home/username/bin:$PATH

# run with absolute path
/home/user/install_dir/software_name

# this may get you 
./samtools # when you are in the directory where the software is installed, add ./ 
```
---
### git and GitHub

* git for version control
* github for code sharing and collaboration

```
git add file_1 # add a file to the repo
git commit -m "finally working" # save a version, with comments
git push origin master  # let everyone see your mistakes 

git clone # get a copy of the code 
git log # what have I done? 
git checkout # go back history
git diff # what's changed?
```

