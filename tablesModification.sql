ALTER TABLE Employee ADD COLUMN bDate DATE, ADD COLUMN salary DECIMAL(10, 2);

DROP TABLE Task;
CREATE TABLE TASK (
    taskID SMALLINT PRIMARY KEY,
    pID SMALLINT,
    SSN CHAR(9),
    taskName VARCHAR(50) NOT NULL,
    status VARCHAR(11) CHECK (status IN ('To do', 'In progress', 'Done')),
    estimatedTime INTERVAL,
    actualTime INTERVAL,
    FOREIGN KEY (pID) REFERENCES Project(pID),
    FOREIGN KEY (SSN) REFERENCES Employee(SSN)
);
