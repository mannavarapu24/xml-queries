let $d:=doc("ships.xml")
for $m in distinct-values($d/ships/class/ship/battle)
 return <battle name = "{$m}">
 {
 for $y in $d/ships/class/ship
    where $m = $y/battle
    return <ship name = "{$y/@name}"> </ship> 
 }</battle>
    



