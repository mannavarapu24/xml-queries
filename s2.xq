let $ships :=doc ("ships.xml")
for $m in $ships/ships/class
where $m/@numGuns >=10
return data($m/ship/@name)