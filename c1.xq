
let $d:=doc("company.xml")
let $r:=$d/companyDB/departments/department[dname="Research"] 
for $m in $d/companyDB/employees/employee
where $m/@worksFor=$r/@dno
let $k := concat(data($m/fname), " ",data($m/lname)," ",data($m/address))
return $k

