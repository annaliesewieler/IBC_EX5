# This script is for IBC_EX5 Task 2
# Usage: bash task2.sh .

echo "Highest earner:"
cat wages.csv | sort -n -r -t , -k 4 | head -n 1
echo "Lowest earner:"
cat wages.csv | sort -n -t , -k 4 | head -n 2 | tail -n 1
echo "The number of females in top ten earners:"
cat wages.csv | sort -n -r -t , -k 4 | head -n 11 | tail -n 10 | grep female | wc -l
cat wages.csv | cut -f 1,2 -d , | sort | sed -E 's/,/ /g' | sort -k 2 -n | uniq > unique.txt 

