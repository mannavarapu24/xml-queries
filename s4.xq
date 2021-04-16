let $ships:=doc("ships.xml")
for $m in $ships//class
where count ($m/ship)>=3
return data($m/@name)