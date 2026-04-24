(: 2.- Localizadores de las reservas que se han cobrado en euros, indicando también la moneda: :)

for $x in doc("vuelos.xml")//reserva
where $x/precio/@moneda="euro"
return <localizador>{$x//@moneda}{$x/localizador/data()}</localizador>