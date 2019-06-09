# Opportunities to Improve the Rat Reference Genome (rn6) 


<hr>

## Hao Chen, Ph.D.

### Department of Pharmacology
### University of Tennessee Health Science Center, Memphis, TN

CTC, Rat Genomics 2019  

---

## History of Rat Reference Genome
<table><tr><td><img src="images/ratGenome/nature-rat_genome_cover_v428-n6982.jpeg"></td><td>
<table>
<tr><td>	rn6	</td><td> Jul. 2014 </td><td> 	RGSC Rnor_6.0  (6X WGS, 10X PacBio, BAC clone)</td></tr>
<tr><td>	rn5 </td><td> 	Mar. 2012	</td><td> RGSC Rnor_5.0 </td></tr>
<tr><td>	<b>rn4</b> </td><td> Nov. 2004	</td><td> Baylor College of Medicine HGSC v3.4 </td></tr>
<tr><td>	rn3 </td><td> 	Jun. 2003 </td><td> 	Baylor College of Medicine HGSC v3.1 </td></tr>
<tr><td>	rn2	</td><td> Jan. 2003	</td><td> Baylor College of Medicine HGSC v2.1 </td></tr>
<tr><td>	rn1	</td><td> Nov. 2002	</td><td> Baylor College of Medicine HGSC v1.0 </td></tr>
</table>

</td></tr><table>
---

## Chromium linked-reads 
#### by 10X GENOMICS 

<img src="./images/ratGenome/chromium_linkedReads.png">

* <font color="tomato">Detecting large structural variants </font>

---

## Summary stats of 10X Chromium sequencing 

<table>
<thead>
<tr><th>Strain</th><th>Sex</th><th>Mapped %</th><th>Mean Depth(X) </th><th>Short Deletion Calls</th><th>Large SV</th></tr>
</thead>
<tr><td>BN_Eve</td><td>female</td><td>93.8</td><td>34.9</td><td>15,181</td><td>1,699</td></tr>
<tr><td>BN_Male</td><td>male</td><td>94.8</td><td>40.5</td><td>16,894</td><td>1,740</td></tr>
<tr><td>BN_Both</td><td>mix</td><td>94.4</td><td>75.5</td><td>17,277</td><td>1,176</td></tr>
<tr><td>LewCrl</td><td>male</td><td>93.2</td><td>38.7</td><td>33,814</td><td>2,501</td></tr>
<tr><td>LewNHSd</td><td>male</td><td>92.8</td><td>37.7</td><td>32,220</td><td>2,361</td></tr>
<tr><td>F344DuCrl</td><td>male</td><td>95.0</td><td>40.0</td><td>36,270</td><td>2,096</td></tr>
<tr><td>F344NCrl</td><td>male</td><td>94.8</td><td>39.9</td><td>36,233</td><td>2,002</td></tr>
<tr><td>F344NHSd</td><td>male</td><td>91.4</td><td>34.7</td><td>32,718</td><td>1,919</td></tr>
<tr><td>WMI</td><td>male</td><td>93.6</td><td>35.1</td><td>35,475</td><td>2,712</td></tr>
<tr><td>WLI</td><td>male</td><td>92.7</td><td>29.1</td><td>29,397</td><td>2,778</td></tr>
<tr><td>DSS_multi</td><td>male</td><td>93.1</td><td>68.4</td><td>26,558</td><td>1,728</td></tr>
<tr><td>FHH_multi</td><td>male</td><td>94.6</td><td>71.3</td><td>29,841</td><td>1,648</td></tr>
<table>

 Generated using LongRanger software ver 2.2.2

---

## Matrix view of linked-reads 

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

<img src="./images/ratGenome/loupe_deletion.png" width=50%>

---

## Large deletion
#### BN (Eve + male) vs rn6
<img src="./images/ratGenome/chr18_del_bn_both.png" width=50%>

---
## An erroneous insertion on chr18 in rn6

<img src="./images/ratGenome/deletion.png" width=60%>

---

## Duplication
#### BN (Eve + male) vs rn6 

<img src="./images/ratGenome/chr16_dup_bn_both.png" width=50% >

---

## A missed duplication event on chr16 in rn6

<img src="./images/ratGenome/duplication.png" width=60%>

