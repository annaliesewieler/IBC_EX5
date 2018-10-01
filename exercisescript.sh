cat wages.csv | cut -f 1,2 -d , | sort | sed -E 's/,/ /g' | sort -k 2 -n | uniq > unique.txt 
