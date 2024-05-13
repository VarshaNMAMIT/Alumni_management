CREATE TABLE alumni (
    id INT PRIMARY KEY IDENTITY,
    imageUrl NVARCHAR(255),
    firstName NVARCHAR(50),
    lastName NVARCHAR(50),
    email NVARCHAR(100),
    contactNumber NVARCHAR(15),
    age INT,
    dob DATE,
    salary DECIMAL(10, 2),
    address NVARCHAR(255)
);
INSERT INTO alumni (id, imageUrl, firstName, lastName, email, contactNumber, age, dob, salary, address)
VALUES 
(1001, 'p1.png', 'Varsha', 'gk', 'varsha@nmamit.com', '4121091095', 24, '2000-08-26', 1, 'Address1'),
(1002, 'p2.png', 'Sharanya', 'Kunder', 'sharanya12@nmamit.com', '4914696673', 23, '2001-06-28', 2, 'Address2'),
(1003, 'p3.png', 'Preksha', 'Jain', 'prekj@nmamit.com', '4479795571', 20, '2004-01-06', 3, 'Address3'),
(1004, 'i1.png', 'Melisa', 'Sindhu', 'Melisa.Schupp@nmamit.com', '4443995334', 38, '1984-09-06', 4, 'Address4'),
(1005, 'i3.png', 'fizz', 'Kris', 'Dell.Kris@nmamit.com', '4505692843', 89, '1933-03-14', 5, 'Address5'),
(1006, 'gfg.png', 'Marcia', 'amla', 'Marcia@nmamit.com', '4746199430', 56, '1966-07-24', 6, 'Address6'),
(1007, 'gfg.png', 'Swathi', 'Orbeez', 'Jarroy@nmamit.com', '4859095720', 82, '1940-12-26', 7, 'Address7'),
(1008, 'g.png', 'Shreya', 'Wilkinson', 'Gariol.Wilkinson@nmamit.com', '4379190775', 36, '1986-06-24', 8, 'Address8'),
(1009, 'fg.Png', 'Seema', 'Hayes', 'Elisabeth.Haye@nmamit.com', '4394091994', 66, '1956-08-17', 9, 'Address9'),
(1010, 'gf.png', 'akanksha', 'Reichel', 'Jaime.Reiche@nmamit.com', '4622392580', 41, '1981-01-21', 10, 'Address10');
SELECT * FROM alumni;