---
## Inversion 
#### BN (Eve + male) vs rn6

<img src="./images/ratGenome/chr17_inv_bn_both.png" width=50%>

---

## A large inversion on chr17 in rn6 

<img src="./images/ratGenome/inversion.png" width=60%>

---

## chr4 vs chr9 
#### BN (Eve + male) vs rn6

<img src="./images/ratGenome/chr4_9_bn_both.png" width=50%>

---

## A translocation between chr4 and chr9 in rn6 

<img src="./images/ratGenome/between_chr4_9.png" width=60%>

---

## Messy beginning of chr1
#### BN (Eve + male) vs rn6

<img src="./images/ratGenome/chr1_messy_bn_both.png" width=50%>

---


## Rotated matrix view with annotation

<img src="./images/ratGenome/rotated_matrix_view.png" width=70% >

Overlay of structural variants from all nine samples. Each strain is set at 20% transparency.

---

## Rotated matrix view, chromosome 20

<iframe src="./pdf/rotated_matrixView_chr20.pdf" width="100%" height=600px>

---

## In comprison,  a mouse chromosome 
<iframe src="./pdf/compiled_chr19_B6.pdf" width="100%" height=600px>

Courtesy of David Ashbrook

---

## Overlapping of SV with genes and exons
(SV = assembly error in this context)
#### High quality calls (1,133)


<img src="./images/ratGenome/rn6_gene_exon_overlap_with_highQC_SV.png" width=90%>

---

## Overlapping of SV with genes and exons
(SV = assembly error in this context)
#### All calls (17,288)

<img src="./images/ratGenome/rn6_gene_exon_overlap_with_SV.png" width=90%>

---

## cis- vs trans- eQTLs
### five brain regions

<img src="./images/ratGenome/five_regions_gemma_loco_all_eqtl.png" width=60%>

---

## Distribution of the distance between SNP and TSS 

<img src="./images/ratGenome/distribution_dist_snp_gstart_logp.png">

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

## Filling the missing

<img src="./images/ratGenome/filling_n_chr20.png" width=80%>


---
## Workflow for correcting assembly errors

<img src="images/ratGenome/fix_rn6_workflow.png" width=80%>

---

## Re-run LongRanger on rn6_alt 

### chr20

<iframe src="./pdf/compiled_chr20_side_by_side.pdf" width=100% height=600px>

---

## Summary

* Matrix View plus SV calls from LongRanger indicate rn6 has many assembly errors.
* Tigmint/ARCS/Sealer/Chromonomer appears to be able to fix some of the assembly errors.
* Dense marker set will force SV to reappear in the final assembly. 
* Highly repetitive regions are likely excluded from the final assembly with lower marker density

---
## Summary

* rn6 assembly error does seem to affect analysis results.
* but the scope appear to be limited based on High Quality SV calls and eQTL results.
* it will be useful to compare mouse eQTL (especially brain) data.

---

##  Section 3. Correcting Assembly Errors

* Genome-wide approach
  * Tigmint-ARCS-Sealer--
* Local approach
  * identify SV
  * extract reads associated with the SV
  * reconstruct region using de novo assembly  
  * assess quality
  * <a href="https://github.com/grocsvs/grocsvs">GROC-SVs</a> (<a href="https://www.nature.com/articles/nmeth.4366">Nature Methods 2017</a>) 

---

## On going work

* Generate a high density genetic marker set from HS data  (Tristan, Hao)
* Fix GC bias then try tigmint-arcs-pipeline again (Tristan) 
* Generate a marker set with varying density 
* Examine the LongRanger of rn6 alternates vs 10x chromium BN data

---

## People involved

<li> Mindy Dwinell (BN-Eve, BN-male)

<li> Eva E Redei (WLI/WMI strains)

<li> Victor Guryev (Genome alignment, SNP) 

<li> Tristan de Jong (Genome analysis) 

<li> Arthur Centeno (Data transfer and archive)

<li> Robert W Williams (Mastermind, and $$$)

<li> Advanced Computing Facility, JICS at UTK/Oak Ridge National Lab.


<font color="darkred"><b> Data and results are available! </b></font>

---
## Large SV shared among BN, F344, and LEW 

<img src="./images/ratGenome/Venn.png" width=40%>

---

