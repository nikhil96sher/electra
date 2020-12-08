SELECT SUM(TaxiOut) FROM flights_2019 WHERE Month = 4;
SELECT SUM(TaxiOut) FROM flights_2019 WHERE ((Month = 1) OR (Month = 2));
SELECT SUM(TaxiIn) FROM flights_2019 WHERE Reporting_Airline = "DL";
SELECT SUM(Distance) FROM flights_2019 WHERE ((DayofMonth = 1) OR (DayofMonth = 7));
SELECT SUM(DepDelay) FROM flights_2019 WHERE OriginStateName = "California";
SELECT SUM(Distance) FROM flights_2019 WHERE Reporting_Airline = "DL";
SELECT SUM(AirTime) FROM flights_2019 WHERE (((Month = 1) OR (Month = 1)) AND ((Dest = "ACY") OR (Dest = "ABR")));
SELECT SUM(DepDelay) FROM flights_2019 WHERE (((OriginStateName = "Alaska") OR (OriginStateName = "California")) AND ((DestStateName = "California") OR (DestStateName = "Alabama")));
SELECT SUM(TaxiIn) FROM flights_2019 WHERE (((DestStateName = "Arizona") OR (DestStateName = "Connecticut")) AND DayOfWeek = 6);
SELECT SUM(AirTime) FROM flights_2019 WHERE (((OriginStateName = "Alaska") OR (OriginStateName = "Georgia")) AND ((Reporting_Airline = "9E") OR (Reporting_Airline = "F9")));
SELECT SUM(AirTime) FROM flights_2019 WHERE (DayOfWeek = 4 AND ((Dest = "ABE") OR (Dest = "ABI") OR (Dest = "ABR")));
SELECT SUM(Distance) FROM flights_2019;
SELECT SUM(Distance) FROM flights_2019;
SELECT SUM(AirTime) FROM flights_2019 WHERE (Quarter = 2 AND ((Origin = "ABI") OR (Origin = "ACK") OR (Origin = "ABI")));
SELECT SUM(Distance) FROM flights_2019;
SELECT SUM(TaxiIn) FROM flights_2019 WHERE (DayOfWeek = 1 AND Quarter = 3);
SELECT SUM(Distance) FROM flights_2019 WHERE (((Dest = "ACT") OR (Dest = "ABI")) AND Month = 6);
SELECT SUM(Distance) FROM flights_2019 WHERE ((Month = 1) OR (Month = 1));
SELECT SUM(ArrDelay) FROM flights_2019 WHERE ((DayofMonth = 1) OR (DayofMonth = 8));
SELECT SUM(Distance) FROM flights_2019 WHERE Quarter = 3;
SELECT SUM(TaxiOut) FROM flights_2019 WHERE Quarter = 4;
SELECT SUM(AirTime) FROM flights_2019 WHERE Month = 4;
SELECT SUM(AirTime) FROM flights_2019 WHERE ((DestStateName = "Arizona") OR (DestStateName = "Alabama"));
SELECT SUM(ArrDelay) FROM flights_2019 WHERE DayOfWeek = 2;
SELECT SUM(AirTime) FROM flights_2019 WHERE ((Dest = "ABI") OR (Dest = "ACK") OR (Dest = "ABI"));
SELECT SUM(DepDelay) FROM flights_2019 WHERE Month = 5;
SELECT SUM(TaxiIn) FROM flights_2019 WHERE ((Origin = "ABI") OR (Origin = "ACV") OR (Origin = "ACY"));
SELECT SUM(AirTime) FROM flights_2019;
SELECT SUM(Distance) FROM flights_2019 WHERE (((OriginStateName = "Arkansas") OR (OriginStateName = "Arizona")) AND Reporting_Airline = "F9");
SELECT SUM(ArrDelay) FROM flights_2019 WHERE (((Dest = "ABQ") OR (Dest = "ABE") OR (Dest = "ACK")) AND ((DayofMonth = 1) OR (DayofMonth = 2)));
SELECT SUM(AirTime) FROM flights_2019 WHERE (((Origin = "ACV") OR (Origin = "ACK")) AND ((Dest = "ABI") OR (Dest = "ACK") OR (Dest = "ABQ")) AND Reporting_Airline = "DL");
SELECT SUM(AirTime) FROM flights_2019 WHERE Quarter = 3;
SELECT SUM(DepDelay) FROM flights_2019 WHERE Month = 7;
SELECT SUM(Distance) FROM flights_2019 WHERE DayofMonth = 3;
SELECT SUM(AirTime) FROM flights_2019 WHERE ((DestStateName = "Arizona") OR (DestStateName = "Florida"));
SELECT SUM(TaxiIn) FROM flights_2019 WHERE Month = 6;
SELECT SUM(AirTime) FROM flights_2019 WHERE OriginStateName = "Alabama";
SELECT SUM(TaxiOut) FROM flights_2019 WHERE Quarter = 4;
SELECT SUM(DepDelay) FROM flights_2019 WHERE ((Reporting_Airline = "9E") OR (Reporting_Airline = "B6"));
SELECT SUM(TaxiOut) FROM flights_2019 WHERE ((Dest = "ABQ") OR (Dest = "ABQ") OR (Dest = "ACT"));
SELECT SUM(Distance) FROM flights_2019 WHERE ((Origin = "ABE") OR (Origin = "ACV") OR (Origin = "ACT"));
SELECT SUM(TaxiOut) FROM flights_2019 WHERE ((OriginStateName = "Alaska") OR (OriginStateName = "Alabama"));
SELECT SUM(AirTime) FROM flights_2019 WHERE ((Dest = "ABI") OR (Dest = "ACK") OR (Dest = "ABI"));
SELECT SUM(ArrDelay) FROM flights_2019 WHERE (((Dest = "ABR") OR (Dest = "ABY")) AND ((Reporting_Airline = "9E") OR (Reporting_Airline = "EV")));
SELECT SUM(TaxiOut) FROM flights_2019 WHERE (DayofMonth = 5 AND OriginStateName = "California");
SELECT SUM(Distance) FROM flights_2019 WHERE (DestStateName = "California" AND Month = 2);
SELECT SUM(ArrDelay) FROM flights_2019 WHERE (Month = 4 AND DayOfWeek = 4);
SELECT SUM(DepDelay) FROM flights_2019 WHERE ((DestStateName = "Arizona") OR (DestStateName = "Arkansas"));
SELECT SUM(TaxiIn) FROM flights_2019 WHERE Quarter = 4;
SELECT SUM(TaxiOut) FROM flights_2019 WHERE Month = 3;
SELECT SUM(ArrDelay) FROM flights_2019;
SELECT SUM(AirTime) FROM flights_2019 WHERE Month = 7;
SELECT SUM(TaxiIn) FROM flights_2019 WHERE Reporting_Airline = "DL";
SELECT SUM(Distance) FROM flights_2019 WHERE DestStateName = "Arkansas";
SELECT SUM(TaxiIn) FROM flights_2019 WHERE ((DayofMonth = 3) OR (DayofMonth = 31));
SELECT SUM(AirTime) FROM flights_2019 WHERE Reporting_Airline = "B6";
SELECT SUM(TaxiOut) FROM flights_2019 WHERE Month = 1;
SELECT SUM(TaxiOut) FROM flights_2019 WHERE (Reporting_Airline = "AA" AND ((DestStateName = "Alaska") OR (DestStateName = "Arizona")) AND ((DayofMonth = 1) OR (DayofMonth = 1)));
SELECT SUM(AirTime) FROM flights_2019 WHERE ((Origin = "ABI") OR (Origin = "ABQ") OR (Origin = "ABY"));
SELECT SUM(DepDelay) FROM flights_2019 WHERE ((Reporting_Airline = "9E") OR (Reporting_Airline = "AS"));
SELECT SUM(AirTime) FROM flights_2019 WHERE ((Origin = "ABI") OR (Origin = "ABR") OR (Origin = "YUM"));
SELECT SUM(TaxiIn) FROM flights_2019 WHERE (((DayofMonth = 1) OR (DayofMonth = 2)) AND Quarter = 1);
SELECT SUM(TaxiIn) FROM flights_2019 WHERE (DayOfWeek = 5 AND ((Reporting_Airline = "9E") OR (Reporting_Airline = "AS")));
SELECT SUM(Distance) FROM flights_2019 WHERE ((Reporting_Airline = "9E") OR (Reporting_Airline = "DL"));
SELECT SUM(Distance) FROM flights_2019 WHERE ((OriginStateName = "Arizona") OR (OriginStateName = "Alaska"));
SELECT SUM(AirTime) FROM flights_2019 WHERE ((Origin = "ABR") OR (Origin = "ABY"));
SELECT SUM(DepDelay) FROM flights_2019 WHERE OriginStateName = "Florida";
SELECT SUM(TaxiOut) FROM flights_2019 WHERE ((DestStateName = "Alabama") OR (DestStateName = "Alaska"));
SELECT SUM(TaxiIn) FROM flights_2019 WHERE (DestStateName = "California" AND ((Origin = "ABI") OR (Origin = "ABI")));
SELECT SUM(AirTime) FROM flights_2019 WHERE (((Dest = "ABE") OR (Dest = "ACK") OR (Dest = "ABY")) AND DayOfWeek = 2);
SELECT SUM(TaxiOut) FROM flights_2019 WHERE DestStateName = "Georgia";
SELECT SUM(DepDelay) FROM flights_2019 WHERE (Month = 3 AND ((DayofMonth = 2) OR (DayofMonth = 1)));
SELECT SUM(AirTime) FROM flights_2019 WHERE (((OriginStateName = "Alaska") OR (OriginStateName = "Connecticut")) AND Quarter = 1);
SELECT SUM(ArrDelay) FROM flights_2019 WHERE ((DestStateName = "Arizona") OR (DestStateName = "Alabama"));
SELECT SUM(TaxiOut) FROM flights_2019 WHERE Reporting_Airline = "AA";
SELECT SUM(Distance) FROM flights_2019 WHERE ((Origin = "ABE") OR (Origin = "ACK") OR (Origin = "ABY"));
SELECT SUM(ArrDelay) FROM flights_2019 WHERE Reporting_Airline = "AA";
SELECT SUM(AirTime) FROM flights_2019 WHERE DayofMonth = 9;
SELECT SUM(TaxiOut) FROM flights_2019 WHERE ((DayofMonth = 1) OR (DayofMonth = 3));
SELECT SUM(TaxiIn) FROM flights_2019 WHERE (((DestStateName = "Arizona") OR (DestStateName = "Alaska")) AND OriginStateName = "Florida");
SELECT Quarter, SUM(Distance) FROM flights_2019 WHERE (((OriginStateName = "Alaska") OR (OriginStateName = "Wyoming")) AND ((Reporting_Airline = "9E") OR (Reporting_Airline = "AS")) AND Month = 4) GROUP BY Quarter;
SELECT Quarter, SUM(DepDelay) FROM flights_2019 WHERE (DayOfWeek = 2 AND ((Month = 1) OR (Month = 2))) GROUP BY Quarter;
SELECT Quarter, SUM(TaxiOut) FROM flights_2019 WHERE (((DayofMonth = 1) OR (DayofMonth = 5)) AND ((Reporting_Airline = "9E") OR (Reporting_Airline = "F9"))) GROUP BY Quarter;
SELECT Quarter, SUM(TaxiIn) FROM flights_2019 WHERE (DayofMonth = 2 AND Month = 3) GROUP BY Quarter;
SELECT Quarter, SUM(DepDelay) FROM flights_2019 WHERE ((OriginStateName = "Alaska") OR (OriginStateName = "Wyoming")) GROUP BY Quarter;
SELECT Quarter, SUM(AirTime) FROM flights_2019 WHERE ((DestStateName = "Alabama") OR (DestStateName = "Alaska")) GROUP BY Quarter;
SELECT Quarter, SUM(ArrDelay) FROM flights_2019 WHERE (((Origin = "ABE") OR (Origin = "YUM") OR (Origin = "ABI")) AND ((DayofMonth = 1) OR (DayofMonth = 8))) GROUP BY Quarter;
SELECT Quarter, SUM(TaxiOut) FROM flights_2019 WHERE OriginStateName = "California" GROUP BY Quarter;
SELECT SUM(TaxiIn) FROM flights_2019 WHERE ((Origin = "BNA") OR (Origin = "MSP") OR (Origin = "PHL") OR (Origin = "SAN") OR (Origin = "DFW"));
SELECT SUM(Distance) FROM flights_2019 WHERE ((DayofMonth = 27) OR (DayofMonth = 5) OR (DayofMonth = 28) OR (DayofMonth = 19) OR (DayofMonth = 14));
SELECT DayOfWeek, SUM(DepDelay) FROM flights_2019 WHERE (((Origin = "ABI") OR (Origin = "ABE") OR (Origin = "YUM")) AND Month = 3) GROUP BY DayOfWeek;
SELECT DayOfWeek, SUM(TaxiOut) FROM flights_2019 WHERE (((DayofMonth = 2) OR (DayofMonth = 8)) AND Month = 5) GROUP BY DayOfWeek;
SELECT DayOfWeek, SUM(TaxiIn) FROM flights_2019 WHERE ((Dest = "ABE") OR (Dest = "YUM") OR (Dest = "ABI")) GROUP BY DayOfWeek;
SELECT DayOfWeek, SUM(AirTime) FROM flights_2019 WHERE (((DayofMonth = 3) OR (DayofMonth = 1)) AND ((OriginStateName = "Alaska") OR (OriginStateName = "Alabama"))) GROUP BY DayOfWeek;
SELECT Quarter, SUM(Distance) FROM flights_2019 WHERE ((OriginStateName = "Virginia") OR (OriginStateName = "California")) GROUP BY Quarter;
SELECT Quarter, SUM(AirTime) FROM flights_2019 WHERE (DayOfWeek = 4 AND ((DestStateName = "Arkansas") OR (DestStateName = "Arizona")) AND ((Dest = "ABR") OR (Dest = "ACT")) AND ((Month = 3) OR (Month = 8))) GROUP BY Quarter;
SELECT Quarter, SUM(Distance) FROM flights_2019 WHERE ((DestStateName = "Florida") OR (DestStateName = "Idaho")) GROUP BY Quarter;
SELECT Quarter, SUM(ArrDelay) FROM flights_2019 WHERE ((OriginStateName = "South Carolina") OR (OriginStateName = "Washington")) GROUP BY Quarter;
SELECT Month, SUM(TaxiIn) FROM flights_2019 WHERE ((Origin = "ABI") OR (Origin = "ACV") OR (Origin = "ACK")) GROUP BY Month;
SELECT Month, SUM(ArrDelay) FROM flights_2019 WHERE ((DayofMonth = 1) OR (DayofMonth = 6)) GROUP BY Month;
SELECT Month, SUM(TaxiIn) FROM flights_2019 WHERE ((Dest = "ABR") OR (Dest = "ACT")) GROUP BY Month;
SELECT Month, SUM(AirTime) FROM flights_2019 WHERE ((Dest = "ABE") OR (Dest = "ACV") OR (Dest = "ACY")) GROUP BY Month;
SELECT Month, SUM(TaxiIn) FROM flights_2019 GROUP BY Month;
SELECT Month, SUM(AirTime) FROM flights_2019 WHERE (((OriginStateName = "Alaska") OR (OriginStateName = "California")) AND DayOfWeek = 2 AND ((DestStateName = "Arkansas") OR (DestStateName = "Alaska"))) GROUP BY Month;
SELECT Month, SUM(AirTime) FROM flights_2019 WHERE ((Origin = "ABQ") OR (Origin = "ABI") OR (Origin = "ACY")) GROUP BY Month;
SELECT Month, SUM(ArrDelay) FROM flights_2019 WHERE DestStateName = "Connecticut" GROUP BY Month;
SELECT DayOfWeek, SUM(DepDelay) FROM flights_2019 WHERE ((Dest = "ATL") OR (Dest = "BUF")) GROUP BY DayOfWeek;
SELECT Reporting_Airline, SUM(TaxiIn) FROM flights_2019 WHERE (((OriginStateName = "Arizona") OR (OriginStateName = "Arkansas")) AND ((Origin = "ABQ") OR (Origin = "ABI") OR (Origin = "ABI"))) GROUP BY Reporting_Airline;
SELECT Reporting_Airline, SUM(TaxiOut) FROM flights_2019 WHERE Month = 3 GROUP BY Reporting_Airline;
SELECT Reporting_Airline, SUM(TaxiOut) FROM flights_2019 WHERE Month = 8 GROUP BY Reporting_Airline;
SELECT Reporting_Airline, SUM(ArrDelay) FROM flights_2019 WHERE DayOfWeek = 4 GROUP BY Reporting_Airline;
SELECT Reporting_Airline, SUM(DepDelay) FROM flights_2019 WHERE (((DayofMonth = 1) OR (DayofMonth = 9)) AND ((Origin = "ABI") OR (Origin = "ABE") OR (Origin = "ABE"))) GROUP BY Reporting_Airline;
SELECT Reporting_Airline, SUM(Distance) FROM flights_2019 WHERE ((Month = 1) OR (Month = 12)) GROUP BY Reporting_Airline;
SELECT Reporting_Airline, SUM(TaxiOut) FROM flights_2019 WHERE DayOfWeek = 2 GROUP BY Reporting_Airline;
SELECT Reporting_Airline, SUM(Distance) FROM flights_2019 WHERE (((DayofMonth = 1) OR (DayofMonth = 6)) AND Month = 2) GROUP BY Reporting_Airline;
SELECT Reporting_Airline, SUM(ArrDelay) FROM flights_2019 WHERE (((DayofMonth = 2) OR (DayofMonth = 4)) AND DayOfWeek = 5 AND DestStateName = "California") GROUP BY Reporting_Airline;
SELECT Quarter, SUM(Distance) FROM flights_2019 WHERE ((DayOfWeek = 3) OR (DayOfWeek = 7) OR (DayOfWeek = 4) OR (DayOfWeek = 6) OR (DayOfWeek = 7)) GROUP BY Quarter;
SELECT Quarter, SUM(TaxiOut) FROM flights_2019 WHERE ((Origin = "MKE") OR (Origin = "DEN") OR (Origin = "ABI") OR (Origin = "DTW") OR (Origin = "CVG")) GROUP BY Quarter;
SELECT Quarter,DayOfWeek, SUM(AirTime) FROM flights_2019 WHERE DayofMonth = 4 GROUP BY Quarter,DayOfWeek;
SELECT DayofMonth, SUM(DepDelay) FROM flights_2019 WHERE ((DestStateName = "Alaska") OR (DestStateName = "Alaska")) GROUP BY DayofMonth;
SELECT DayofMonth, SUM(AirTime) FROM flights_2019 WHERE ((Origin = "ABI") OR (Origin = "ABR") OR (Origin = "ACV")) GROUP BY DayofMonth;
SELECT DayofMonth, SUM(Distance) FROM flights_2019 WHERE ((Origin = "ACY") OR (Origin = "ABY")) GROUP BY DayofMonth;
SELECT DayofMonth, SUM(TaxiIn) FROM flights_2019 WHERE ((Origin = "ABQ") OR (Origin = "ABR") OR (Origin = "YUM")) GROUP BY DayofMonth;
SELECT DayofMonth, SUM(ArrDelay) FROM flights_2019 WHERE Month = 4 GROUP BY DayofMonth;
SELECT DayofMonth, SUM(ArrDelay) FROM flights_2019 WHERE Month = 3 GROUP BY DayofMonth;
SELECT Reporting_Airline, SUM(TaxiOut) FROM flights_2019 WHERE ((Origin = "LAS") OR (Origin = "OAK")) GROUP BY Reporting_Airline;
SELECT Reporting_Airline, SUM(AirTime) FROM flights_2019 WHERE ((DayOfWeek = 7) OR (DayOfWeek = 1)) GROUP BY Reporting_Airline;
SELECT OriginStateName, SUM(TaxiIn) FROM flights_2019 WHERE (((DestStateName = "Arizona") OR (DestStateName = "Alaska")) AND DayOfWeek = 6) GROUP BY OriginStateName;
SELECT OriginStateName, SUM(TaxiIn) FROM flights_2019 WHERE Month = 4 GROUP BY OriginStateName;
SELECT DestStateName, SUM(DepDelay) FROM flights_2019 WHERE DayOfWeek = 5 GROUP BY DestStateName;
SELECT OriginStateName, SUM(AirTime) FROM flights_2019 WHERE ((Dest = "ABI") OR (Dest = "ABQ") OR (Dest = "ABR")) GROUP BY OriginStateName;
SELECT DestStateName, SUM(TaxiOut) FROM flights_2019 WHERE (((Origin = "ABR") OR (Origin = "ABY")) AND Month = 2) GROUP BY DestStateName;
SELECT OriginStateName, SUM(AirTime) FROM flights_2019 WHERE (((Origin = "ABI") OR (Origin = "ACY") OR (Origin = "ACV")) AND Month = 7) GROUP BY OriginStateName;
SELECT DestStateName, SUM(TaxiOut) FROM flights_2019 WHERE ((DayofMonth = 2) OR (DayofMonth = 6)) GROUP BY DestStateName;
SELECT OriginStateName, SUM(DepDelay) FROM flights_2019 WHERE ((Dest = "ABE") OR (Dest = "YUM") OR (Dest = "ABI")) GROUP BY OriginStateName;
SELECT OriginStateName, SUM(ArrDelay) FROM flights_2019 WHERE (Quarter = 4 AND ((Reporting_Airline = "9E") OR (Reporting_Airline = "DL"))) GROUP BY OriginStateName;
SELECT OriginStateName, SUM(ArrDelay) FROM flights_2019 WHERE Reporting_Airline = "9E" GROUP BY OriginStateName;
SELECT OriginStateName, SUM(DepDelay) FROM flights_2019 WHERE ((DestStateName = "Alaska") OR (DestStateName = "Connecticut")) GROUP BY OriginStateName;
SELECT OriginStateName, SUM(ArrDelay) FROM flights_2019 WHERE DestStateName = "California" GROUP BY OriginStateName;
SELECT OriginStateName, SUM(ArrDelay) FROM flights_2019 GROUP BY OriginStateName;
SELECT DestStateName, SUM(TaxiIn) FROM flights_2019 WHERE (((Origin = "ABE") OR (Origin = "YUM") OR (Origin = "ABI")) AND Reporting_Airline = "DL") GROUP BY DestStateName;
SELECT DestStateName, SUM(AirTime) FROM flights_2019 WHERE Month = 3 GROUP BY DestStateName;
SELECT Month, SUM(ArrDelay) FROM flights_2019 WHERE ((Quarter = 2) OR (Quarter = 2) OR (Quarter = 2) OR (Quarter = 3) OR (Quarter = 1)) GROUP BY Month;
SELECT Quarter,Reporting_Airline, SUM(TaxiIn) FROM flights_2019 WHERE OriginStateName = "Florida" GROUP BY Quarter,Reporting_Airline;
SELECT Reporting_Airline,Quarter, SUM(TaxiIn) FROM flights_2019 WHERE ((Dest = "ABI") OR (Dest = "ABQ") OR (Dest = "ABR")) GROUP BY Reporting_Airline,Quarter;
SELECT Quarter,DayOfWeek, SUM(AirTime) FROM flights_2019 WHERE ((DayofMonth = 5) OR (DayofMonth = 21) OR (DayofMonth = 30)) GROUP BY Quarter,DayOfWeek;
SELECT DayOfWeek,Month, SUM(TaxiIn) FROM flights_2019 WHERE ((Dest = "ABI") OR (Dest = "ACY") OR (Dest = "ACV")) GROUP BY DayOfWeek,Month;
SELECT DayOfWeek,Month, SUM(ArrDelay) FROM flights_2019 WHERE OriginStateName = "California" GROUP BY DayOfWeek,Month;
SELECT Quarter,DayOfWeek, SUM(Distance) FROM flights_2019 WHERE ((Reporting_Airline = "UA") OR (Reporting_Airline = "YV") OR (Reporting_Airline = "OO")) GROUP BY Quarter,DayOfWeek;
SELECT OriginStateName, SUM(DepDelay) FROM flights_2019 WHERE ((DayofMonth = 8) OR (DayofMonth = 7)) GROUP BY OriginStateName;