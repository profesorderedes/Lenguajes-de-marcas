for $x at $i in doc("llibres.xml")//llibre
return <libro>{$i}) {$x/titol/data()}</libro>