-- create
CREATE TABLE EMPLOYEE (
  empId int primary key,
  name varchar(15),
  dept varchar(10),
  managerId int foreign key references EMPLOYEE(empId)
);

-- insert
INSERT INTO EMPLOYEE VALUES (1, 'Alice', 'HR', NULL);
INSERT INTO EMPLOYEE VALUES (2, 'Bob', 'Finance', 1);
INSERT INTO EMPLOYEE VALUES (3, 'Charlie', 'IT', 1);
INSERT INTO EMPLOYEE VALUES (4, 'David', 'IT', 2);
INSERT INTO EMPLOYEE VALUES (5, 'Eve', 'IT', 3);
INSERT INTO EMPLOYEE VALUES (6, 'Frank', 'IT', 1);

-- fetch 
SELECT E.empId as EmpId, E.name as EmpName, E.dept as EmpDept, M.name as ManagerName, M.dept as ManagerDept
FROM 
EMPLOYEE as E
left join
EMPLOYEE as M
on E.managerId = M.empId;