let $ships := doc("ships.xml")
for $m in $ships//class
where some $ship in $m/ship satisfies count($m/ship[@launched = $ship/@launched]) >= 2
return data($m/@name)