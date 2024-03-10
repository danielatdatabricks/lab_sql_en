<img src="https://raw.githubusercontent.com/Databricks-BR/lab_sql/main/images/header_handson_sql.png">

# LAB Practice 04 - Creating an ALERT

Practical training on the Databricks platform focused on Analytics functionalities (SQL, Query, Dask, DataViz, SQL end-point).

## Exercise Objectives

The objective of this laboratory is to explore the functionalities of creating an ALERT.

</br></br>

## Exercise 04.01 - Creating the query

``` sql
USE CATALOG `<<academy>>`;
USE <<YOUR_USER>>;
select dolar_cotizacion as valor_dolar
FROM bronze_dolar
order by dolar_dia DESC;


```
</br></br>
Save the Query. Tip: "Query_Alert" + <your_user>
</br></br>


Exercise 04.02 - Creating the Alert
We will use the "ALERT" menu option.

<img src="https://raw.githubusercontent.com/Databricks-BR/lab_sql/main/images/lab04_1.png" style="height: 200px;">
</br></br>

Click on the CREATE button and configure the ALERT as shown below:

</br></br>

<img src="https://raw.githubusercontent.com/Databricks-BR/lab_sql/main/images/lab04_2.png" style="height: 700px;">
```


