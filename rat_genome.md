# Whole Genome Sequencing of Nine Rats Using Linked-Reads Technology 

<hr>

## Hao Chen, Ph.D.

### Department of Pharmacology
### University of Tennessee Health Science Center, Memphis, TN

Jan 13, 2019, IROC

---

## Mapping of short reads to similar genomic regions

<img src="./images/ratGenome/mapping_ambi.png">

---


## The Idea of Linked-Reads

<img src="./images/ratGenome/mapping_uniq.png">

---

## Chromium Linked-Reads 
#### by 10X GENOMICS 

<img src="./images/ratGenome/chromium_linkedReads.png">

---

## Advantages of Linked-Reads

* Haplotype phasing
* Improve the confidence of SNP-calls 
* Better mapping of repetitive regions 
* <font color="tomato">Detecting large structural variants </font>

---

## Summary statistics of 9 rat genomes 
generated using LongRanger software ver 2.2.2

<img src="./images/ratGenome/rat_genome_summary.png" width=100%>


---

## SV: (BN-eve vs rn6) & (BN-male vs rn6)

<img src="./images/ratGenome/rn6_vs_bn_svs.png" width=70%>

---

## Large SV shared among three strains 

<img src="./images/ratGenome/Venn.png" width=40%>

---

## Matrix View of Linked-Reads 

<table><tr><td width=70%>
<img src="./images/ratGenome/matrixview.png" width=100%>
</td><td width=30%>
- Both axes are chromosomal locations<p>
- <b>Plotting overlapping <font color="tomato">BARCODES</font><p></b>
- Expecting a symmetric image alone x = y <p>
- Expecting color fade away from the diagonal line<p>
- <font color="royalblue">Highlighting the distance between genomic locations</font><p>

</td></tr></table>

---

## Small deletions

<img src="./images/ratGenome/loupe_deletion.png" width=60%>

---

## Large deletion
#### BN (Eve + male) vs rn6
<img src="./images/ratGenome/chr18_del_bn_both.png" width=50%>

---

## Same large deletion in nine strains?
## rn6 has an erroneous insertion on chr18?

<img src="./images/ratGenome/deletion.png" width=60%>

---

## Duplication
#### BN (Eve + male) vs rn6 

<img src="./images/ratGenome/chr16_dup_bn_both.png" width=50% >

---

## Same large duplication in nine strains?
## rn6 missed a duplication event on chr16? 

<img src="./images/ratGenome/duplication.png" width=60%>

---

## Inversion 
#### BN (Eve + male) vs rn6

<img src="./images/ratGenome/chr17_inv_bn_both.png" width=50%>

---

## rn6 has a large inversion on chr17? 


<img src="./images/ratGenome/inversion.png" width=60%>


---

## Proximal vs distal chr4
#### BN (Eve + male) vs rn6

<img src="./images/ratGenome/chr4_distal_bn_both.png" width=50%>

---

## Proximal to distal translocation on chr4 in rn6
<img src="./images/ratGenome/distal_chr.png" width=60%>

---

## chr4 vs chr9 
#### BN (Eve + male) vs rn6

<img src="./images/ratGenome/chr4_9_bn_both.png" width=50%>

---

## Translocation between chr4 and chr9 in rn6 
<img src="./images/ratGenome/between_chr4_9.png" width=60%>

---


## chr4 vs chrUn 
#### BN (Eve + male) vs rn6

<img src="./images/ratGenome/chrUn_chr4_bn_both.png" width=50%>

---

## Some sequences in chrUn belong to chr4 in rn6 
<img src="./images/ratGenome/between_chr4_Un.png" width=60%>

---

## Messy beginning of chr1
#### BN (Eve + male) vs rn6

<img src="./images/ratGenome/chr1_messy_bn_both.png" width=50%>

---

## How do we fix this in rn6?

<img src="./images/ratGenome/chr1_messy.png" width=60%>

---
## Phased de Novo Assembly of BN

<table><tr><td width=70%>

<img src="./images/ratGenome/bn_both_supernova_dot.png" width=100%>
</td>
<td width=30%>
<pre>
INPUT
- 1200.03 M = READS 
- 139.50 b = MEAN READ LEN 
- 53.98 x = RAW COV 
- 32.24 x = EFFECTIVE COV 
- 80.59 % = READ TWO Q30 
- 295.00 b = MEDIAN INSERT 
- 90.70 % = PROPER PAIRS 
- 1.00 = BARCODE FRACTION 
- 3.36 Gb = EST GENOME SIZE 
- 11.99 % = REPETITIVE FRAC 
- 0.07 % = HIGH AT FRACTION 
- 41.18 Kb = MOLECULE LEN 
- 138.53 = P10 
- 36.31 Kb = HETDIST 
- 9.52 % = UNBAR 
- 562.00 = BARCODE N50 
- 30.86 % = DUPS 
- 48.97 % = PHASED 

OUTPUT
- 6.23 K = LONG SCAFFOLDS
- 8.81 Kb = EDGE N50 
- 34.38 Kb = CONTIG N50 
- 405.00 b = PHASEBLOCK N50 
- 6.62 Mb = SCAFFOLD N50 
- 3.79 % = MISSING 10KB 
- 2.37 Gb = ASSEMBLY SIZE 
</pre>
</td></tr></table>

---
## Total missing bases: 130.3 Mb 

<img src="./images/ratGenome/missing_base_by_chr.png" width=80%>

---

## Filling the missing

<img src="./images/ratGenome/filling_n_chr20.png" width=80%>

---

## Summary
* Linked-reads  provide opportunities for improving rn6.
	* Identifies many structural errors.
	* De novo assembly can help when a large number of structural changes are needed.
	* De novo assembly can recover unknown bases. 
* Linked-reads also improve variant discovery for individual strains.

---

<marquee behavior="alternate" scrolldelay="60" scrollamount="2">
<font color="#c94c4c"><h2>Thanks to ..</h2></font> 
</marquee>
<ul>
<marquee behavior="scroll" scrolldelay="200" direction="right">
<font color="#bccad6">
<li> Mindy Dwinell (BN-Eve, BN-male)</marquee>
</font>
</marquee>

<marquee behavior="scroll" scrolldelay="200" direction="left">
<font color="#f9ccac">
<li> Eva E Redei (WLI/WMI strains)
</font>
</marquee>

<marquee behavior="scroll" scrolldelay="200" direction="right">
<font color="#8d9db6">
<li> Victor Guryev (Genome alignment, SNP) 
</font>
</marquee>

<marquee behavior="scroll" scrolldelay="200" direction="left">
<font color="#f4a688">
<li> Tristan de Jong (Genome analysis) 
</font>
</marquee>

<marquee behavior="scroll" scrolldelay="200" direction="right">
<font color="#667292">
<li> Arthur Centeno (Data archive)
</font>
</marquee>

<marquee behavior="scroll" scrolldelay="300" direction="left">
<font color="#e0876a">
<li> Robert W Williams (Mastermind, and $)
</font>
</marquee>

<marquee behavior="alternate" scrolldelay="500" direction="right">
<font color="#674d3c">
<li> Advanced Computing Facility, JICS at UTK/Oak Ridge National Lab.
</font>
</marquee>

</ul>

<hr width=60%>
<font color="darkred"><b> Data and results are available! </b></font>

