let $d:=doc("company.xml")/companyDB

    for $e in $d/departments/department
  where $e/@dno="5"
  let $pn:= $e/projectsControlled/@pnos
  let $pcl := tokenize($pn)
    for $pc in $pcl
    for $p in $d/projects/project where $p/@pnumber = $pc
    for $pEmp in $p/workers/worker
  let  $pWssn:=$pEmp/@essn
    for $m in $d/employees/employee
  where $pWssn = $m/@ssn
  return concat( data($m/fname), " ", data($m/lname)  )