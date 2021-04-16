let $d:=doc("company.xml")
for $m in $d/companyDB/employees/employee
 where count ($m/dependents/dependent)>=2
return concat(data($m/fname)," ",data($m/lname))
