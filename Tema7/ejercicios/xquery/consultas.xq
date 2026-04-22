(: - Bailes que tengan menos de 20 plazas y se paguen en dólares. :)

for $x in doc("BDBailes.xml")//baile
where $x/plazas<20 and $x/precio/@moneda="dolares"
return $x/nombre