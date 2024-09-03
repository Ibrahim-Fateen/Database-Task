CREATE TABLE IF NOT EXISTS Department (
                            dptID SMALLINT PRIMARY KEY,
                            dptName VARCHAR(50) NOT NULL,
                            establishDate DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS Employee (
                          SSN CHAR(9) PRIMARY KEY,
                          dptID SMALLINT,
                          firstName VARCHAR(15) NOT NULL,
                          lastName VARCHAR(15) NOT NULL,
                          FOREIGN KEY (dptID) REFERENCES Department(dptID)
);

CREATE TABLE IF NOT EXISTS Project (
                         pID SMALLINT PRIMARY KEY,
                         pName VARCHAR(50) NOT NULL,
                         startDate DATE,
                         deadline DATE,
                         cmpltDate DATE
);

CREATE TABLE IF NOT EXISTS Task (
                      taskID SMALLINT PRIMARY KEY,
                      pID SMALLINT,
                      SSN CHAR(9),
                      status VARCHAR(11) CHECK (status IN ('To do', 'In progress', 'Done')),
                      estimatedTime INTERVAL,
                      actualTime INTERVAL,
                      FOREIGN KEY (pID) REFERENCES Project(pID),
                      FOREIGN KEY (SSN) REFERENCES Employee(SSN)
);

CREATE TABLE IF NOT EXISTS DptWorksOn (
                            dptID SMALLINT,
                            pID SMALLINT,
                            PRIMARY KEY (dptID, pID),
                            FOREIGN KEY (dptID) REFERENCES Department(dptID),
                            FOREIGN KEY (pID) REFERENCES Project(pID)
);
