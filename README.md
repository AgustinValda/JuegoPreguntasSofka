# JuegoPreguntasSofka

El presente juego esta realizado en JAVA 8, utilizando NetBeans 8.2
La base de datos utilizada es MySQL
Se utilizo JPA para realizar la persistencia de datos, por lo que se debera contar con el driver correspondiente
En mi caso he utilizado: MySQL JDBC Driver -mysql-connector-java-5.1.48.jar

Se requiere una serie de pasos simples para su ejecución

En primera instancia será bajar ambos archivos presentes aquí
1-Crear una base de datos con nombre juego_preguntas
2-Ingresar al archivo de persistence.xml presente en la carpeta META-INF en Source Packages
3-En este archivo debera buscar la base creada en la sección de JDBC Connection, 
   al realizar esto ya podra usarse la base de datos
4-Ejecutar el archivo main cuyo nombre es: CreacionBaseDeDatos.java
   esto se debe realizar para que JPA configure las tablas en la base de datos, JPA realiza el trabajo.
5-Una vez configurada la base de datos, abrir el script  Script_JuegodePreguntas, y ejecutarlo sobre la base de datos
   este script contienen las preguntas y respuestas, el mismo se encuentra ordenado.
   El script permite cargar los datos en la base, si se ejecuta en Workbench, basta con hacer click sobre la base de datos
   para seleccionarla y luego ejecutar el script y ya se carga la base de datos
   
6-Ya esta listo para realizar la ejecución del juego. 
7-Ejecutar el archivo main cuyo nombre es: JuegoDePreguntas.java
  En este punta el juego ya esta en funcionamiento y realizando las preguntas.
  
  Muchas Gracias!!!


