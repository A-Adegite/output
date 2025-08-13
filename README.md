# HackBio 2025 — Stage 1 Project Submission

## Team Information
Team Name: Your Team Name Here  
Contributors (Slack Handles): @a_adegite

## Project 1: BASh Basic

$
mkdir Adejuwon
mkdir biocomputing && cd biocomputing
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
mv wildtype.fna ../Adejuwon/
rm wildtype.gbk.1
grep -o 'tatatata' ../Adejuwon/wildtype.fna
grep 'tatatata' ../Adejuwon/wildtype.fna > mutant.txt
wget "https://www.ebi.ac.uk/ena/browser/api/fasta/U14680.1?lineLimit=1000" -O BRCA1.fasta
grep -v "^>" BRCA1.fasta | wc -l
grep -v "^>" BRCA1.fasta | grep -o "A" | wc -l
grep -v "^>" BRCA1.fasta | grep -o "G" | wc -l
grep -v "^>" BRCA1.fasta | grep -o "C" | wc -l
grep -v "^>" BRCA1.fasta | grep -o "T" | wc -l
G=$(grep -v "^>" BRCA1.fasta | grep -o "G" | wc -l)
C=$(grep -v "^>" BRCA1.fasta | grep -o "C" | wc -l)
total=$(grep -v "^>" BRCA1.fasta | grep -o "[ACGT]" | wc -l)
GC_content=$(echo "scale=2; ($G + $C)*100/$total" | bc)
echo $GC_content
touch Adejuwon.fasta
echo "A: $(grep -v "^>" BRCA1.fasta | grep -o "A" | wc -l)" >> Adejuwon.fasta
echo "G: $(grep -v "^>" BRCA1.fasta | grep -o "G" | wc -l)" >> Adejuwon.fasta
echo "T: $(grep -v "^>" BRCA1.fasta | grep -o "T" | wc -l)" >> Adejuwon.fasta
echo "C: $(grep -v "^>" BRCA1.fasta | grep -o "C" | wc -l)" >> Adejuwon.fasta

# Upload links
# Output folder: https://github.com/A-Adegite/output
# Script folder: https://github.com/A-Adegite/script

history > Adejuwon.sh
clear
history
ls ../Adejuwon
ls

## Project 2: Installing Bioinformatics Software on the Terminal

conda activate base
conda create -n funtools
conda activate funtools
conda install -c conda-forge figlet
figlet Adejuwon
conda install -c bioconda bwa
conda install -c bioconda blast
conda install -c bioconda samtools
conda install -c bioconda bedtools
conda install -c bioconda spades
conda install -c bioconda bcftools
conda install -c bioconda fastp
conda install -c bioconda multiqc
