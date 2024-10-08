INSERT INTO department (dptid, dptname, establishdate) VALUES (1, 'HR', current_date);
INSERT INTO department (dptid, dptname, establishdate) VALUES (2, 'IT', current_date);
INSERT INTO department (dptid, dptname, establishdate) VALUES (3, 'Finance', current_date);
INSERT INTO department (dptid, dptname, establishdate) VALUES (4, 'Marketing', current_date);
INSERT INTO department (dptid, dptname, establishdate) VALUES (5, 'Sales', current_date);
INSERT INTO department (dptid, dptname, establishdate) VALUES (6, 'Production', current_date);
INSERT INTO department (dptid, dptname, establishdate) VALUES (7, 'Quality', current_date);
INSERT INTO department (dptid, dptname, establishdate) VALUES (8, 'Logistics', current_date);
INSERT INTO department (dptid, dptname, establishdate) VALUES (9, 'Customer Service', current_date);
INSERT INTO department (dptid, dptname, establishdate) VALUES (10, 'Research and Development', current_date);

INSERT INTO employee (ssn, dptid, firstname, lastname, bdate, salary) VALUES ('123456789', 1, 'John', 'Doe', '1990-01-01', 50000);
INSERT INTO employee (ssn, dptid, firstname, lastname, bdate, salary) VALUES ('234567890', 2, 'Jane', 'Doe', '1991-01-01', 60000);
INSERT INTO employee (ssn, dptid, firstname, lastname, bdate, salary) VALUES ('345678901', 3, 'Alice', 'Doe', '1992-01-01', 70000);
INSERT INTO employee (ssn, dptid, firstname, lastname, bdate, salary) VALUES ('456789012', 4, 'Bob', 'Doe', '1993-01-01', 80000);
INSERT INTO employee (ssn, dptid, firstname, lastname, bdate, salary) VALUES ('567890123', 5, 'Eve', 'Doe', '1994-01-01', 90000);
INSERT INTO employee (ssn, dptid, firstname, lastname, bdate, salary) VALUES ('678901234', 6, 'Charlie', 'Doe', '1995-01-01', 100000);
INSERT INTO employee (ssn, dptid, firstname, lastname, bdate, salary) VALUES ('789012345', 7, 'David', 'Doe', '1996-01-01', 110000);
INSERT INTO employee (ssn, dptid, firstname, lastname, bdate, salary) VALUES ('890123456', 8, 'Frank', 'Doe', '1997-01-01', 120000);
INSERT INTO employee (ssn, dptid, firstname, lastname, bdate, salary) VALUES ('901234567', 9, 'Grace', 'Doe', '1998-01-01', 130000);
INSERT INTO employee (ssn, dptid, firstname, lastname, bdate, salary) VALUES ('012345678', 1, 'Hank', 'Doe', '1999-01-01', 140000);
INSERT INTO employee (ssn, dptid, firstname, lastname, bdate, salary) VALUES ('111111111', 2, 'Ivy', 'Doe', '2000-01-01', 150000);
INSERT INTO employee (ssn, dptid, firstname, lastname, bdate, salary) VALUES ('111111112', 3, 'Jack', 'Doe', '2001-01-01', 160000);
INSERT INTO employee (ssn, dptid, firstname, lastname, bdate, salary) VALUES ('111111113', 4, 'Kelly', 'Doe', '2002-01-01', 170000);
INSERT INTO employee (ssn, dptid, firstname, lastname, bdate, salary) VALUES ('111111114', 5, 'Liam', 'Doe', '2003-01-01', 180000);
INSERT INTO employee (ssn, dptid, firstname, lastname, bdate, salary) VALUES ('111111115', 6, 'Mia', 'Doe', '2004-01-01', 190000);
INSERT INTO employee (ssn, dptid, firstname, lastname, bdate, salary) VALUES ('111111116', 7, 'Noah', 'Doe', '2005-01-01', 200000);
INSERT INTO employee (ssn, dptid, firstname, lastname, bdate, salary) VALUES ('111111117', 8, 'Olivia', 'Doe', '2006-01-01', 210000);
INSERT INTO employee (ssn, dptid, firstname, lastname, bdate, salary) VALUES ('111111118', 9, 'Peter', 'Doe', '2007-01-01', 220000);
INSERT INTO employee (ssn, dptid, firstname, lastname, bdate, salary) VALUES ('000000001', 10, 'Ibrahim', 'Fateen', '2003-11-06', 9999999);
INSERT INTO employee (ssn, dptid, firstname, lastname, bdate, salary) VALUES ('111111119', 1, 'Hank', 'Doe', '1999-01-01', 140000);
INSERT INTO employee (ssn, dptid, firstname, lastname, bdate, salary) VALUES ('111111110', 2, 'Ivy', 'Doe', '2000-01-01', 150000);
INSERT INTO employee (ssn, dptid, firstname, lastname, bdate, salary) VALUES ('111111121', 3, 'Jack', 'Doe', '2001-01-01', 160000);
INSERT INTO employee (ssn, dptid, firstname, lastname, bdate, salary) VALUES ('111111122', 4, 'Kelly', 'Doe', '2002-01-01', 170000);
INSERT INTO employee (ssn, dptid, firstname, lastname, bdate, salary) VALUES ('111111123', 5, 'Liam', 'Doe', '2003-01-01', 180000);
INSERT INTO employee (ssn, dptid, firstname, lastname, bdate, salary) VALUES ('111111124', 6, 'Mia', 'Doe', '2004-01-01', 190000);
INSERT INTO employee (ssn, dptid, firstname, lastname, bdate, salary) VALUES ('111111125', 7, 'Noah', 'Doe', '2005-01-01', 200000);
INSERT INTO employee (ssn, dptid, firstname, lastname, bdate, salary) VALUES ('111111126', 8, 'Olivia', 'Doe', '2006-01-01', 210000);
INSERT INTO employee (ssn, dptid, firstname, lastname, bdate, salary) VALUES ('111111127', 9, 'Peter', 'Doe', '2007-01-01', 220000);

