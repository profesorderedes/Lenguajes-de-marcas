(: 5.- Listar año y título de los libros publicados por Addison-Wesley después del año 1992. :)
 
for $x in doc("Actividad1XQuery.xml")//libro
where $x/@anyo < 2000
return $x/titulo