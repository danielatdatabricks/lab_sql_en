
<img src="https://raw.githubusercontent.com/Databricks-BR/lab_sql/main/images/header_handson_sql.png">

# LAB Practice 03 - Exploring the Query Profile

Practical training on the Databricks platform focused on Analytics functionalities (SQL, Query, Dask, DataViz, SQL end-point).

## Exercise Objectives

The objective of this laboratory is to explore the functionalities of the query execution plan (Query Profiler). Identifying bottlenecks and performance improvement opportunities.
</br></br>

<img src="https://raw.githubusercontent.com/Databricks-BR/lab_sql/main/images/desnormaliza.png">

We will use the "SQL Editor".

## Exercise 03.01 - Creating the Query

``` sql

/**********************************
## PARAMETERS CONFIGURATION
***********************************/
USE CATALOG `<nombre_catalogo>`;
USE <nombre_schema>;
/**********************************/

CREATE OR REPLACE TABLE silver_empresas AS
SELECT 
  est.cnpj_basico AS cnpj_basico,
  matriz_filial AS nombre_matriz,
  nombre_comercial AS nombre_comercial_empresa,
  razon_social AS nombre_razon_social,
  codigo_situacion_cadastral AS cod_situacion_cadastral,
  data_situacion_cadastral AS data_situacion_cadastral,
  motivo_situacion_cadastral AS motivo_situacion_cadastral,
  inicio_actividades AS data_inicio_actividades,
  cnae_principal AS cnae_principal,
  cnae.descripcion AS cnae_descripcion,
  tipo_via AS direccion_tipo_via,
  via AS via,
  numero AS direccion_nombre_via,
  colonia AS direccion_colonia,
  cp AS direccion_codigo_postal,
  uf AS direccion_entidad_federativa,
  codigo_municipio_siafi AS codigo_municipio,
  naturaleza_juridica AS cod_naturaleza_juridica,
  nat.descripcion AS desc_naturaleza_juridica,
  calificacion_responsable AS calificacion_responsable,
  capital_social AS val_capital_social,
  emp.tipo_empresa AS cod_tipo_empresa,
  porte.desc_tipo_empresa AS desc_tipo_empresa,
  entidad_federativa_responsable AS entidad_federativa_responsable
from bronze_estabelecimentos est
join bronze_empresas emp
on est.cnpj_basico = emp.cnpj_basico
left join bronze_cnae cnae
on est.cnae_principal = cnae.cod_cnae
left join bronze_tipo_empresa porte
on emp.tipo_empresa = porte.tipo_empresa
left join bronze_naturezas nat
on emp.naturaleza_juridica = nat.codigo;


```

## Exercise 03.02 - Viewing the Query Execution History

In the Menu, choose the "Query History" option.

<img src="https://raw.githubusercontent.com/Databricks-BR/lab_sql/main/images/lab03_1.png" style="height: 200px;">
Filter Queries (for example, select your own Queries):

<img src="https://raw.githubusercontent.com/Databricks-BR/lab_sql/main/images/lab03_2.png" style="height: 300px;">


## Exercise 03.03 - Analyzing Execution Details

<img src="https://raw.githubusercontent.com/Databricks-BR/lab_sql/main/images/lab03_3.png" style="height: 200px;">


## Exercise 03.04 - Analyzing the Query Profiler

<img src="https://raw.githubusercontent.com/Databricks-BR/lab_sql/main/images/lab03_4.png" style="height: 200px;">


## Exercise 03.05 - Analyzing the Execution Plan

<img src="https://raw.githubusercontent.com/Databricks-BR/lab_sql/main/images/lab03_5.png" style="height: 250px;">

<img src="https://raw.githubusercontent.com/Databricks-BR/lab_sql/main/images/lab03_6.png" style="height: 700px;">


## Exercise 03.06 - Adding Comments to the Table and Columns.

``` sql
/**********************************
## PARAMETERS CONFIGURATION
***********************************/
USE CATALOG `academy`;
USE <YOUR_USER>;
/**********************************/

COMMENT ON TABLE silver_empresas IS 'Tabla con datos de las empresas';

ALTER TABLE silver_empresas ALTER COLUMN nombre_matriz COMMENT 'Nombre de la Matriz';
ALTER TABLE silver_empresas ALTER COLUMN nombre_comercial_empresa COMMENT 'Nombre Comercial';
ALTER TABLE silver_empresas ALTER COLUMN nombre_razon_social COMMENT 'Razón Social';
ALTER TABLE silver_empresas ALTER COLUMN cod_situacion_cadastral COMMENT 'Código da Situación Cadastral';
ALTER TABLE silver_empresas ALTER COLUMN data_situacion_cadastral COMMENT 'Datos de Situación Cadastral';
ALTER TABLE silver_empresas ALTER COLUMN motivo_situacion_cadastral COMMENT 'Motivo de Situación Cadastral';
ALTER TABLE silver_empresas ALTER COLUMN data_inicio_actividades COMMENT 'Inicio de actividaddes';
ALTER TABLE silver_empresas ALTER COLUMN cnae_principal COMMENT 'Código de Naturaleza Económica';
ALTER TABLE silver_empresas ALTER COLUMN cnae_descripcion COMMENT 'Descripción de Naturaleza Económica';
ALTER TABLE silver_empresas ALTER COLUMN direccion_tipo_via COMMENT 'Dirección - Tipo de Vía';
ALTER TABLE silver_empresas ALTER COLUMN direccion_nombre_via COMMENT 'Dirección - Nombre de Vía';
ALTER TABLE silver_empresas ALTER COLUMN direccion_colonia COMMENT 'Dirección - Colonia';
ALTER TABLE silver_empresas ALTER COLUMN direccion_codigo_postal COMMENT 'Dirección - Código Postal';
ALTER TABLE silver_empresas ALTER COLUMN direccion_entidad_federativa COMMENT 'Dirección - Entidad Federativa';
ALTER TABLE silver_empresas ALTER COLUMN codigo_municipio COMMENT 'Código de Municipio';
ALTER TABLE silver_empresas ALTER COLUMN cod_naturaleza_juridica COMMENT 'Código de Naturaleza Jurídica';
ALTER TABLE silver_empresas ALTER COLUMN desc_naturaleza_juridica COMMENT 'Descripción de Naturaleza Jurídica';
ALTER TABLE silver_empresas ALTER COLUMN calificacion_responsable COMMENT 'Calificación del Responsable';
ALTER TABLE silver_empresas ALTER COLUMN val_capital_social COMMENT 'Valor del capital social';
ALTER TABLE silver_empresas ALTER COLUMN cod_tipo_empresa COMMENT 'Código del Tipo de Empresa';
ALTER TABLE silver_empresas ALTER COLUMN desc_tipo_empresa COMMENT 'Descripción del Tipo de Empresa';
ALTER TABLE silver_empresas ALTER COLUMN entidad_federativa_responsable COMMENT 'Entidad Federativa Responsable';
```

