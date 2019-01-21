CREATE TABLE Building(
            	Building_Number INT NOT NULL AUTO_INCREMENT,
            	Street VARCHAR(50) NOT NULL,
            	Town_City VARCHAR(50) NOT NULL,
            	PostCode VARCHAR(10) NOT NULL,
            	PRIMARY KEY(Building_Number));

CREATE TABLE Person(
	Person_ID INT NOT NULL AUTO_INCREMENT,
	First_Name VARCHAR(20) NOT NULL,
	Last_Name VARCHAR(20) NOT NULL,
    Emergency_Contact_Name VARCHAR(40) NOT NULL,
    Emergency_Contact_Number VARCHAR(11)NOT NULL,
	PRIMARY KEY(Person_ID));

CREATE TABLE Apartment(
	Building_Number INT NOT NULL,
	Apartment_Number INT NOT NULL,
	Bedroom_Number INT NOT NULL,
	Bathroom_Number INT NOT NULL,
	Total_Area INT NOT NULL,
	Manager_ID INT NOT NULL,
	PRIMARY KEY(Building_Number,Apartment_Number),
	FOREIGN KEY(Building_Number) REFERENCES Building(Building_Number),
	FOREIGN KEY(Manager_ID) REFERENCES Person(Person_ID));

  CREATE TABLE Tenants(
  	Tenant_ID INT NOT NULL,
  	Bank_Account_No INT NOT NULL,
  	PRIMARY KEY(Tenant_ID),
  	FOREIGN KEY(Tenant_ID) REFERENCES Person(Person_ID));

  CREATE TABLE Employee(
  	Employee_ID INT NOT NULL,
  	Monthly_Salary DOUBLE NOT NULL,
  	PRIMARY KEY(Employee_ID),
  	FOREIGN KEY(Employee_ID) REFERENCES Person(Person_ID));

  CREATE TABLE Skill(
      Skill_ID INT NOT NULL AUTO_INCREMENT,
  	Skill_Name VARCHAR(20) NOT NULL,
  	PRIMARY KEY(Skill_ID));

   CREATE TABLE Technician(
  	Skill_ID INT NOT NULL,
  	Employee_ID INT NOT NULL,
  	PRIMARY KEY(Skill_ID,Employee_ID),
  	FOREIGN KEY(Skill_ID) REFERENCES Skill(Skill_ID),
  	FOREIGN KEY(Employee_ID) REFERENCES Person(Person_ID));

    CREATE TABLE Lease(
    	Lease_ID INT NOT NULL AUTO_INCREMENT,
    	Building_Number INT NOT NULL,
    	Apartment_Number INT NOT NULL,
    	Manager_ID INT NOT NULL,
    	Start_Date DATE NOT NULL,
    	Duration INT NOT NULL,
    	Monthly_Rent DOUBLE NOT NULL,
    	PRIMARY KEY(Lease_ID),
    	FOREIGN KEY(Building_Number,Apartment_Number) REFERENCES Apartment(Building_Number,Apartment_Number),
    	FOREIGN KEY(Manager_ID) REFERENCES Person(Person_ID));

    CREATE TABLE TenantLease(
    	Tenant_ID INT NOT NULL,
    	Lease_ID INT NOT NULL,
    	PRIMARY KEY(Tenant_ID,Lease_ID),
    	FOREIGN KEY (Tenant_ID) REFERENCES Person(Person_ID),
    	FOREIGN KEY (Lease_ID) REFERENCES Lease(Lease_ID));

    CREATE TABLE Guest(
    	Guest_ID INT NOT NULL AUTO_INCREMENT,
    	First_Name VARCHAR(20) NOT NULL,
    	Last_Name VARCHAR(20) NOT NULL,
    	Nights_Of_Stay INT NOT NULL,
        Building_Staying_In INT NOT NULL,
        Apartment_Staying_In INT NOT NULL,
    	PRIMARY KEY(Guest_ID),
    	FOREIGN KEY(Building_Staying_In,Apartment_Staying_In) REFERENCES Apartment(Building_Number,Apartment_Number));

      CREATE TABLE ManagerOffices(
      	Manager_ID INT NOT NULL,
      	Building_Number INT NOT NULL,
      	Apartment_Number INT NOT NULL,
      	PRIMARY KEY(Manager_ID,Building_Number,Apartment_Number),
      	FOREIGN KEY(Manager_ID) REFERENCES Person(Person_ID),
      	FOREIGN KEY(Building_Number,Apartment_Number) REFERENCES Apartment(Building_Number,Apartment_Number));
