let $d:=doc("company.xml")/companyDB

for $m in $d/projects/project
  where $m/plocation='Stafford'
   let $pn :=$m/@pnumber
   let $cn:= $m/@controllingDepartment
   for $x in $d/departments/department
      where $x/@dno =$cn
     let $mssn:=$x/manager/@mssn
     for $k in $d/employees/employee
       where $k/@ssn = $mssn
          return concat ($pn," ",data ($k/fname)," ",data ($k/lname),": ", data ($k/dob))
          