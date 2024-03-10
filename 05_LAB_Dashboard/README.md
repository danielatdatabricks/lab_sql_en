<img src="https://raw.githubusercontent.com/databricks-latam-es/lab_sql/main/images/header_handson_sql.png">

# LAB Practice 05 - Exploring the Dashboard

Practical training on the Databricks platform focused on Analytics functionalities (SQL, Query, Dask, DataViz, SQL end-point).

## Exercise Objectives

The objective of this laboratory is to explore query functionalities with Visualization Charts and Filters to then assemble a Dashboard.

We will use the "SQL Editor".

## Exercise 05.01 - Creating the Query.

``` sql
SELECT * FROM <CATALOG_NAME>.<SCHEMA_NAME>.bronze_dolar;


```
Query result:
<img src="https://raw.githubusercontent.com/databricks-latam-es/lab_sql/main/images/lab05_01.png" style="height: 200px;">


</br></br>

## Exercise 05.02 - Creating the Visualization and Filter
In the results bar, click on the "+" button, and choose the "Visualization" option.

<img src="https://raw.githubusercontent.com/databricks-latam-es/lab_sql/main/images/lab05_02.png" style="height: 200px;">
In Visualization Type, choose "LINE":

<img src="https://raw.githubusercontent.com/databricks-latam-es/lab_sql/main/images/lab05_03.png" style="height: 200px;">
In the "X Column" (X-axis), select the variable "dolar_dia".

<img src="https://raw.githubusercontent.com/databricks-latam-es/lab_sql/main/images/lab05_04.png" style="height: 200px;">
In the "Y Columns" (Y-axis), select the variable "dolar_cotizacion".
Also, choose the aggregation method: Average.

<img src="https://raw.githubusercontent.com/databricks-latam-es/lab_sql/main/images/lab05_05.png" style="height: 200px;">
Click on the visualization title and rename it to "dollar_chart".

<img src="https://raw.githubusercontent.com/databricks-latam-es/lab_sql/main/images/lab05_06.png" style="height: 150px;">
The expected result is similar to the graph below:

<img src="https://raw.githubusercontent.com/databricks-latam-es/lab_sql/main/images/lab05_07.png" style="height: 500px;">
Click again on the "+" button, and add a FILTER:

<img src="https://raw.githubusercontent.com/databricks-latam-es/lab_sql/main/images/lab05_09.png" style="height: 150px;">
Choose the column "dolar_anio" to use in the FILTER:

<img src="https://raw.githubusercontent.com/databricks-latam-es/lab_sql/main/images/lab05_10.png" style="height: 300px;">
The result will look like this:

<img src="https://raw.githubusercontent.com/databricks-latam-es/lab_sql/main/images/lab05_11.png" style="height: 250px;">
Save the Query result with the name: "Query_Historical_dollar_" + <YOUR_USER>.
</br></br></br>

## Exercise 05.03 - Creating the Dashboard
In the Side Menu, choose DASHBOARDS:

<img src="https://raw.githubusercontent.com/databricks-latam-es/lab_sql/main/images/lab05_08.png" style="height: 150px;">
Click on CREATE DASHBOARD option.

On the Dashboard screen, click on the "ADD" button, and choose "TEXT BOX" option.

<img src="https://raw.githubusercontent.com/databricks-latam-es/lab_sql/main/images/lab05_12.png" style="height: 100px;">
In the text field, write the following:

``` md

![alt text](https://raw.githubusercontent.com/databricks-latam-es/lab_sql/main/images/header_handson_sql.png)


```

<img src="https://raw.githubusercontent.com/databricks-latam-es/lab_sql/main/images/lab05_13.png" style="height: 300px;">

Repeat the operation. Click on "ADD" button again, and choose "TEXT BOX" option. Write the following:

``` md


![alt text](https://raw.githubusercontent.com/databricks-latam-es/lab_sql/main/images/header_dolar.png)

```

<img src="https://raw.githubusercontent.com/databricks-latam-es/lab_sql/main/images/lab05_14.png" style="height: 200px;">

Click again on ADD button, and select "VISUALIZATION" option.

<img src="https://raw.githubusercontent.com/databricks-latam-es/lab_sql/main/images/lab05_15.png" style="height: 200px;">

Choose the name of the query saved in the previous exercise.

<img src="https://raw.githubusercontent.com/databricks-latam-es/lab_sql/main/images/lab05_16.png" style="height: 250px;">

Click ADD button again, and select "FILTER", and configure as follows:

<img src="https://raw.githubusercontent.com/databricks-latam-es/lab_sql/main/images/lab05_17.png" style="height: 200px;">

</br></br></br>

The final result should look like this. Save your dashboard.

</br></br>
<img src="https://raw.githubusercontent.com/databricks-latam-es/lab_sql/main/images/lab05_final.png" style="height: 600px;">