INSERT INTO project (pid, pname, startdate, deadline) VALUES (1, 'BLINK', '2020-01-01', '2025-01-01');
INSERT INTO project (pid, pname, startdate, deadline) VALUES (2, 'BTS', '2020-01-01', '2025-01-01');
INSERT INTO project (pid, pname, startdate, deadline) VALUES (3, 'National Geographic', '2020-01-01', '2030-06-12');
INSERT INTO project (pid, pname, startdate, deadline, cmpltdate) VALUES (4, 'NASA', '2018-01-01', '2025-01-01', current_date);
INSERT INTO project (pid, pname, startdate, deadline, cmpltdate) VALUES (5, 'SpaceX', '2018-01-01', '2025-01-01', current_date);
INSERT INTO project (pid, pname, startdate, deadline) VALUES (6, 'E-Car', '2016-01-01', '2020-01-01');

INSERT INTO dptworkson (dptid, pid) VALUES (1, 1);
INSERT INTO dptworkson (dptid, pid) VALUES (1, 2);
INSERT INTO dptworkson (dptid, pid) VALUES (1, 3);
INSERT INTO dptworkson (dptid, pid) VALUES (1, 4);
INSERT INTO dptworkson (dptid, pid) VALUES (1, 5);
INSERT INTO dptworkson (dptid, pid) VALUES (1, 6);
INSERT INTO dptworkson (dptid, pid) VALUES (2, 1);
INSERT INTO dptworkson (dptid, pid) VALUES (2, 4);
INSERT INTO dptworkson (dptid, pid) VALUES (2, 5);
INSERT INTO dptworkson (dptid, pid) VALUES (3, 1);
INSERT INTO dptworkson (dptid, pid) VALUES (3, 2);
INSERT INTO dptworkson (dptid, pid) VALUES (3, 3);
INSERT INTO dptworkson (dptid, pid) VALUES (3, 4);
INSERT INTO dptworkson (dptid, pid) VALUES (3, 5);
INSERT INTO dptworkson (dptid, pid) VALUES (3, 6);
INSERT INTO dptworkson (dptid, pid) VALUES (4, 1);
INSERT INTO dptworkson (dptid, pid) VALUES (4, 2);
INSERT INTO dptworkson (dptid, pid) VALUES (4, 3);
INSERT INTO dptworkson (dptid, pid) VALUES (4, 4);
INSERT INTO dptworkson (dptid, pid) VALUES (4, 5);
INSERT INTO dptworkson (dptid, pid) VALUES (4, 6);
INSERT INTO dptworkson (dptid, pid) VALUES (5, 1);
INSERT INTO dptworkson (dptid, pid) VALUES (5, 6);
INSERT INTO dptworkson (dptid, pid) VALUES (6, 3);
INSERT INTO dptworkson (dptid, pid) VALUES (6, 4);
INSERT INTO dptworkson (dptid, pid) VALUES (6, 5);
INSERT INTO dptworkson (dptid, pid) VALUES (6, 6);
INSERT INTO dptworkson (dptid, pid) VALUES (7, 1);
INSERT INTO dptworkson (dptid, pid) VALUES (7, 2);
INSERT INTO dptworkson (dptid, pid) VALUES (7, 3);
INSERT INTO dptworkson (dptid, pid) VALUES (7, 4);
INSERT INTO dptworkson (dptid, pid) VALUES (7, 5);
INSERT INTO dptworkson (dptid, pid) VALUES (7, 6);
INSERT INTO dptworkson (dptid, pid) VALUES (9, 3);
INSERT INTO dptworkson (dptid, pid) VALUES (9, 6);
INSERT INTO dptworkson (dptid, pid) VALUES (10, 1);
INSERT INTO dptworkson (dptid, pid) VALUES (10, 3);
INSERT INTO dptworkson (dptid, pid) VALUES (10, 4);
INSERT INTO dptworkson (dptid, pid) VALUES (10, 5);
INSERT INTO dptworkson (dptid, pid) VALUES (10, 6);
