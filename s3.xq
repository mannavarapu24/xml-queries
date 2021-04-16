let $ships:=doc("ships.xml")
for $m in $ships/ships/class/ship
where $m/battle/@outcome ="sunk"
return data($m/@name)