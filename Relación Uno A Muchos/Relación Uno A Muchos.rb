# Relación Uno A Muchos

# Las bases de datos no solo contienen una tabla si no varias de ellas. Existe tres formas de relacionar la información de dos tablas. Estas formas están basadas en el tipo de relación que contiene el registro de una tabla contra el de otra. En este ejercicio veremos la más simple de ellas: Uno a Muchos (One to Many). 
# Ejemplos:

# Uno a Muchos
# Un usuario tiene varios tweets / un tweet únicamente pertenece a un usuario.
# Una escuela tiene muchos alumnos / un alumno únicamente pertenece a una escuela.
# Un proveedor tiene muchas compras / una compra únicamente pertenece a un proveedor.
# Una tienda tiene varios productos / un producto únicamente pertenece a una tienda.
# Un edificio tiene varios departamentos / un departamento únicamente pertenece a un edificio.
# Estas relaciones dependen de la aplicación que desarrolles ya que pueden ser diferentes en cada caso.

# ¿Cómo relacionamos las tablas?
# Para crear una de estas relaciones entre dos tablas se siguen este simple paso:

# Se agrega como campo una clave foránea (foreign key) a la tabla de "Muchos". El valor que tomará este campo sera la clave primaria (primary key) de la tabla de "Uno".
# Ejemplo:

# +------------+        +-------------+
# | usuario    |        | tweet       |
# +------------+        +-------------+
# | id         |<---\   | id          |
# | nombre     |     \--| user_id     |
# | email      |        | content     |
# | created_at |        | created_at  |
# | updated_at |        | updated_at  |
# +------------+        +-------------+ 

# # Un usuario tiene varios tweets / un tweet unicamente pertenece a un usuario. 
# De esta manera cuando lees un registro de la tabla "Muhos" el nuevo campo (foreign key) especifica el id (primary key) del registro al que pertenece. En el ejemplo anterior un tweet únicamente puede pertenecer a un usuario, ya que el id es único, pero pueden haber dos filas o registros con el mismo valor en campo de user_id.

# Users Table

# id  nombre  email
# 1 Rodrigo Gonzales  rodrigo@gmail.com
# 2 Fernando Gutierrez  fernando@hotmail.com
# 3 Alejandra Lopez alejandra@yahoo.com
# Tweets Table

# id  user_id content
# 1 2 Hola a Todos
# 2 1 No puedo más con el calor
# 3 2 Quiero comer papas!!
# 4 3 De regreso en mi casita porfin
# 5 3 WOW WOW WOW
# 6 3 Necesito entender una DB
# Basado en la información de arriba puedes decirme que usuario creo que tweet?

# Objetivos Académicos
# Familiarizarse con las relaciones de uno a muchos
# Aprender a diseñar una base de datos
# Actividades
# Diseña el esquema de un DB con una relación uno a muchos
# Utiliza la siguiente herramienta para diseñar el esquema de las tablas que te presentamos arriba.

# Para crear la relación uno a muchos, selecciona el id de la tabla usuarios y da click en el botón "Create Foreign Key", luego da click en la tabla de tweets.

# Cuando acabes guarda la representación en xml de tu esquema en un archivo y también toma un screenshot. Hay un botón (save/load) que te ayuda con esto.

# SQL Designer
############################################################################################
#PRESEMTACION xml

<?xml version="1.0" encoding="utf-8" ?>
<!-- SQL XML created by WWW SQL Designer, https://github.com/ondras/wwwsqldesigner/ -->
<!-- Active URL: http://ondras.zarovi.cz/sql/demo/ -->
<sql>
<datatypes db="mysql">
  <group label="Numeric" color="rgb(238,238,170)">
    <type label="Integer" length="0" sql="INTEGER" quote=""/>
    <type label="TINYINT" length="0" sql="TINYINT" quote=""/>
    <type label="SMALLINT" length="0" sql="SMALLINT" quote=""/>
    <type label="MEDIUMINT" length="0" sql="MEDIUMINT" quote=""/>
    <type label="INT" length="0" sql="INT" quote=""/>
    <type label="BIGINT" length="0" sql="BIGINT" quote=""/>
    <type label="Decimal" length="1" sql="DECIMAL" re="DEC" quote=""/>
    <type label="Single precision" length="0" sql="FLOAT" quote=""/>
    <type label="Double precision" length="0" sql="DOUBLE" re="DOUBLE" quote=""/>
  </group>

  <group label="Character" color="rgb(255,200,200)">
    <type label="Char" length="1" sql="CHAR" quote="'"/>
    <type label="Varchar" length="1" sql="VARCHAR" quote="'"/>
    <type label="Text" length="0" sql="MEDIUMTEXT" re="TEXT" quote="'"/>
    <type label="Binary" length="1" sql="BINARY" quote="'"/>
    <type label="Varbinary" length="1" sql="VARBINARY" quote="'"/>
    <type label="BLOB" length="0" sql="BLOB" re="BLOB" quote="'"/>
  </group>

  <group label="Date &amp; Time" color="rgb(200,255,200)">
    <type label="Date" length="0" sql="DATE" quote="'"/>
    <type label="Time" length="0" sql="TIME" quote="'"/>
    <type label="Datetime" length="0" sql="DATETIME" quote="'"/>
    <type label="Year" length="0" sql="YEAR" quote=""/>
    <type label="Timestamp" length="0" sql="TIMESTAMP" quote="'"/>
  </group>
  
  <group label="Miscellaneous" color="rgb(200,200,255)">
    <type label="ENUM" length="1" sql="ENUM" quote=""/>
    <type label="SET" length="1" sql="SET" quote=""/>
    <type label="Bit" length="0" sql="bit" quote=""/>
  </group>
</datatypes><table x="299" y="150" name="Tweet">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="user_id" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="content" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="created_at" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="update_at" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="id_usuario" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="usuario" row="id" />
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="97" y="150" name="usuario">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="nombre" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="email" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="created_at" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="update_at" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
</sql>