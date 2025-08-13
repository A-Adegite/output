# HackBio 2025 — Stage 1 Project Submission

## Team Information
Team Name: Team Testrun
Contributors (Slack Handles): @a_adegite

## Project 1: BASh Basic

# Bioinformatics Command Line Project

## Stage 1: BASh Basic Project

### Project Execution Commands

```bash
# 1. Login to coding workspace (credentials not shown)

# 2. Create personal folder
mkdir Adejuwon

# 3. Create biocomputing directory and navigate
mkdir biocomputing && cd biocomputing

# 4. Download required files
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk

# 5. Move .fna file to personal folder
mv wildtype.fna ../Adejuwon/

# 6. Remove duplicate GBK file
rm wildtype.gbk.1

# 7. Check sequence type (wildtype vs mutant)
grep -o 'tatatata' ../Adejuwon/wildtype.fna

# 8. Create mutant sequence file
grep -o 'tatatata' ../Adejuwon/wildtype.fna > mutant.txt

# 9. Selected favorite gene: BRCA1

# 10. Download gene FASTA
wget https://www.ebi.ac.uk/ena/browser/api/fasta/U14680.1?lineLimit=1000 -O BRCA1.fasta

# 11. Count non-header lines
grep -v "^>" BRCA1.fasta | wc -l

# 12. Count Adenine bases
grep -v "^>" BRCA1.fasta | grep -o "A" | wc -l

# 13. Count Guanine bases
grep -v "^>" BRCA1.fasta | grep -o "G" | wc -l

# 14. Count Cytosine bases
grep -v "^>" BRCA1.fasta | grep -o "C" | wc -l

# 15. Count Thymine bases
grep -v "^>" BRCA1.fasta | grep -o "T" | wc -l

# 16. Calculate GC content
G=$(grep -v "^>" BRCA1.fasta | grep -o "G" | wc -l)
C=$(grep -v "^>" BRCA1.fasta | grep -o "C" | wc -l)
length=$(grep -v "^>" BRCA1.fasta | grep -o "[ACGT]" | wc -l)
GC=$((G + C))
GC_content=$(echo "scale=1; ${GC} / ${length} * 100" | bc)
echo "${GC_content}"

# 17. Create personal FASTA file
touch Adejuwon.fasta

# 18. Save nucleotide counts to file
echo "A: $(grep -v "^>" BRCA1.fasta | grep -o "A" | wc -l)" >> Adejuwon.fasta
echo "G: $(grep -v "^>" BRCA1.fasta | grep -o "G" | wc -l)" >> Adejuwon.fasta
echo "T: $(grep -v "^>" BRCA1.fasta | grep -o "T" | wc -l)" >> Adejuwon.fasta
echo "C: $(grep -v "^>" BRCA1.fasta | grep -o "C" | wc -l)" >> Adejuwon.fasta

# 19. GitHub repository link: https://github.com/A-Adegite/output

# 1. Initialize and activate conda
conda init
conda activate base

# 2. Create and activate environment
conda create -n funtools
conda activate funtools

# 3. Install Figlet and test
conda install tsnyder::figlet
figlet Adejuwon

# 4. Install bioinformatics tools
conda install bioconda::bwa
conda install bioconda::blast
conda install bioconda::samtools
conda install bioconda::bedtools
conda install bioconda::spades
conda install bioconda::bcftools
conda install bioconda::fastp
conda install bioconda::multiqc
