SELECT Ir, AVG(PRES) FROM pm25_50k WHERE (year = 2014 AND day = 7) GROUP BY Ir;
SELECT year, AVG(pm2.5) FROM pm25_50k WHERE (Is = 0 AND Ir = 0) GROUP BY year;
SELECT year, AVG(TEMP) FROM pm25_50k WHERE (day = 4 AND hour = 6 AND cbwd = "cv" AND Is = 0 AND Ir = 0) GROUP BY year;
SELECT cbwd, AVG(PRES) FROM pm25_50k WHERE (year = 2011 AND day = 18 AND hour = 21) GROUP BY cbwd;
SELECT month, AVG(PRES) FROM pm25_50k WHERE hour = 3 GROUP BY month;
SELECT Is, AVG(DEWP) FROM pm25_50k GROUP BY Is
SELECT Is, AVG(Iws) FROM pm25_50k WHERE (year = 2011 AND month = 5 AND hour = 14) GROUP BY Is;
SELECT day, AVG(DEWP) FROM pm25_50k GROUP BY day
SELECT hour, AVG(TEMP) FROM pm25_50k WHERE (month = 10 AND cbwd = "SE" AND Is = 0 AND Ir = 0) GROUP BY hour;
SELECT month, AVG(TEMP) FROM pm25_50k WHERE hour = 18 GROUP BY month;
SELECT Is, AVG(pm2.5) FROM pm25_50k WHERE (year = 2010 AND month = 12 AND hour = 13 AND cbwd = "NW" AND Ir = 0) GROUP BY Is;
SELECT month, AVG(Iws) FROM pm25_50k WHERE hour = 19 GROUP BY month;
SELECT year, AVG(TEMP) FROM pm25_50k WHERE (month = 6 AND day = 22 AND hour = 20 AND cbwd = "SE" AND Ir = 0) GROUP BY year;
SELECT cbwd, AVG(TEMP) FROM pm25_50k WHERE (year = 2014 AND month = 7 AND day = 31 AND hour = 16 AND Is = 0 AND Ir = 0) GROUP BY cbwd;
SELECT Ir, AVG(PRES) FROM pm25_50k WHERE Is = 0 GROUP BY Ir;
SELECT Ir, AVG(pm2.5) FROM pm25_50k WHERE year = 2013 GROUP BY Ir;
SELECT year, AVG(PRES) FROM pm25_50k WHERE (month = 8 AND day = 25 AND cbwd = "cv" AND Is = 0 AND Ir = 0) GROUP BY year;
SELECT Is, AVG(PRES) FROM pm25_50k WHERE (month = 7 AND day = 27 AND hour = 12 AND cbwd = "SE" AND Ir = 0) GROUP BY Is;
SELECT cbwd, AVG(TEMP) FROM pm25_50k WHERE (day = 28 AND hour = 5) GROUP BY cbwd;
SELECT year, AVG(DEWP) FROM pm25_50k GROUP BY year
SELECT day, AVG(PRES) FROM pm25_50k GROUP BY day
SELECT Is, AVG(PRES) FROM pm25_50k WHERE (month = 1 AND cbwd = "NW" AND Ir = 0) GROUP BY Is;
SELECT day, AVG(pm2.5) FROM pm25_50k WHERE (hour = 11 AND Is = 0) GROUP BY day;
SELECT year, AVG(DEWP) FROM pm25_50k WHERE (month = 8 AND day = 5 AND cbwd = "NW" AND Is = 0 AND Ir = 0) GROUP BY year;
SELECT year, AVG(DEWP) FROM pm25_50k WHERE cbwd = "SE" GROUP BY year;
SELECT hour, AVG(DEWP) FROM pm25_50k WHERE (day = 8 AND cbwd = "NW" AND Ir = 2) GROUP BY hour;
SELECT day, AVG(PRES) FROM pm25_50k WHERE (month = 3 AND hour = 8) GROUP BY day;
SELECT hour, AVG(PRES) FROM pm25_50k WHERE (year = 2010 AND day = 30 AND cbwd = "NW" AND Is = 0 AND Ir = 0) GROUP BY hour;
SELECT day, AVG(TEMP) FROM pm25_50k WHERE (year = 2013 AND month = 4 AND cbwd = "SE" AND Ir = 0) GROUP BY day;
SELECT month, AVG(PRES) FROM pm25_50k WHERE (year = 2013 AND day = 11 AND hour = 21 AND cbwd = "NW" AND Ir = 0) GROUP BY month;
SELECT cbwd, AVG(Iws) FROM pm25_50k WHERE day = 2 GROUP BY cbwd;
SELECT month, AVG(Iws) FROM pm25_50k WHERE (year = 2014 AND day = 26 AND hour = 18 AND Is = 0 AND Ir = 0) GROUP BY month;
SELECT Ir, AVG(Iws) FROM pm25_50k WHERE (year = 2013 AND month = 10 AND day = 27 AND hour = 3 AND Is = 0) GROUP BY Ir;
SELECT hour, AVG(TEMP) FROM pm25_50k WHERE (cbwd = "NW" AND Is = 0 AND Ir = 0) GROUP BY hour;
SELECT cbwd, AVG(Iws) FROM pm25_50k GROUP BY cbwd
SELECT month, AVG(DEWP) FROM pm25_50k WHERE (year = 2010 AND day = 9 AND hour = 22 AND cbwd = "NW" AND Is = 0 AND Ir = 0) GROUP BY month;
SELECT hour, AVG(DEWP) FROM pm25_50k WHERE (year = 2010 AND month = 2 AND day = 20 AND cbwd = "SE" AND Is = 0 AND Ir = 0) GROUP BY hour;
SELECT month, AVG(pm2.5) FROM pm25_50k GROUP BY month
SELECT day, AVG(TEMP) FROM pm25_50k WHERE (year = 2014 AND month = 11 AND hour = 0 AND cbwd = "cv" AND Is = 0 AND Ir = 0) GROUP BY day;
SELECT hour, AVG(PRES) FROM pm25_50k WHERE (year = 2014 AND day = 22 AND Is = 0) GROUP BY hour;
SELECT Is, AVG(PRES) FROM pm25_50k WHERE (year = 2014 AND month = 11 AND day = 8 AND hour = 17 AND cbwd = "SE" AND Ir = 0) GROUP BY Is;
SELECT hour, AVG(PRES) FROM pm25_50k GROUP BY hour
SELECT day, AVG(TEMP) FROM pm25_50k WHERE (year = 2014 AND Is = 0) GROUP BY day;
SELECT hour, AVG(Iws) FROM pm25_50k WHERE (year = 2012 AND month = 4 AND day = 19 AND cbwd = "SE" AND Is = 0 AND Ir = 0) GROUP BY hour;
SELECT cbwd, AVG(Iws) FROM pm25_50k WHERE (year = 2014 AND month = 1 AND day = 3 AND hour = 3 AND Is = 0 AND Ir = 0) GROUP BY cbwd;
SELECT hour, AVG(TEMP) FROM pm25_50k WHERE (year = 2014 AND month = 6 AND cbwd = "SE" AND Ir = 0) GROUP BY hour;
SELECT cbwd, AVG(Iws) FROM pm25_50k WHERE (year = 2011 AND month = 6 AND day = 18 AND hour = 22 AND Is = 0 AND Ir = 0) GROUP BY cbwd;
SELECT Is, AVG(TEMP) FROM pm25_50k WHERE (year = 2011 AND month = 4 AND hour = 3 AND cbwd = "SE") GROUP BY Is;
SELECT Ir, AVG(Iws) FROM pm25_50k GROUP BY Ir
SELECT cbwd, AVG(pm2.5) FROM pm25_50k WHERE day = 30 GROUP BY cbwd;
SELECT day, AVG(DEWP) FROM pm25_50k WHERE (year = 2012 AND month = 1 AND hour = 12 AND Is = 0 AND Ir = 0) GROUP BY day;
SELECT hour, AVG(PRES) FROM pm25_50k WHERE (year = 2013 AND day = 7 AND cbwd = "NW" AND Is = 0 AND Ir = 0) GROUP BY hour;
SELECT hour, AVG(PRES) FROM pm25_50k WHERE (year = 2014 AND month = 5 AND day = 2 AND cbwd = "NW" AND Is = 0 AND Ir = 0) GROUP BY hour;
SELECT Ir, AVG(Iws) FROM pm25_50k WHERE (year = 2012 AND month = 5 AND cbwd = "SE" AND Is = 0) GROUP BY Ir;
SELECT cbwd, AVG(PRES) FROM pm25_50k WHERE (month = 3 AND Is = 0) GROUP BY cbwd;
SELECT Is, AVG(TEMP) FROM pm25_50k WHERE (year = 2012 AND month = 3 AND day = 31 AND hour = 7 AND cbwd = "NE" AND Ir = 0) GROUP BY Is;
SELECT month, AVG(pm2.5) FROM pm25_50k WHERE (year = 2012 AND Ir = 9) GROUP BY month;
SELECT Ir, AVG(pm2.5) FROM pm25_50k WHERE (day = 21 AND cbwd = "cv") GROUP BY Ir;
SELECT hour, AVG(Iws) FROM pm25_50k WHERE (year = 2011 AND Is = 0) GROUP BY hour;
SELECT year, AVG(DEWP) FROM pm25_50k WHERE (day = 17 AND Is = 0) GROUP BY year;
SELECT day, AVG(Iws) FROM pm25_50k WHERE (year = 2013 AND month = 5 AND hour = 19 AND Is = 0) GROUP BY day;
SELECT month, AVG(DEWP) FROM pm25_50k WHERE (day = 11 AND hour = 2 AND Is = 0) GROUP BY month;
SELECT day, AVG(Iws) FROM pm25_50k WHERE (year = 2014 AND hour = 18 AND Ir = 0) GROUP BY day;
SELECT cbwd, AVG(Iws) FROM pm25_50k WHERE year = 2013 GROUP BY cbwd;
SELECT Ir, AVG(DEWP) FROM pm25_50k WHERE Is = 0 GROUP BY Ir;
SELECT Ir, AVG(DEWP) FROM pm25_50k WHERE (year = 2011 AND month = 5 AND hour = 9 AND cbwd = "NW" AND Is = 0) GROUP BY Ir;
SELECT month, AVG(Iws) FROM pm25_50k WHERE (day = 22 AND Is = 0 AND Ir = 0) GROUP BY month;
SELECT year, AVG(DEWP) FROM pm25_50k WHERE (month = 12 AND day = 3 AND hour = 3) GROUP BY year;
SELECT day, AVG(Iws) FROM pm25_50k WHERE hour = 1 GROUP BY day;
SELECT day, AVG(DEWP) FROM pm25_50k GROUP BY day
SELECT Is, AVG(TEMP) FROM pm25_50k GROUP BY Is
SELECT year, AVG(pm2.5) FROM pm25_50k WHERE (month = 1 AND day = 15) GROUP BY year;
SELECT year, AVG(pm2.5) FROM pm25_50k WHERE (month = 4 AND day = 6 AND hour = 12 AND cbwd = "SE" AND Is = 0 AND Ir = 0) GROUP BY year;
SELECT Ir, AVG(DEWP) FROM pm25_50k WHERE (year = 2013 AND Is = 0) GROUP BY Ir;
SELECT Ir, AVG(DEWP) FROM pm25_50k WHERE (year = 2014 AND cbwd = "cv") GROUP BY Ir;
SELECT Ir, AVG(TEMP) FROM pm25_50k WHERE hour = 15 GROUP BY Ir;
SELECT day, AVG(PRES) FROM pm25_50k WHERE (year = 2014 AND month = 11 AND hour = 11 AND cbwd = "NW" AND Is = 0 AND Ir = 0) GROUP BY day;
SELECT cbwd, AVG(PRES) FROM pm25_50k WHERE year = 2011 GROUP BY cbwd;
SELECT year, AVG(TEMP) FROM pm25_50k WHERE (month = 7 AND day = 28 AND hour = 1 AND Is = 0 AND Ir = 0) GROUP BY year;
SELECT Is, AVG(Iws) FROM pm25_50k GROUP BY Is
SELECT cbwd, AVG(PRES) FROM pm25_50k GROUP BY cbwd
SELECT Ir, AVG(DEWP) FROM pm25_50k WHERE (year = 2010 AND month = 5 AND day = 7 AND hour = 20 AND cbwd = "NW" AND Is = 0) GROUP BY Ir;
SELECT Ir, AVG(Iws) FROM pm25_50k WHERE (year = 2014 AND month = 2 AND day = 18 AND cbwd = "SE" AND Is = 0) GROUP BY Ir;
SELECT year, AVG(TEMP) FROM pm25_50k WHERE (month = 9 AND day = 5 AND hour = 22 AND Is = 0) GROUP BY year;
SELECT day, AVG(DEWP) FROM pm25_50k WHERE (hour = 22 AND Is = 0 AND Ir = 0) GROUP BY day;
SELECT cbwd, AVG(Iws) FROM pm25_50k WHERE Ir = 0 GROUP BY cbwd;
SELECT month, AVG(Iws) FROM pm25_50k WHERE (year = 2010 AND day = 5 AND hour = 6 AND Ir = 0) GROUP BY month;
SELECT month, AVG(TEMP) FROM pm25_50k WHERE (year = 2014 AND day = 9 AND cbwd = "NE" AND Is = 0) GROUP BY month;
SELECT Ir, AVG(DEWP) FROM pm25_50k WHERE (month = 12 AND day = 18 AND hour = 18 AND cbwd = "SE" AND Is = 0) GROUP BY Ir;
SELECT day, AVG(DEWP) FROM pm25_50k WHERE month = 12 GROUP BY day;
SELECT month, AVG(DEWP) FROM pm25_50k GROUP BY month
SELECT Is, AVG(pm2.5) FROM pm25_50k GROUP BY Is
SELECT Ir, AVG(PRES) FROM pm25_50k GROUP BY Ir
SELECT month, AVG(PRES) FROM pm25_50k WHERE (year = 2014 AND day = 20 AND Ir = 0) GROUP BY month;
SELECT day, AVG(PRES) FROM pm25_50k WHERE (year = 2012 AND month = 1 AND hour = 15 AND cbwd = "SE" AND Is = 0 AND Ir = 0) GROUP BY day;
SELECT cbwd, AVG(DEWP) FROM pm25_50k WHERE (year = 2012 AND day = 8 AND Is = 0) GROUP BY cbwd;
SELECT hour, AVG(TEMP) FROM pm25_50k WHERE (year = 2014 AND month = 2 AND day = 26 AND Ir = 3) GROUP BY hour;
SELECT year, AVG(PRES) FROM pm25_50k WHERE (day = 8 AND hour = 9) GROUP BY year;
SELECT day, AVG(PRES) FROM pm25_50k WHERE Is = 0 GROUP BY day;
SELECT cbwd, AVG(TEMP) FROM pm25_50k WHERE (year = 2010 AND month = 10 AND hour = 3 AND Is = 0 AND Ir = 0) GROUP BY cbwd;