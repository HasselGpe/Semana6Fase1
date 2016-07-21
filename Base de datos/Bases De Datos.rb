# Bases De Datos

# Una base de datos es simplemente un conjunto de datos pertenecientes a un mismo contexto y sistemáticamente almacenados para su uso posterior.

# Seguramente habrás usado o visto un excel antes. Revisa la siguiente tabla que tiene exactamente datos sistemáticamente organizados para su fácil utilización.

# Finalmente esto es la representación de una base de datos. ¿Muy simple no? cuando crecen empiezan a ser algo más complejas.

#  |id| nombre     | apellido  | email                 | fecha_nac  | genero    |
#  |--|------------|-----------|-----------------------|------------|-----------|
#  |1 | Roberta    | Fernandez | roberta@telmex.com    | 1997-10-11 | femenino  |
#  |2 | Fernando   | Lopez     | fernando@gmail.com    | 1995-02-02 | masculino |
#  |3 | Maite      | Garcia    | maite@hotmail.com     | 1993-04-23 | femenino  |
#  |4 | Alejandra  | Díaz      | alejandra@hotmail.com | 1996-06-26 | masculino |
#  |5 | Rocio      | Vega      | rocio@yahoo.com       | 1997-03-27 | masculino |
#  |6 | Ricardo    | Gomez     | ricardo@hotmail.com   | 1998-08-16 | masculino |
#  |7 | Violeta    | Ortega    | violeta@gmail.com     | 1994-08-12 | femenino  |
#  |8 | Margarita  | Alvarez   | margarita@gmail.com   | 1992-01-24 | femenino  |
#  |9 | Carlos     | Rivero    | carlos@yahoo.com      | 1991-11-30 | masculino |
#  |10| Armando    | Martinez  | armando@gmail.com     | 1994-12-03 | femenino  |
# Schema
# Al diseño o estructura de una base de datos se le llama esquema(schema) y es una representación gráfica de la estructura de tablas y campos que contiene, sin incluir los datos.

# Las bases de datos se representan por tablas(tables), las cuales se componen de columnas(columns/fields) y cada una de ellas contiene registros/datos(records/data). A las filas se les llama registro(record). Para representar una tabla sin hacer énfasis en los registros o datos que contiene se hace de la siguiente manera.

# Tabla
# Campo / Columna
# Registro / Fila
# Dato: la intersección entre columna y fila
# +------------+
# | alumnos    |
# +------------+
# | id         |
# | nombre     |
# | apellido   |
# | email      |
# | fecha_nac  |
# | genero     |
# +------------+
# Database-Land vs Ruby-Land
# Tal y como lo hicimos con un CSV podemos para facilitar su uso en Ruby hacer un mapeo de la información a objetos de ruby:

# Base de Datos Ruby
# Tablas  Clases
# Campos/Columnas Atributos/variables
# Datos Valores
# Convenciones
# Cunado hablamos de bases de datos existen varias convenciones respecto a su uso y al nombre que se le da a los campos por ejemplo, nosotros utilizaremos los siguientes:

# El nombre de una tabla debe de ser plural: (alumnos/students, personas/people)
# En su mayoría siempre utilizamos un id, este es un numero que se incrementa automaticamente y que será único por cada fila o campo de la tabla. Normalmente los programas que manejan bases de datos hacen esto automáticamente, pero al elaborar el diseño hay que hacerlo manualmente.
# Las columnas se escriben en snake_case por ejemplo: fecha_de_nacimiento
# Las campos de fechas o sellos de tiempo acaban en at o on, ejemplo: (created_at, updated_at, completed_on) a menos que tengan un nombre implícito como el caso de fecha de nacimiento.
# Por convención el nombre de tus campos deberían explicarse por si mismos y ser específicos
# Otra gran convención es utilizar sellos de tiempo (timestamps), estos son registros de cuando se creo y cuando se actualizo por última vez un registro. Verás que rails lo hace muy fácil de incorporar.
# Primary Keys
# Un concepto importante dentro de una base de datos es la clave primaría (primary key), esta es una columna o conjunto de columnas que crean un identificador único del registro, comúnmente se utiliza el id, que simplemente es un integer que se auto incrementa y no se repite en ninguna ocasión.

# DataType
# Una característica de Ruby importante es que es un lenguaje dinámica mente tipado. Esto quiere decir que sus variables pueden tomar valores de distinto tipo en distintos momentos. En otros lenguajes esto no es posible por ejemplo Java, C, C#, C++, Basic (lenguajes fuertemente tipados).

# Ejemplo:

# # La variable dummy_var puede tomar valores de distintos tipo
# dummy_var = "string"
# puts dummy_var
# dummy_var = 345
# puts dummy_var
# dummy_var = ["hola", 23]
# Al crear o diseñar una base de datos es muy importante designar el tipo de datos que contendrá una columna y esta no podrá recibir datos de otro tipo. Las bases de datos tienen muchos tipos de datos y muy complejos, nosotros utilizaremos los más comunes sin meternos a fondo en ello, para esto utilizaremos programas que nos ayudaran en esto.

# Aquí podrás ver más sobre SQL y los tipos de datos que utiliza.

# w3schools.com
# Wikipedia
# SQL
# SQL es el lenguaje utilizado para hacer consultas dentro de una base de datos y con el que se crean además las mismas, investiga un poco sobre este lenguaje ya que estaremos utilizándolo posteriormente.

# Objetivos Académicos
# Familiarizarse con los conceptos y convenciones de las bases de datos
# Aprender a diseñar una base de datos
# Actividades
# Diseña el esquema de un DB
# Utiliza la siguiente herramienta para diseñar un esquema de la tabla que te presentamos arriba. Veras que a cada columna le podrás asignar el tipo de dato que contendrá. Cuando acabes guarda la representación en xml de tu esquema en un archivo y también toma un screenshot. Hay un botón (save/load) que te ayuda con esto.

# SQL Designer
# Guarda esta URL porque la utilizarás muchísimo.
#########################################################################################################


#REPRESENTACION XML

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
</datatypes><table x="99" y="148" name="alumnos">
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
<row name="fecha_nac" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="genero" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
</sql>

















































