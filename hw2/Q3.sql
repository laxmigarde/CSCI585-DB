/**
DB Software Used: Browser based SQL Interpreter: https://sql.js.org/examples/GUI/

HW2 - CSCI 585 - Database Systems
Laxmi Garde

Q.3 Write a query to output the 'sickest' floor.
**/


create view emp_view as select * from Employees inner join Test 
on Employees.employee_id=Test.employee_id where test_result='positive';

select * from emp_view;

select count(floor_number) as count, floor_number from emp_view 
group by floor_number order by Count desc limit 1;


/** returns the floor number that has maximum number of employees that tested 'positive' for covid-19, thereby implying the sickest floor.

O/P for the above query based on the populated data:
count  |  floor_number
-----------------------
4      |	2

The sickest floor is floor_number 2.
**/


