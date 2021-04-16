let $d:=doc("company.xml")
for $m in $d/companyDB/employees/employee
  where not(empty( $m/@manages)) and (count ($m/dependents/dependent)>=1)
  return concat(data($m/fname), " ", data($m/lname))
