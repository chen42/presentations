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

Download the file, uncompress, and that is it. But you do need a recent java (1.8). 

---

### Preprocessing

* [File format war](https://blastedbio.blogspot.co.uk/2011/10/fastq-must-die-long-live-sambam.html)

* [Map data to ref genome, BWA](http://bio-bwa.sourceforge.net/bwa.shtml)

	* Download Ecoli Genome from [NCBI](https://www.ncbi.nlm.nih.gov/nuccore/NC_000913.3?report=fasta)

	* [Download](ftp://webdata:webdata@ussd-ftp.illumina.com/Data/SequencingRuns/MG1655/MiSeq_Ecoli_MG1655_110721_PF_R1.fastq.gz) Ecoli data from Illumina 
		* only first 1000 reads are used for the Raspi practice  

* [Read group](https://software.broadinstitute.org/gatk/documentation/article?id=6472) (all reads from a single run belong to the same RG)

```
bwa index ecoli.fa
bwa aln ecoli.fa ecoli_miseq.fastq >aln.sai
bwa samse -R '@RG	ID:group1	SM:smp1	PL:illumina	LB:lib1	PU:unit1' ecoli.fa aln.sai ecoli_miseq.fastq >aln.sam
less aln.sam
```


---
### Preprocessing, cont'd

* [Mark duplicates](https://gatkforums.broadinstitute.org/gatk/discussion/2799/howto-map-and-mark-duplicates)

```
java -jar picard.jar SortSam INPUT=aln.sam OUTPUT=sorted_reads.bam SORT_ORDER=coordinate
java -jar picard.jar MarkDuplicates INPUT=sorted_reads.bam OUTPUT=dedup_reads.bam METRICS_FILE=metrics.txt

```

* [Recalibrate Bases](https://software.broadinstitute.org/gatk/documentation/article?id=2801)

```
# generate recal_table
java -jar GenomeAnalysisTK.jar -T BaseRecalibrator -R ecoli.fa -I dedup_reads.bam -knownSites ecoli.vcf -o recal_data.table
# apply it to the data
java -jar GenomeAnalysisTK.jar -T PrintReads -R ecoli.fa -I dedup_reads.bam -BQSR recal_data.table -o recal_reads.bam

```

---
### Variant discovry, individual genomes

* Call variants
	* HaplotypeCaller does local de novo assembly 
	* calls both SNPs and small indels
	* each genome has a genomic VCF file (gVCF)
	* tutorial outdated
	* so head to the [documentation](https://software.broadinstitute.org/gatk/documentation/tooldocs/current/org_broadinstitute_gatk_tools_walkers_haplotypecaller_HaplotypeCaller.php) for the most recent info

```
java -jar GenomeAnalysisTK.jar -T HaplotypeCaller -R ecoli.fa -I recal_reads.bam \
--genotyping_mode DISCOVERY -stand_emit_conf 10 -stand_call_conf 30 -o raw_variants.vcf

```


```
# just call this file
java -jar GenomeAnalysisTK.jar -R ecoli.fa -T HaplotypeCaller \
-I recal_reads.bam  -o output.raw.snps.indels.vcf
```
---

### Variant discovery, joint calling
* Joint calling
	* cohort wide VCF callset
	* runs fast
	* avoids the N+1 problem

```
# use the GVCF workflow, step1, generate gVCF file
java -jar GenomeAnalysisTK.jar -R ecoli.fa -T HaplotypeCaller -I recal_reads.bam \
--emitRefConfidence GVCF -variant_index_type LINEAR -variant_index_parameter 128000\ 
-o output.raw.g.vcf

# step two, joint calling
java -jar GenomeAnalysisTK.jar -T GenotypeGVCFs -R ecoli.fa\ 
--variant output.raw.g.vcf --variant output.raw.g.vcf \
-o joint_output.vcf 
```

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
* .. 
```
       __-===-__
   _agN########Ngg_
 _N##N@@""  ""9NN##Np_
d###P           N####p
"^^"            T####p
                d###Pp
               /g##@F
            _gN##@P
          gN###F"
         d###F
        0###F
        0###F
        0###F
        "NN@'

         ___
        q###r
         ""
```
