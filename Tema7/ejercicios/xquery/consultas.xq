(: 2.- Listar año y título de todos los libros, ordenados por el año. :)
 
for $x in doc("Actividad1XQuery.xml")//libro
order by $x/@anyo
return <libro>{$x/@anyo}{$x/titulo}</libro>