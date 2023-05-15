*BAS 220 Homework 2- Carlos Vargas;

*Step 2 Create libname;
libname BAS220 "/home/u63027572/myfolders";

*Step 3: Create SAS table;
proc SQL;
	create table BAS220.Nissan2019 as 
	select *
	from BAS220.vehicles
	where Make = "Nissan" and Year = 2019;
quit;

*Steps 4-7;
*Variables: 
1.	highway08
2.	fuelcost08
3.	city08;

ods graphics on;
proc univariate data = BAS220.Nissan2019 plot;
	var highway08;
	histogram / normal odstitle="Highway MPG for fuelType1";
	label highway08 = "Miles Per Gallons in Highway";
run;

ods graphics on;
proc univariate data = BAS220.Nissan2019 plot;
	var fuelcost08;
	histogram / normal odstitle="Annual fuel cost for fuelType1 ";
	label highway08 = "Fuel Cost in Gallons";
run;

ods graphics on;
proc univariate data = BAS220.Nissan2019 plot;
	var city08;
	histogram / normal odstitle="city MPG for fuelType1";
	label city08 = "Miles per Gallon in City";
run;

*Step 5: highway08
1. Mean: 32.6382979
2. Median: 28.00000
3. Variance: 321.36633
4. Standard Deviation: 17.9266932
5. 3rd Quartile: 35
6. IQR: 13.00000;


*Step 5: fuelcost08
1. Mean: 1423.404
2. Median: 1400.000
3. Variance: 188353
4. Standard Deviation: 433.996978
5. 3rd Quartile: 1800
6. IQR: 750.00000;


*Step 5: city08
1. Mean: 27.87234
2. Median: 23.00000
3. Variance: 604.24422
4. Standard Deviation: 24.58138
5. 3rd Quartile: 27
6. IQR: 11.00000;

*Step 6: In your results from the proc univariates, 
there will be box and whisker plot for each of the three variables. 
State in your submission whether each of the three variables has 
any outliers and how you were able to determine if outliers existed 
based on the box and whisker plot.; 

*Step 6: highway08
Does have outliers, there are 3 dots at the end of the box and whisker plot.

fuelcost08
Does not have outliers

city08
Does have outliers, there are 3 dots at the end of the box and whisker plot.;

*Step 7: highway08 is right skewed;

*Step 7: fuelcost08 is either right or none skewed. 
It's hard to say because it's almost symmetrical;

*Step 7: city08 is right skewed;

