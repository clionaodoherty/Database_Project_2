
//Query 1
SELECT Lease.Manager_ID, Person.first_name, Person.Last_Name, Lease.Monthly_Rent

FROM Person		 JOIN TenantLease ON
Person.Person_ID = TenantLease.Tenant_ID
JOIN Lease ON
TenantLease.Lease_ID = Lease.Lease_ID

ORDER BY Lease.Manager_ID, Person.Last_Name ASC;


//Query 2
SELECT Apartment.Building_Number, Apartment.Apartment_Number, Lease.Lease_ID, countTable1.countID Number_In_Flat, Apartment.Bedroom_Number

FROM Apartment	 LEFT JOIN Lease ON
Apartment.Building_Number=Lease.Building_Number AND
Apartment.Apartment_Number=Lease.Apartment_Number
LEFT JOIN (SELECT Lease_ID, COUNT(Tenant_ID) countID FROM TenantLease GROUP BY Lease_ID) countTable1 ON
Lease.Lease_ID=countTable1.Lease_ID

WHERE countID < Apartment.Bedroom_Number
ORDER BY Lease.Lease_ID;


//Query 3
SELECT Person.Person_ID,Person.Last_Name

FROM Person 	INNER JOIN Employee ON
Person.Person_ID = Employee.Employee_ID
INNER JOIN Technician ON
Person.Person_ID = Technician.Employee_ID
INNER JOIN Skill ON
Technician.Skill_ID = Skill.Skill_ID

WHERE Skill.Skill_Name = "Electrical" AND Person.Last_Name LIKE "S%" AND Employee.Monthly_Salary >=1200

ORDER BY Person.Last_Name ASC;


//Query 4
SELECT Technician.Skill_ID, Technician.Employee_ID, Person.First_Name, Employee.Monthly_Salary

FROM Technician 	LEFT JOIN Employee ON
				Technician.Employee_ID = Employee.Employee_ID
       	 		LEFT JOIN Person ON
				Employee.Employee_ID = Person.Person_ID

WHERE Employee.Monthly_Salary > 3500 AND Employee.Monthly_Salary < 5000
ORDER BY Technician.Skill_ID, Employee.Monthly_Salary ASC;
