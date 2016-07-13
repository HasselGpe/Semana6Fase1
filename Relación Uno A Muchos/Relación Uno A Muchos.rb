Relación Uno A Muchos

Las bases de datos no solo contienen una tabla si no varias de ellas. Existe tres formas de relacionar la información de dos tablas. Estas formas están basadas en el tipo de relación que contiene el registro de una tabla contra el de otra. En este ejercicio veremos la más simple de ellas: Uno a Muchos (One to Many). 
Ejemplos:

Uno a Muchos
Un usuario tiene varios tweets / un tweet únicamente pertenece a un usuario.
Una escuela tiene muchos alumnos / un alumno únicamente pertenece a una escuela.
Un proveedor tiene muchas compras / una compra únicamente pertenece a un proveedor.
Una tienda tiene varios productos / un producto únicamente pertenece a una tienda.
Un edificio tiene varios departamentos / un departamento únicamente pertenece a un edificio.
Estas relaciones dependen de la aplicación que desarrolles ya que pueden ser diferentes en cada caso.

¿Cómo relacionamos las tablas?
Para crear una de estas relaciones entre dos tablas se siguen este simple paso:

Se agrega como campo una clave foránea (foreign key) a la tabla de "Muchos". El valor que tomará este campo sera la clave primaria (primary key) de la tabla de "Uno".
Ejemplo:

+------------+        +-------------+
| usuario    |        | tweet       |
+------------+        +-------------+
| id         |<---\   | id          |
| nombre     |     \--| user_id     |
| email      |        | content     |
| created_at |        | created_at  |
| updated_at |        | updated_at  |
+------------+        +-------------+ 

# Un usuario tiene varios tweets / un tweet unicamente pertenece a un usuario. 
De esta manera cuando lees un registro de la tabla "Muhos" el nuevo campo (foreign key) especifica el id (primary key) del registro al que pertenece. En el ejemplo anterior un tweet únicamente puede pertenecer a un usuario, ya que el id es único, pero pueden haber dos filas o registros con el mismo valor en campo de user_id.

Users Table

id  nombre  email
1 Rodrigo Gonzales  rodrigo@gmail.com
2 Fernando Gutierrez  fernando@hotmail.com
3 Alejandra Lopez alejandra@yahoo.com
Tweets Table

id  user_id content
1 2 Hola a Todos
2 1 No puedo más con el calor
3 2 Quiero comer papas!!
4 3 De regreso en mi casita porfin
5 3 WOW WOW WOW
6 3 Necesito entender una DB
Basado en la información de arriba puedes decirme que usuario creo que tweet?

Objetivos Académicos
Familiarizarse con las relaciones de uno a muchos
Aprender a diseñar una base de datos
Actividades
Diseña el esquema de un DB con una relación uno a muchos
Utiliza la siguiente herramienta para diseñar el esquema de las tablas que te presentamos arriba.

Para crear la relación uno a muchos, selecciona el id de la tabla usuarios y da click en el botón "Create Foreign Key", luego da click en la tabla de tweets.

Cuando acabes guarda la representación en xml de tu esquema en un archivo y también toma un screenshot. Hay un botón (save/load) que te ayuda con esto.

SQL Designer
