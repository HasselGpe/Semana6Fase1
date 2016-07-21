# Relación Muchos A Muchos

# Antes de hacer este ejercicio deberás comprender las relaciones de uno a muchos.

# Las relaciones de muchos a muchos son relaciones fáciles de entender pero algo complicadas de implementar. Para comprenderlas lo más fácil es verlo en un ejemplo:

# Ejemplos de relaciones muchos a muchos:

# Un post tiene varios tags / un tag puede estar dentro de muchos posts.
# Un clase tiene varios alumnos / una alumno puede tomar varias clases.
# Una marca puede tener varios tipos de productos / un tipo de producto puede venderse por varias marcas.
# Una lista tiene varios contactos / un contacto puede pertenecer a varias listas.
# Para poder resolver este tipo de relaciones es necesario crear una tabla extra llamada tabla de unión (join table). Esta tabla contendrá como clave foráneas (foreign keys) las llaves primarias (primary keys) de las otras dos tablas. Esto crea entre la nueva tabla y cualquiera de las otras dos una relación de uno a muchos, resolviendo la relación muchos a muchos.

# Esta tabla podrá contener adicionalmente otros campos.

# Ejemplo:

# +------------+       +---------------+       +--------------+
# | posts      |       | post_tags     |       | tags         |
# +------------+       +---------------+       +--------------+
# | id         |<--\   | id            |    /->| id           |
# | title      |    \--| posts_id      |   /   | name         |
# | content    |       | tag_id        |--/    | created_at   |
# | created_at |       +---------------+       | updated_at   |
# | updated_at |                               +--------------+
# +------------+                               
# En este caso la tabla de unión es post_tags y en ella podemos saber que post esta relacionado con que tag.

# En bases de datos buscamos mucho seguir el principio DRY ya que tener información repetida crearía muchas confusiones o mucho trabajo extra en el caso de que tengamos que modificarla.

# Nunca deberías guardar la misma información en dos lugares diferentes. A esto se le llama normalization un recurso para entenderlo es este articulo de Microsoft.

# Objetivos Académicos
# Familiarizarse con las relaciones de muchos a muchos
# Aprender a diseñar una base de datos
# Actividades
# Diseña el esquema de un DB con una relación muchos a muchos
# Utiliza la siguiente herramienta para diseñar el esquema de las tablas que te presentamos arriba. Adicional a este esquema debes crear uno entre autores y libros. Piensa que atributos tiene cada uno y piensa en atributos que puedan ir dentro de la tabla de unión.

# Cuando acabes guarda la representación en xml de tu esquema en un archivo y también toma un screenshot. Hay un botón (save/load) que te ayuda con esto.

# SQL Designer
# Guarda esta URL porque la utilizarás muchísimo.

################################################################################################################################################
#Codigo
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
</datatypes><table x="119" y="100" name="post">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="title" null="1" autoincrement="0">
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
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="324" y="102" name="post_tags">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="posts_id" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="post" row="id" />
</row>
<row name="tag_id" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="tags" row="id" />
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="574" y="101" name="tags">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="name" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="created_at" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="updated_at" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="118" y="311" name="curso">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="Nom_curso" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="Tip_Curso" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="Num_Creditos" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="341" y="315" name="Alumno_Curso">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="Id_Alumno" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="Alumno" row="id" />
<relation table="curso" row="id" />
</row>
<row name="Exa_Parcial" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="Ex_Final" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="Nota_Proyecto" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="607" y="323" name="Alumno">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="Nom_Alumno" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="Ape_Alumno" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="ApeMat_Alumno" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
</sql>
