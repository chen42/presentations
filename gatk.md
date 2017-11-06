# Very Brief Intro to GATK
<hr style="color:royalblue">
## Hao Chen
hchen@uthsc.edu 
#### Assistant Professor
#### Department of Pharmacology, UTHSC

Nov 7th 2017

https://chen42.github.io/talks/gatk.html

<small>
Written using [Reveal.js](https://github.com/hakimel/reveal.js) and [markdown](https://help.github.com/categories/writing-on-github/)
</small>

---

### GATK

[GATK documentation](https://software.broadinstitute.org/gatk/documentation/)

[GATK best-practices](https://software.broadinstitute.org/gatk/best-practices/bp_3step.php?case=GermShortWGS&p=1)

[March 2015 GATK workshop](https://www.broadinstitute.org/partnerships/education/broade/best-practices-variant-calling-gatk-1)


---

### Install GATK

---

### Preprocessing

* [File format war](https://blastedbio.blogspot.co.uk/2011/10/fastq-must-die-long-live-sambam.html)

* [Map data to ref genome, BWA](http://bio-bwa.sourceforge.net/bwa.shtml)

	* Download Ecoli Genome from [NCBI](https://www.ncbi.nlm.nih.gov/nuccore/NC_000913.3?report=fasta)

	* Download Ecoli data from [Illumina](ftp://webdata:webdata@ussd-ftp.illumina.com/Data/SequencingRuns/MG1655/MiSeq_Ecoli_MG1655_110721_PF_R1.fastq.gz)
```
bwa index ecoli.fa
bwa aln ecoli.fa ecoli_miseq.fastq >aln.sai
bwa samse ecoli.fa aln.sai ecoli_miseq.fastq >aln.sam
less aln.sam
```
	
* [Mark duplicates](https://gatkforums.broadinstitute.org/gatk/discussion/2799/howto-map-and-mark-duplicates)

* [Recalibrate Bases](https://software.broadinstitute.org/gatk/documentation/article?id=2801)

---
### Variant discovry

* Call variants
	* HaplotypeCaller does local de novo assembly 
	* calls both SNPs and small indels
	* each genome has a genomic VCF file (gVCF)
* Joint calling
	* cohort wide VCF callset
	* runs fast
	* avoids the N+1 problem

---
### Filter variants

* Variant quality score recalibration (VQSR)
	* needs high-quality sets of know variants as the training set

---
### GATK  pipeline

[Two Pipeline Options](https://software.broadinstitute.org/gatk/documentation/pipelines.php)

Queue is being phased out

WDL [brief tour](https://software.broadinstitute.org/wdl/documentation/topic?name=wdl-scripts)

---


