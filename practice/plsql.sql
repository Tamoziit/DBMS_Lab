CREATE TABLE Emp_pl (
    Emp_No    VARCHAR2(10) PRIMARY KEY,
    Emp_Name  VARCHAR2(30),
    Sal       NUMBER(10,2)
);

INSERT INTO Emp_pl VALUES ('E001', 'Harry', 5000);
INSERT INTO Emp_pl VALUES ('E002', 'Blake', 1000);
INSERT INTO Emp_pl VALUES ('E003', 'Jack', 5000);
INSERT INTO Emp_pl VALUES ('E004', 'Clark', 1000);

select * from Emp_pl;

set serveroutput on;

@records.sql;


/* Triggers */
CREATE TABLE student (
  sid NUMBER PRIMARY KEY,
  name VARCHAR2(50)
);

CREATE TABLE course (
  cid NUMBER PRIMARY KEY,
  studentid NUMBER,
  FOREIGN KEY (studentid) REFERENCES student(sid)
);

INSERT INTO student VALUES (1, 'Alice');
INSERT INTO student VALUES (2, 'Bob');

INSERT INTO course VALUES (101, 1);
INSERT INTO course VALUES (102, 1);
INSERT INTO course VALUES (103, 2);

@delete_trigger.sql;

DELETE FROM student WHERE sid = 1;

SELECT * FROM course;
SELECT * FROM student;


CREATE TABLE client_master (
  client_no   NUMBER PRIMARY KEY,
  name        VARCHAR2(50),
  city        VARCHAR2(50),
  balance     NUMBER
);

CREATE TABLE auditclient (
  client_no      NUMBER,
  name           VARCHAR2(50),
  balance        NUMBER,
  operation      VARCHAR2(10),     -- 'UPDATE' or 'DELETE'
  user_id        VARCHAR2(30),     -- who performed the operation
  operation_date DATE
);

-- Insert sample data
INSERT INTO client_master VALUES (1, 'Alice', 'Delhi', 5000);
INSERT INTO client_master VALUES (2, 'Bob', 'Kolkata', 3000);

@audit_trigger.sql;

-- Update one record
UPDATE client_master SET balance = 6000 WHERE client_no = 1;

-- Delete one record
DELETE FROM client_master WHERE client_no = 2;

-- View the audit table
SELECT * FROM auditclient;
SELECT * FROM client_master;

COMMIT;