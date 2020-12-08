SELECT Quarter, AVG(Distance) FROM flights_2019 WHERE (Reporting_Airline = "WN" AND Origin = "BWI" AND Dest = "DEN" AND DestStateName = "Colorado") GROUP BY Quarter;
SELECT Origin, AVG(TaxiOut) FROM flights_2019 WHERE (Quarter = 3 AND DayofMonth = 5 AND DayOfWeek = 1 AND Reporting_Airline = "AA" AND Dest = "DFW") GROUP BY Origin;
SELECT DayofMonth, AVG(TaxiIn) FROM flights_2019 WHERE (Quarter = 3 AND DayOfWeek = 2 AND Reporting_Airline = "MQ" AND OriginStateName = "Texas") GROUP BY DayofMonth;
SELECT DestStateName, AVG(AirTime) FROM flights_2019 WHERE (Month = 7 AND DayofMonth = 21 AND Reporting_Airline = "YX" AND OriginStateName = "Virginia") GROUP BY DestStateName;
SELECT Origin, AVG(Distance) FROM flights_2019 WHERE (Month = 1 AND DayofMonth = 2 AND DayOfWeek = 3 AND OriginStateName = "Louisiana" AND Dest = "DFW" AND DestStateName = "Texas") GROUP BY Origin;
SELECT Quarter, AVG(Distance) FROM flights_2019 WHERE (DayOfWeek = 7 AND Dest = "SEA") GROUP BY Quarter;
SELECT DayOfWeek, AVG(TaxiIn) FROM flights_2019 WHERE (Quarter = 3 AND DayofMonth = 9 AND Reporting_Airline = "AA" AND Origin = "PHX" AND OriginStateName = "Arizona" AND Dest = "ONT" AND DestStateName = "California") GROUP BY DayOfWeek;
SELECT Month, AVG(Distance) FROM flights_2019 WHERE Origin = "EWR" GROUP BY Month;
SELECT OriginStateName, AVG(TaxiIn) FROM flights_2019 WHERE (Month = 5 AND DayofMonth = 13 AND DayOfWeek = 1 AND Reporting_Airline = "B6" AND Origin = "BOS" AND Dest = "CLE" AND DestStateName = "Ohio") GROUP BY OriginStateName;
SELECT DestStateName, AVG(DepDelay) FROM flights_2019 WHERE (Quarter = 2 AND Month = 5 AND Reporting_Airline = "YX" AND Origin = "IND" AND OriginStateName = "Indiana") GROUP BY DestStateName;
SELECT Reporting_Airline, AVG(DepDelay) FROM flights_2019 WHERE (Month = 7 AND DayOfWeek = 7 AND Origin = "DFW" AND OriginStateName = "Texas" AND Dest = "TUL" AND DestStateName = "Oklahoma") GROUP BY Reporting_Airline;
SELECT DayofMonth, AVG(TaxiOut) FROM flights_2019 WHERE DestStateName = "Texas" GROUP BY DayofMonth;
SELECT OriginStateName, AVG(ArrDelay) FROM flights_2019 WHERE (Quarter = 3 AND Month = 9 AND DayOfWeek = 6 AND Origin = "DCA" AND Dest = "JAX" AND DestStateName = "Florida") GROUP BY OriginStateName;
SELECT Dest, AVG(TaxiIn) FROM flights_2019 GROUP BY Dest
SELECT Origin, AVG(DepDelay) FROM flights_2019 GROUP BY Origin
SELECT Quarter, AVG(Distance) FROM flights_2019 WHERE (Month = 2 AND DayofMonth = 19) GROUP BY Quarter;
SELECT OriginStateName, AVG(TaxiIn) FROM flights_2019 WHERE (Quarter = 3 AND Month = 7 AND DayofMonth = 11 AND DayOfWeek = 4 AND Reporting_Airline = "UA" AND Origin = "PHL" AND Dest = "SFO" AND DestStateName = "California") GROUP BY OriginStateName;
SELECT Quarter, AVG(Distance) FROM flights_2019 WHERE Month = 10 GROUP BY Quarter;
SELECT Month, AVG(TaxiOut) FROM flights_2019 GROUP BY Month
SELECT DayOfWeek, AVG(DepDelay) FROM flights_2019 WHERE (Quarter = 3 AND Month = 8 AND Reporting_Airline = "AA" AND OriginStateName = "California") GROUP BY DayOfWeek;
SELECT DayofMonth, AVG(Distance) FROM flights_2019 WHERE (OriginStateName = "Hawaii" AND Dest = "KOA" AND DestStateName = "Hawaii") GROUP BY DayofMonth;
SELECT Dest, AVG(TaxiOut) FROM flights_2019 WHERE (Month = 2 AND DayofMonth = 15 AND OriginStateName = "Texas") GROUP BY Dest;
SELECT Month, AVG(DepDelay) FROM flights_2019 WHERE (Reporting_Airline = "YX" AND Origin = "ORD" AND DestStateName = "Virginia") GROUP BY Month;
SELECT Month, AVG(TaxiIn) FROM flights_2019 WHERE (DayofMonth = 2 AND DayOfWeek = 1 AND Dest = "ATL" AND DestStateName = "Georgia") GROUP BY Month;
SELECT DestStateName, AVG(ArrDelay) FROM flights_2019 WHERE Reporting_Airline = "UA" GROUP BY DestStateName;
SELECT Quarter, AVG(DepDelay) FROM flights_2019 WHERE (DayOfWeek = 7 AND Origin = "ATL" AND OriginStateName = "Georgia") GROUP BY Quarter;
SELECT Origin, AVG(TaxiOut) FROM flights_2019 WHERE (Quarter = 2 AND Month = 6 AND DayofMonth = 16 AND DayOfWeek = 7 AND Reporting_Airline = "UA" AND OriginStateName = "Florida" AND Dest = "ORD" AND DestStateName = "Illinois") GROUP BY Origin;
SELECT Quarter, AVG(ArrDelay) FROM flights_2019 WHERE (DayofMonth = 17 AND Reporting_Airline = "EV") GROUP BY Quarter;
SELECT Dest, AVG(TaxiIn) FROM flights_2019 WHERE (Quarter = 4 AND Month = 12 AND DayofMonth = 9 AND DayOfWeek = 1 AND Reporting_Airline = "AA" AND OriginStateName = "Oklahoma" AND DestStateName = "Texas") GROUP BY Dest;
SELECT DayofMonth, AVG(Distance) FROM flights_2019 WHERE (Quarter = 2 AND DayOfWeek = 7 AND Origin = "GSO" AND Dest = "CLT" AND DestStateName = "North Carolina") GROUP BY DayofMonth;
SELECT Origin, AVG(TaxiOut) FROM flights_2019 WHERE (Quarter = 3 AND Month = 7 AND DayofMonth = 21 AND Dest = "DEN" AND DestStateName = "Colorado") GROUP BY Origin;
SELECT Reporting_Airline, AVG(ArrDelay) FROM flights_2019 WHERE (Quarter = 1 AND Month = 3 AND DayofMonth = 25 AND Origin = "LAX" AND Dest = "MCI" AND DestStateName = "Missouri") GROUP BY Reporting_Airline;
SELECT Dest, AVG(Distance) FROM flights_2019 WHERE (Month = 7 AND DayOfWeek = 1 AND Reporting_Airline = "MQ" AND Origin = "ORD" AND OriginStateName = "Illinois" AND DestStateName = "Missouri") GROUP BY Dest;
SELECT DayOfWeek, AVG(DepDelay) FROM flights_2019 WHERE (Month = 5 AND DayofMonth = 24 AND Origin = "TYS" AND OriginStateName = "Tennessee" AND Dest = "PHL") GROUP BY DayOfWeek;
SELECT DestStateName, AVG(TaxiOut) FROM flights_2019 WHERE (Reporting_Airline = "DL" AND Origin = "MDT" AND OriginStateName = "Pennsylvania") GROUP BY DestStateName;
SELECT DayOfWeek, AVG(TaxiIn) FROM flights_2019 GROUP BY DayOfWeek
SELECT OriginStateName, AVG(AirTime) FROM flights_2019 WHERE (Month = 4 AND DestStateName = "New York") GROUP BY OriginStateName;
SELECT DestStateName, AVG(TaxiIn) FROM flights_2019 WHERE (Quarter = 2 AND Month = 6 AND DayofMonth = 29 AND DayOfWeek = 6 AND Reporting_Airline = "OO" AND Origin = "ATL" AND OriginStateName = "Georgia") GROUP BY DestStateName;
SELECT DayOfWeek, AVG(ArrDelay) FROM flights_2019 WHERE (DayofMonth = 7 AND Origin = "IAH" AND OriginStateName = "Texas" AND DestStateName = "Michigan") GROUP BY DayOfWeek;
SELECT DestStateName, AVG(TaxiIn) FROM flights_2019 WHERE (Quarter = 3 AND Origin = "DTW" AND Dest = "OKC") GROUP BY DestStateName;
SELECT DayofMonth, AVG(TaxiIn) FROM flights_2019 WHERE (Quarter = 3 AND Month = 7 AND Reporting_Airline = "WN" AND Origin = "OGG" AND Dest = "HNL" AND DestStateName = "Hawaii") GROUP BY DayofMonth;
SELECT Reporting_Airline, AVG(AirTime) FROM flights_2019 WHERE (Quarter = 2 AND Month = 4 AND DayofMonth = 10 AND DayOfWeek = 3 AND Origin = "SFO" AND OriginStateName = "California" AND DestStateName = "Virginia") GROUP BY Reporting_Airline;
SELECT DayofMonth, AVG(TaxiOut) FROM flights_2019 WHERE (Quarter = 1 AND Origin = "ORD" AND Dest = "FAR") GROUP BY DayofMonth;
SELECT DayOfWeek, AVG(Distance) FROM flights_2019 WHERE (Quarter = 3 AND DayofMonth = 30 AND Reporting_Airline = "9E" AND Origin = "LGA" AND OriginStateName = "New York" AND Dest = "BTV" AND DestStateName = "Vermont") GROUP BY DayOfWeek;
SELECT DayofMonth, AVG(TaxiOut) FROM flights_2019 WHERE (Quarter = 2 AND Month = 6 AND DayOfWeek = 4 AND Origin = "SAT" AND OriginStateName = "Texas" AND DestStateName = "Texas") GROUP BY DayofMonth;
SELECT Dest, AVG(AirTime) FROM flights_2019 WHERE (Quarter = 4 AND Month = 12 AND DayofMonth = 15 AND DayOfWeek = 7 AND Reporting_Airline = "9E" AND OriginStateName = "Pennsylvania" AND DestStateName = "Kentucky") GROUP BY Dest;
SELECT Origin, AVG(Distance) FROM flights_2019 WHERE (Month = 11 AND DayofMonth = 17 AND DayOfWeek = 7 AND Reporting_Airline = "OO" AND OriginStateName = "Michigan") GROUP BY Origin;
SELECT Origin, AVG(TaxiOut) FROM flights_2019 WHERE (DayOfWeek = 3 AND OriginStateName = "Pennsylvania" AND DestStateName = "Ohio") GROUP BY Origin;
SELECT DayofMonth, AVG(TaxiOut) FROM flights_2019 WHERE (Quarter = 4 AND Month = 10 AND DayOfWeek = 1 AND Reporting_Airline = "DL" AND Origin = "ATL" AND OriginStateName = "Georgia" AND Dest = "ROC" AND DestStateName = "New York") GROUP BY DayofMonth;
SELECT Quarter, AVG(Distance) FROM flights_2019 WHERE (Month = 1 AND DayofMonth = 28 AND Reporting_Airline = "WN" AND OriginStateName = "Pennsylvania" AND DestStateName = "Colorado") GROUP BY Quarter;
SELECT Reporting_Airline, AVG(Distance) FROM flights_2019 WHERE (Quarter = 1 AND Month = 1 AND DayofMonth = 29 AND Origin = "OAK" AND Dest = "SAT" AND DestStateName = "Texas") GROUP BY Reporting_Airline;
SELECT Origin, AVG(ArrDelay) FROM flights_2019 GROUP BY Origin
SELECT Dest, AVG(AirTime) FROM flights_2019 WHERE (Quarter = 4 AND Month = 10 AND DayofMonth = 11 AND DayOfWeek = 5 AND Origin = "DFW" AND OriginStateName = "Texas" AND DestStateName = "Florida") GROUP BY Dest;
SELECT DayofMonth, AVG(ArrDelay) FROM flights_2019 GROUP BY DayofMonth
SELECT DestStateName, AVG(AirTime) FROM flights_2019 GROUP BY DestStateName
SELECT DayOfWeek, AVG(ArrDelay) FROM flights_2019 WHERE Reporting_Airline = "DL" GROUP BY DayOfWeek;
SELECT DestStateName, AVG(AirTime) FROM flights_2019 WHERE (Quarter = 3 AND Month = 9 AND DayofMonth = 19 AND DayOfWeek = 4 AND Reporting_Airline = "NK" AND OriginStateName = "Michigan" AND Dest = "TPA") GROUP BY DestStateName;
SELECT Dest, AVG(TaxiOut) FROM flights_2019 WHERE (Quarter = 3 AND Month = 8 AND Origin = "CLT" AND DestStateName = "Florida") GROUP BY Dest;
SELECT Dest, AVG(ArrDelay) FROM flights_2019 WHERE (Month = 8 AND Reporting_Airline = "OH" AND OriginStateName = "Mississippi") GROUP BY Dest;
SELECT DestStateName, AVG(DepDelay) FROM flights_2019 WHERE (DayOfWeek = 2 AND Reporting_Airline = "DL" AND Origin = "JAX" AND Dest = "ATL") GROUP BY DestStateName;
SELECT Month, AVG(TaxiIn) FROM flights_2019 WHERE (DayofMonth = 30 AND DayOfWeek = 4 AND Origin = "LAX" AND OriginStateName = "California" AND Dest = "PRC" AND DestStateName = "Arizona") GROUP BY Month;
SELECT DestStateName, AVG(TaxiOut) FROM flights_2019 WHERE (Quarter = 3 AND Dest = "DAL") GROUP BY DestStateName;
SELECT Month, AVG(TaxiIn) FROM flights_2019 WHERE (Quarter = 4 AND DayofMonth = 26 AND DayOfWeek = 4 AND Reporting_Airline = "AS" AND Origin = "LAX" AND OriginStateName = "California" AND Dest = "SEA" AND DestStateName = "Washington") GROUP BY Month;
SELECT DestStateName, AVG(AirTime) FROM flights_2019 WHERE Reporting_Airline = "OO" GROUP BY DestStateName;
SELECT DayofMonth, AVG(ArrDelay) FROM flights_2019 WHERE (Month = 6 AND Origin = "LAS" AND OriginStateName = "Nevada" AND Dest = "MCO" AND DestStateName = "Florida") GROUP BY DayofMonth;
SELECT Quarter, AVG(DepDelay) FROM flights_2019 WHERE (Month = 9 AND DayOfWeek = 3 AND Reporting_Airline = "EV" AND Origin = "CLE" AND OriginStateName = "Ohio" AND DestStateName = "Texas") GROUP BY Quarter;
SELECT Reporting_Airline, AVG(AirTime) FROM flights_2019 WHERE (Quarter = 2 AND Month = 4 AND DayofMonth = 6 AND DayOfWeek = 6 AND OriginStateName = "Florida" AND Dest = "CHS" AND DestStateName = "South Carolina") GROUP BY Reporting_Airline;
SELECT DayOfWeek, AVG(DepDelay) FROM flights_2019 GROUP BY DayOfWeek
SELECT OriginStateName, AVG(TaxiIn) FROM flights_2019 WHERE (Quarter = 4 AND Month = 12 AND DayofMonth = 29 AND DayOfWeek = 7 AND Reporting_Airline = "WN" AND Origin = "MDW" AND Dest = "SJC" AND DestStateName = "California") GROUP BY OriginStateName;
SELECT DayofMonth, AVG(DepDelay) FROM flights_2019 WHERE (Month = 3 AND DayOfWeek = 7 AND Dest = "ATL") GROUP BY DayofMonth;
SELECT DayofMonth, AVG(ArrDelay) FROM flights_2019 WHERE (Quarter = 4 AND Month = 11 AND DayOfWeek = 7 AND Origin = "DFW" AND Dest = "SAN") GROUP BY DayofMonth;
SELECT Month, AVG(DepDelay) FROM flights_2019 WHERE (Reporting_Airline = "DL" AND Origin = "ATL" AND DestStateName = "Florida") GROUP BY Month;
SELECT DayofMonth, AVG(AirTime) FROM flights_2019 WHERE (OriginStateName = "California" AND DestStateName = "Arizona") GROUP BY DayofMonth;
SELECT Origin, AVG(AirTime) FROM flights_2019 WHERE (Quarter = 1 AND Month = 3 AND Reporting_Airline = "AA" AND OriginStateName = "Pennsylvania" AND Dest = "BOS" AND DestStateName = "Massachusetts") GROUP BY Origin;
SELECT DayofMonth, AVG(TaxiOut) FROM flights_2019 WHERE Dest = "PHL" GROUP BY DayofMonth;
SELECT Dest, AVG(DepDelay) FROM flights_2019 GROUP BY Dest
SELECT Reporting_Airline, AVG(DepDelay) FROM flights_2019 WHERE (Month = 9 AND DayofMonth = 15 AND DayOfWeek = 7 AND Origin = "HOU" AND OriginStateName = "Texas" AND Dest = "AUS" AND DestStateName = "Texas") GROUP BY Reporting_Airline;
SELECT Quarter, AVG(AirTime) FROM flights_2019 WHERE (DayOfWeek = 2 AND Reporting_Airline = "YX" AND Origin = "GRR" AND OriginStateName = "Michigan" AND Dest = "EWR" AND DestStateName = "New Jersey") GROUP BY Quarter;
SELECT Origin, AVG(DepDelay) FROM flights_2019 WHERE Dest = "PIE" GROUP BY Origin;
SELECT Month, AVG(Distance) FROM flights_2019 GROUP BY Month
SELECT Month, AVG(TaxiOut) FROM flights_2019 WHERE (Quarter = 4 AND DayofMonth = 9 AND Reporting_Airline = "DL" AND Origin = "LAX" AND OriginStateName = "California" AND Dest = "PDX" AND DestStateName = "Oregon") GROUP BY Month;
SELECT Month, AVG(TaxiIn) FROM flights_2019 WHERE (Quarter = 3 AND DayofMonth = 31 AND DayOfWeek = 6 AND Reporting_Airline = "YV" AND Origin = "IAH" AND OriginStateName = "Texas" AND Dest = "BTR") GROUP BY Month;
SELECT DestStateName, AVG(Distance) FROM flights_2019 WHERE OriginStateName = "Colorado" GROUP BY DestStateName;
SELECT Reporting_Airline, AVG(TaxiIn) FROM flights_2019 WHERE (Month = 10 AND DayofMonth = 14 AND Dest = "MCO" AND DestStateName = "Florida") GROUP BY Reporting_Airline;
SELECT DayOfWeek, AVG(ArrDelay) FROM flights_2019 WHERE (Month = 5 AND DayofMonth = 9 AND Reporting_Airline = "OO" AND Origin = "TUL" AND OriginStateName = "Oklahoma" AND DestStateName = "Texas") GROUP BY DayOfWeek;
SELECT Reporting_Airline, AVG(AirTime) FROM flights_2019 WHERE (Origin = "TPA" AND Dest = "ORD" AND DestStateName = "Illinois") GROUP BY Reporting_Airline;
SELECT DayOfWeek, AVG(TaxiIn) FROM flights_2019 WHERE (DayofMonth = 6 AND Reporting_Airline = "WN" AND Dest = "MDW" AND DestStateName = "Illinois") GROUP BY DayOfWeek;
SELECT OriginStateName, AVG(ArrDelay) FROM flights_2019 WHERE (Quarter = 1 AND Month = 1 AND DayofMonth = 11 AND DayOfWeek = 5 AND Reporting_Airline = "DL" AND Origin = "IND" AND Dest = "ATL" AND DestStateName = "Georgia") GROUP BY OriginStateName;
SELECT Origin, AVG(Distance) FROM flights_2019 WHERE (Quarter = 1 AND DayOfWeek = 3 AND Reporting_Airline = "YX") GROUP BY Origin;
SELECT Month, AVG(ArrDelay) FROM flights_2019 WHERE (DayofMonth = 7 AND DayOfWeek = 4) GROUP BY Month;
SELECT Origin, AVG(ArrDelay) FROM flights_2019 WHERE (Quarter = 3 AND Month = 7 AND DayofMonth = 12 AND DayOfWeek = 5 AND Reporting_Airline = "YX" AND OriginStateName = "Wisconsin" AND Dest = "EWR" AND DestStateName = "New Jersey") GROUP BY Origin;
SELECT DestStateName, AVG(ArrDelay) FROM flights_2019 WHERE (Month = 9 AND Origin = "ORD" AND OriginStateName = "Illinois" AND Dest = "SGF") GROUP BY DestStateName;
SELECT Dest, AVG(Distance) FROM flights_2019 WHERE DestStateName = "Pennsylvania" GROUP BY Dest;
SELECT Reporting_Airline, AVG(ArrDelay) FROM flights_2019 WHERE DestStateName = "Minnesota" GROUP BY Reporting_Airline;
SELECT DayofMonth, AVG(TaxiOut) FROM flights_2019 GROUP BY DayofMonth
SELECT OriginStateName, AVG(TaxiOut) FROM flights_2019 WHERE (Quarter = 4 AND Month = 10 AND DayOfWeek = 2 AND Reporting_Airline = "AA" AND Dest = "ORD" AND DestStateName = "Illinois") GROUP BY OriginStateName;
SELECT DayOfWeek, AVG(DepDelay) FROM flights_2019 WHERE (Quarter = 1 AND Month = 2 AND DayofMonth = 23 AND Reporting_Airline = "DL" AND Origin = "BOS" AND OriginStateName = "Massachusetts" AND Dest = "MSP" AND DestStateName = "Minnesota") GROUP BY DayOfWeek;
SELECT OriginStateName, AVG(Distance) FROM flights_2019 WHERE (Quarter = 1 AND Month = 3 AND DayofMonth = 26 AND DayOfWeek = 2 AND Reporting_Airline = "MQ" AND Origin = "DFW" AND Dest = "XNA" AND DestStateName = "Arkansas") GROUP BY OriginStateName;
SELECT Dest, AVG(Distance) FROM flights_2019 WHERE (Quarter = 2 AND DayofMonth = 19 AND DayOfWeek = 3 AND Reporting_Airline = "DL" AND OriginStateName = "Georgia" AND DestStateName = "Florida") GROUP BY Dest;
SELECT Month, AVG(Distance) FROM flights_2019 WHERE (Quarter = 3 AND Reporting_Airline = "OH" AND OriginStateName = "New York" AND Dest = "DCA" AND DestStateName = "Virginia") GROUP BY Month;