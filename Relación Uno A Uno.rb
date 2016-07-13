# Relación Uno A Uno

# Antes de hacer este ejercicio deberás comprender las relaciones de uno a muchos.

# Las relaciones de uno a uno son relaciones fáciles de solucionar pero es difícil saber cuando deben usarse. Para comprenderlas lo más fácil es verlo en un ejemplo:

# Un ejemplo puede ser una persona y su ubicación física, hasta hoy no hemos podemos estar en dos lugares diferentes al mismo tiempo desgraciadamente.

# +-------------+
# | persona     |
# +-------------+
# | id          |
# | nombre      |
# | apellido    |
# | email       |
# | fecha_nac   |
# | genero      |
# | latitud     |
# | longitud    |
# | altura      |
# +-------------+
# ¡Pero aquí solo hay una tabla!
# Todas las relaciones uno a uno podrían ser representadas como una sola tabla. La regla para saber cuando existe una de estas relaciones y hay que dividir la información en dos tablas es:

# Cuando puedes agrupar varios campos y todos ellos opcionalmente podrían ser nulos. En este caso vale la pena dividir la tabla.
# Imaginemos que una no permite dar a la aplicación su ubicación y por ello varios campos serían nulos.

# +---------------------+        +-------------------+
# | persona             |        | ubicaciones       |
# +---------------------+        +-------------------+
# | id                  |     /->| id                |
# | nombre              |    /   | longitud          |
# | apellido            |   /    | latitud           |
# | email               |  /     | altura            |
# | ubicación_id        |-/      | created_at        |
# | created_at          |        | updated_at        |  
# | updated_at          |        +-------------------+
# +---------------------+
# Objetivos Académicos
# Familiarizarse con las relaciones de uno a uno
# Aprender a diseñar una base de datos
# Actividades
# Diseña el esquema de un DB con una relación uno a uno
# Utiliza la siguiente herramienta para diseñar el esquema de la tabla que te presentamos arriba. Puedes pensar en crear una de estas relaciones tu mismo.

# Cuando acabes guarda la representación en xml de tu esquema en un archivo y también toma un screenshot. Hay un botón (save/load) que te ayuda con esto.

# SQL Designer
# Guarda esta URL porque la utilizarás muchísimo.
#########################################################################################################



#xml
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
</datatypes><table x="95" y="230" name="persona">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="nombre" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="apellido" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="email" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="ubicacion_id" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="ubicaciones" row="id" />
</row>
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
<table x="315" y="231" name="ubicaciones">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="logitud" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="latitud" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="altura" null="1" autoincrement="0">
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
