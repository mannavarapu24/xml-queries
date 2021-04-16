let $ships := doc("ships.xml")
for $m in $ships/class
where every $ship in $m/ship satisfies
count ($ships/battle) = 0
return data($m/@name)