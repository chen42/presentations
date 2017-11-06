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

* Getting around 
* Working with text files and directories 
* Cut, sort, uniq, pipes
* Download and install programs
* Run one program on many files
* Run many programs on a set of files 
* Run many programs on many sets of files 

---

Getting around

### Login a remote server

```
ssh user@sub.domain.edu # secure shell

```
### Find out where you are and move around

```
pwd # current directory

ls # list files and dirs in the current directory

cd dir1 # change direclty to dir1 


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
working with text files

### read text files

```
more file_name

less file_name

cat file_name

```

---

working with text files

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
working with text files

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
working with  text files
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
working with  text files
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

for i in `ls *.vcf` ; do \ 
cut -f 2 $i >$i\_first10lines.vcf \
done

```
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
#!/bin/bash
#PBS -l nodes=1:ppn=2
#PBS -l walltime=00:00:59
cd /home/user/
/home/user/bin/samtools view -bS test.sam >test.bam 
```

---

### Install software (Samtools)

Get the source code
```
# easierst but may fail due to authentication 
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

