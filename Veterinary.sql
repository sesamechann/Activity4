CREATE DATABASE veterinary;

CREATE TABLE owners(
	ownerid INT PRIMARY KEY,
	ofirstname VARCHAR(50) NOT NULL,
	olastname VARCHAR(50) NOT NULL,
	address VARCHAR(15) NOT NULL,
	email VARCHAR(100) NOT NULL
);


CREATE TABLE animals(
	animalid INT PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	species VARCHAR(50) NOT NULL,
	breed VARCHAR(50) NOT NULL,
	dateofbirth DATE,
	gender VARCHAR(10) NOT NULL,
	color VARCHAR(50) NOT NULL,
	ownerid INT,
	foreign key (ownerid) references owners(ownerid)
);

CREATE TABLE appointments(
	appointid INT PRIMARY KEY,
	appointdate DATE,
	reason VARCHAR(255) NOT NULL,
	animalid INT,
	foreign key (animalid) references animals(animalid)
);

CREATE TABLE doctors(
	doctorid INT PRIMARY KEY,
	dfirstname VARCHAR(50) NOT NULL,
	dlastname VARCHAR(50) NOT NULL,
	speciality VARCHAR(100) NOT NULL,
	phone VARCHAR(15) NOT NULL,
	email VARCHAR(100) NOT NULL
);

CREATE TABLE invoices(
	invoiceid INT PRIMARY KEY,
	paymentdate TIME,
	totalamount NUMERIC(10,2) NOT NULL,
	appointid INT,
	foreign key (appointid) references appointments(appointid)
);

