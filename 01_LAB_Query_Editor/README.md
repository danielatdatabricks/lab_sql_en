
<img src="https://raw.githubusercontent.com/Databricks-BR/lab_sql/main/images/header_handson_sql.png">

# LAB Practice 01 - Exploring the Query Editor

Practical training on the Databricks platform focused on Analytics functionalities (SQL, Query, Dask, DataViz, SQL end-point).

## Exercise Objectives

The objective of this laboratory is to understand the query functionalities of the Databricks platform using SQL language (and visual interfaces) and explore its analytical potential.

The exercises should be executed in the side menu option "**SQL Editor**".

<img src="https://raw.githubusercontent.com/Databricks-BR/lab_sql/main/images/lab01_editor_sql.png">

## Session 01: Structure of TABLES, DATABASES, and CATALOG

<img src="https://raw.githubusercontent.com/Databricks-BR/lab_sql/main/images/lab01_uc.png">

| Tópico | Comando |
| -- | -- |
| **Catálogo** | CREATE CATALOG <nombre_catalogo> |
| **Schema** | CREATE DATABASE IF NOT EXISTS <nombre_catalogo>.<nombre_base_datos>; |
| **Tabla** | CREATE OR REPLACE TABLE <nombre_catalogo>.<nombre_base_datos>.<nombre_tabla>; |
| **Vista** | CREATE OR REPLACE VIEW <nombre_catalogo>.<nombre_base_datos>.<nombre_tabla> AS ...; |

#### Referencia:
* [Databricks Ayuda - Sintaxis DDL](https://docs.databricks.com/sql/language-manual/sql-ref-syntax-ddl-create-table.html)

## Exercise 01.01 - Creating the database. 

``` sql
USE CATALOG academy;

CREATE DATABASE IF NOT EXISTS <tu_login>;

USE <tu_login>;
```

## Exercise 01.02 - Creating the table

``` sql

CREATE OR REPLACE TABLE bronze_tipo_empresa 
  ( tipo_empresa      INT    COMMENT "Código del tipo de empresa",
    desc_tipo_empresa STRING COMMENT "Descripción del tipo de empresa" )
COMMENT "Tabla auxiliar, tipo de empresa"
```

 ## Exercise 01.03 - Inserting data into the Table using SQL INSERT

 ``` sql
 INSERT INTO bronze_tipo_empresa VALUES (1, "NO DISPONIBLE") ;
 INSERT INTO bronze_tipo_empresa VALUES (2, "MICRO EMPRESA") ;
 INSERT INTO bronze_tipo_empresa VALUES (3, "PEQUENA EMPRESA") ;
 INSERT INTO bronze_tipo_empresa VALUES (4, "NO SE") ;
 INSERT INTO bronze_tipo_empresa VALUES (5, "NULL") ;
```

 ## Exercise 01.04 - Verifying the content of the TABLE

 ``` sql
SELECT * 
FROM bronze_tipo_empresa 
ORDER BY tipo_empresa
```

 ## Exercise 01.05 - Modifying the content of the TABLE
 ``` sql
UPDATE bronze_tipo_empresa  
SET desc_tipo_empresa = "OTRO" 
WHERE tipo_empresa = 5;


DELETE 
FROM bronze_tipo_empresa 
WHERE tipo_empresa = 4;
```

## Exercise 01.06 - Viewing the Update History of the table

 ``` sql
DESCRIBE HISTORY bronze_tipo_empresa 
```

## Exercise 01.07 - Viewing the content of the table in the previous version (TIME TRAVEL)

 ``` sql
SELECT * FROM bronze_tipo_empresa VERSION AS OF 5
```

## Exercise 01.08 - RESTORING the content of the table to the previous version (TIME TRAVEL)

 ``` sql
RESTORE TABLE bronze_tipo_empresa TO VERSION AS OF 5 
```

## Exercise 01.09 - Viewing Table Properties

 ``` sql
DESCRIBE DETAIL bronze_tipo_empresa 
```

## Exercise 01.10 - Viewing detailed information about the Table
 ``` sql
DESCRIBE TABLE EXTENDED bronze_tipo_empresa
```
