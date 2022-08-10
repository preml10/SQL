-- 1st Query -----------------------------------------------------------

Select * from Employee where Job = 'Manager' Order by Ename

-- 2nd Query -----------------------------------------------------------

Select Ename, Salary from Employee where Salary >= 1000 order by Salary 

-- 3rd Query -----------------------------------------------------------

Select Ename, Salary From Employee Where Ename != 'James'

-- 4th Query -----------------------------------------------------------

Select * from Employee where Ename like 'S%'

-- 5th Query -----------------------------------------------------------

select * from Employee Where Ename like '%a%'

-- 6th Query -----------------------------------------------------------

select * from Employee where Ename like '___l%'

-- 7th Query -----------------------------------------------------------

select Ename,Salary/30 as 'Daily Wage' from Employee where Ename = 'Jones'

-- 8th Query -----------------------------------------------------------

Select Job,sum(Salary) As 'Total Monthly Salary' from Employee group by Job

-- 9th Query -----------------------------------------------------------

Select Avg(Salary*12) as 'Average Salary' from Employee

-- 10th Query ----------------------------------------------------------

Select Ename,Job,Salary,DeptNo from Employee where Job != 'Salaesman' And DeptNo = 30 

-- 11th Query ---------------------------------------------------------

Select Distinct(DeptName) from Department Where DeptNo  in   (Select DeptNo from Employee  )

-- 12th Query ---------------------------------------------------------

Select e.Ename as 'Employee Name',e.Salary as 'Salary' from Employee e where e.Salary >= 1500 and (e.DeptNo =10 or e.DeptNo =30 )

-- 13th Query ---------------------------------------------------------

Select Ename,Job,Salary from Employee where (Job ='Research' or Job = 'Analyst' ) and Salary not in (1000,3000,5000) 

-- 14th Query --------------------------------------------------------

Select Ename,Salary,Comm from Employee where Comm > (Salary + Salary*0.1)
Select Ename,Salary,Comm from Employee where Comm > (Salary*0.1)

-- 15th Query ---------------------------------------------------------

Select * from Employee where Ename like '%l%l%' and DeptNo =30 or Mgr_Id = 7782

-- 16th Query ---------------------------------------------------------

Select Ename from Employee where DATEDIFF(Month,Hiredate,Getdate())/12 between 10 and 20

-- 17th Query --------------------------------------------------------

Select * from Employee join Department on Employee.DeptNo = Department.DeptNo order by Department.DeptName asc , Employee.Ename desc

-- 18th Query --------------------------------------------------------

Select DATEDIFF(Month,HireDate,GetDate())/12 from Employee Where Ename = 'Miller'
