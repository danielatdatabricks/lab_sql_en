-- Ejercicio 03.01 - Creación de la Consulta

/**********************************
## CONFIGURACIÓN DE PARÁMETROS
***********************************/
USE CATALOG <nombre_catalogo>;
USE <nombre_esquema>;
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


-- Ejercicio 03.06 - Añadiendo Comentarios en la Tabla y en las Columnas

/**********************************
## CONFIGURACIÓN DE PARÁMETROS
***********************************/
USE CATALOG <nombre_catalogo>;
USE <nombre_esquema>;
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