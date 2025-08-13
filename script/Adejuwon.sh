mkdir Adejuwon
mkdir biocomputing && cd biocomputing
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
mv wildtype.fna ../Adejuwon/
rm wildtype.gbk.1
grep -o 'tatatata' wildtype.fna
grep -o 'tatatata' wildtype.fna | mutant.txt
wget https://www.ebi.ac.uk/ena/browser/api/fasta/U14680.1?lineLimit=1000 -O BRCA1.fasta

grep -v "^>" BRCA1.fasta | wc -l
grep -v "^>" BRCA1.fasta | grep -o "A" | wc -l
grep -v "^>" BRCA1.fasta | grep -o "G" | wc -l
grep -v "^>" BRCA1.fasta | grep -o "C" | wc -l
grep -v "^>" BRCA1.fasta | grep -o "T" | wc -l

G=$(grep -v "^>" BRCA1.fasta | grep -o "G" | wc -l)
C=$(grep -v "^>" BRCA1.fasta | grep -o "C" | wc -l)
length=$(grep -v "^>" BRCA1.fasta | grep -o "[ACGT]" | wc -l)
GC=$((G + C))
GC_content=$(echo "scale=1;  ${GC} / ${length} * 100" | bc )
echo "{GC_content}"

touch Adejuwon.fasta
echo "A: $(grep -v "^>" BRCA1.fasta | grep -o "A" | wc -l)" >> Adejuwon.fasta
echo "G: $(grep -v "^>" BRCA1.fasta | grep -o "G" | wc -l)" >> Adejuwon.fasta
echo "T: $(grep -v "^>" BRCA1.fasta | grep -o "T" | wc -l)" >> Adejuwon.fasta
echo "C: $(grep -v "^>" BRCA1.fasta | grep -o "C" | wc -l)" >> Adejuwon.fasta

https://github.com/A-Adegite/output

