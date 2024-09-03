SELECT * FROM Employee WHERE SSN = '123456789';
-- Data by SSN

SELECT * FROM Employee WHERE firstName || ' ' || lastName = 'John Doe';
-- Data by name

SELECT * FROM Employee WHERE dptID = 1;
-- Data by department

SELECT * FROM Employee e JOIN Department d ON e.dptID = d.dptID WHERE d.dptName = 'Research and Development';
-- Employee data by department name

SELECT * FROM Project p JOIN dptworkson d ON p.pid = d.pid WHERE d.dptid = 1;
-- Project data by department

SELECT * FROM Project p JOIN dptworkson d ON p.pid = d.pid WHERE (p.cmpltDate IS NULL OR p.cmpltDate > current_date) AND d.dptid = 1;
-- Incomplete projects by department

SELECT * FROM Project WHERE cmpltDate IS NULL OR cmpltDate > deadline AND deadline < current_date;
-- Incomplete projects

SELECT * FROM Task t JOIN Project p ON t.pid = p.pid WHERE p.pname = 'BLINK';
-- Task data by project

SELECT * FROM Task WHERE SSN = '123456789';
-- Task data by employee

SELECT SSN, COUNT(CASE WHEN status = 'To do' THEN 1 END) AS toDoCount,
        COUNT(CASE WHEN status = 'In progress' THEN 1 END) AS inProgressCount,
        COUNT(CASE WHEN status = 'Done' THEN 1 END) AS completedCount FROM Task GROUP BY SSN;
-- Task status count by employee

SELECT * FROM Employee WHERE FLOOR((current_date - bdate) / 365.25) = 30;
-- Employee data by age - NOT grouped though

SELECT FLOOR((current_date - bdate) / 365.25) AS age, COUNT(*) AS count FROM Employee GROUP BY age ORDER BY age;
-- Employee count by age

SELECT extract(YEAR FROM bdate) AS birthYear, COUNT(*) AS count FROM Employee GROUP BY birthYear ORDER BY birthYear;
-- Employee count by birth year

SELECT * FROM Employee WHERE salary = (SELECT MAX(salary) FROM Employee);
-- Employees with highest salary

SELECT * FROM Employee ORDER BY salary;
-- Employees sorted by salary

SELECT SUM(salary) FROM Employee;
-- Total salary

SELECT SUM(salary) FROM Employee WHERE dptID = 1;
-- Total salary by department

SELECT d.dptid, d.dptname FROM Department d JOIN Employee e ON d.dptID = e.dptID GROUP BY d.dptID, d.dptname
HAVING SUM(e.salary) >= ALL (SELECT SUM(salary) FROM Employee GROUP BY dptID);
-- Department with highest salary

SELECT CAST(count(CASE WHEN status = 'Done' THEN 1 END) AS DECIMAL) / count(pID) * 100 AS percentageCompleted
FROM Task WHERE pID = 4 GROUP BY pID;
-- Percentage of project completion

SELECT COUNT(pID) AS completedProjects FROM Project WHERE cmpltDate <= deadline;
-- Completed projects

SELECT e.SSN, e.firstName, e.lastName, COUNT(*) AS underestimatedCompletedTasks FROM EMPLOYEE e JOIN Task t
                                                                                                     ON e.SSN = t.SSN WHERE t.actualTime > t.estimatedTime AND t.status = 'Done' GROUP BY e.SSN;
-- Employees who underestimated their tasks

SELECT p.pID, p.pName,e.firstName || ' ' || e.lastName AS maxContributer FROM Project p JOIN Task t ON p.pID = t.pID
JOIN Employee e ON t.SSN = e.SSN WHERE e.SSN IN (SELECT t2.SSN FROM task t2 WHERE t2.pid = p.pid GROUP BY t2.SSN ORDER BY COUNT(t2.SSN) DESC LIMIT 1);
-- All projects with their max contributor
-- Incorrect
