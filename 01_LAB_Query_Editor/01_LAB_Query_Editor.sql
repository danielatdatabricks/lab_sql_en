
-- Ejercicio 01.01 - Creación de la base de datos
USE CATALOG `your_catalog`;
CREATE DATABASE IF NOT EXISTS <tu_login>;
USE <tu_login>;


-- Ejercicio 01.02 - Creación de la tabla

CREATE OR REPLACE TABLE bronze_tipo_empresa
  ( tipo_empresa      INT    COMMENT "Código del tipo de empresa",
    desc_tipo_empresa STRING COMMENT "Descripción del tipo de empresa" )
COMMENT "Tabla auxiliar, tipo de empresa"


 -- Ejercicio 01.03 - Insertando datos en la Tabla a través de SQL INSERT

 INSERT INTO bronze_tipo_empresa VALUES (1, "NO DISPONIBLE") ;
 INSERT INTO bronze_tipo_empresa VALUES (2, "MICRO EMPRESA") ;
 INSERT INTO bronze_tipo_empresa VALUES (3, "PEQUENA EMPRESA") ;
 INSERT INTO bronze_tipo_empresa VALUES (4, "NO SE") ;
 INSERT INTO bronze_tipo_empresa VALUES (5, "NULL") ;


 -- Ejercicio 01.04 - Verificando el contenido de la TABLA

SELECT *
FROM bronze_tipo_empresa
ORDER BY tipo_empresa


-- Ejercicio 01.05 - Modificando el contenido de la TABLA

UPDATE bronze_tipo_empresa
SET desc_tipo_empresa = "OTRO"
WHERE tipo_empresa = 5;


DELETE
FROM bronze_tipo_empresa
WHERE tipo_empresa = 4;


-- Ejercicio 01.06 - Visualizando el Historial de Actualizaciones de la tabla

DESCRIBE HISTORY bronze_tipo_empresa


-- Ejercicio 01.07 - Visualizando el contenido de la tabla en la versión anterior (TIME TRAVEL)


SELECT * FROM bronze_tipo_empresa VERSION AS OF 6


-- Ejercicio 01.08 - RESTAURANDO el contenido de la tabla a la versión anterior (TIME TRAVEL)

RESTORE TABLE bronze_tipo_empresa TO VERSION AS OF 6


-- Ejercicio 01.09 - Visualizando las propiedades de la Tabla

DESCRIBE DETAIL bronze_tipo_empresa


-- Ejercicio 01.10 - Visualizando las informaciones DETALLADAS de la Tabla

DESCRIBE TABLE EXTENDED bronze_tipo_empresa
