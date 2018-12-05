# The Linux Command line 
#### just enough to get you started 
<hr style="color:royalblue">
### Hao Chen

hchen@uthsc.edu 

Department of Pharmacology, UTHSC

December 13, 2018

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

---

### Find out where you are and move around

```
pwd # current directory

ls # list files and dirs in the current directory

ls -l # long format

ls -t # sort by time

ls -a # see the dot and dots?

```
---

#### Working with Directories (folders)

```

mkdir hg19 # make a new directory called hg19 

cd hg19 # change to the hg19 directory 

cd .. # move to the parent dir
 
cd ~ # go home

rmdir hg19 # remove dir hg19 (only when the dir is empty)

rmdir -rf hg19 # remove dir hg19 (recrusive and force)

```

---

### Copy and  delete files

```	
cp /home/share/test1.vcf .
cp /home/share/test2.vcf .
ls
mv test2.vcf test3.vcf  # move, but actually rename
ls 
rm test3.vcf # remove, i.e. delete !! there is no undo !!
ls -l

```
---
### read text files

```
cat test1.vcf 

more test1.vcf

less test1.vcf

cat test1.vcf | head # this is a pipe, you'll see a lot of it

```

---

### Edit text files
```
pico test1.vcf 

nano test1.vcf

vi test1.vcf

vim test1.vcf # may not be available on all linux systems

emacs test1.vcf # may not be available 
```

Choosing a text editor is one the most important things of your life 

---

### grep  (find)

```
grep word one_text_file
grep word text_file1 text_file2
grep "word1|word2" text_file # word1 or word2  # the bar is OR
grep word1 text_file | grep text2 # word1 and word2 # the bar is a pipe
grep "^word1" text_file # line starts with word1
grep "word1$" text_file # line ends with word1
grep "word1\t" text_file # line contains word1 followd by a tab 
```
---
### wc  

```
wc -l test1.vcf # number of lines 
grep -v "^#" test1.vcf |wc -l # -v  exclude the comments of a vcf file before counting lines

```
---

### cut, sort, uniq, pipes

```
head test.vcf

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
gzip test1.vcf
ls 
less test1.vcf.gz
zcat test1.vcf.gz
gunzip test1.vcf.gz

bzip2 test1.vcf 
ls
bunzip2  test1.vcf.bz2
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
cp /home/share/*.vcf .
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
ls
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
### On to the ACF 

<a href="https://www.jics.utk.edu/acf">
<img src="https://www.jics.utk.edu/files/images/ACFDiagram.png" width=60%>
</a>


---
### Run many programs on many files (on a cluster)

* Do not run the programs directly on headmaster!!!  Put the commands into a shell program and submit it.

```
qsub job_file

qstat 

qhost

pbsnodes

```
* Requesting multiple cores (threads) are common, request multiple nodes are rare. This depends on the software you are using.

* put the following in a file, name it sam2bam.sh
```
#PBS -l nodes=1:ppn=1,cput=00:00:40
cd /home/user/
/home/user/bin/samtools view -bS test.sam >test.bam 
```

* then run

```
qsub sam2bam.sh

ls sam2bam* 
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

