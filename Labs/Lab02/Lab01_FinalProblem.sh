#Lab01FinalPrblem.sh

cut -f 2-4 -d , PredPreyData.csv | head -n 1 > last10PredPreyData.csv 
cut -f 2-4 -d , PredPreyData.csv  | tail -n 10 >> last10PredPreyData.csv