/**
DB Software Used: Browser based SQL Interpreter: https://sql.js.org/examples/GUI/

HW2 - CSCI 585 - Database Systems
Laxmi Garde

Q5. Create your own query! What else would you like to learn, from the data? 
Describe/list the question, and come up with the query to answer it. 
(details indicated in the README.txt)
**/


/** a. Total deaths of employees in the office for a given period (quarter, half-year, year) **/
select count(*) as TOTAL_DEATHS from Case1 where resolution in ('deceased') and date between '2021-01-01' and '2021-04-30';  

/** b. Most common symptom reported by the employees **/
select symptoms as COMMON_SYMPTOM from Symptom group by symptoms having count(employee_id)=(select max(employee_id) from (select count(employee_id) employee_id,symptoms from Symptom group by symptoms));

/** Another approach for b**/
select count(employee_id) as count, symptoms as COMMON_SYMPTOM from Symptom group by symptoms order by count desc limit 1;

/** c. Number of employees admitted to the Hospital. [Company can check the expenditure required on Hospitals for that quarter / time] **/
select count(employee_id) as TOTAL_EMP_ADMISSIONS from HealthStatus where status='hospitalized';

/** d. Find meeting room of employees who received 'mandatory' notification to get tested **/
select room_number,n.employee_id,notification_type from Meeting m join Notification n on m.employee_id=n.employee_id where notification_type='mandatory';

/** e. Table Division - Find the symptoms shown by all employees. **/
select distinct sym.employee_id,symptoms
from Symptom as sym
where not exists(select * from  Employees as emp
         where not exists(select * from Symptom as sym1 where (sym1.employee_id=sym.employee_id)));



/**
O/P
a. total employee deaths in the company due to covid 
| TOTAL_DEATHS |
-----------------
|      3       |

b. most common symptom reported by the employees
| COMMON_SYMPTOM |
------------------
|     Cold       |

c. employees admitted to the hospital
 | TOTAL_EMP_ADMISSIONS |
 ------------------------
 |          6           |

d. find meeting room of employees who received mandatory notification to get tested
| room_number | employee_id | notification_type |
-------------------------------------------------
|     1       | 	1001    |	 mandatory      |
|     5       |	    1005    |	 mandatory      |
|     2       |    	1007    | 	 mandatory      |
|     6       |	    1010    |	 mandatory      |
|     1       |	    1011    |	 mandatory      |
|     3       |	    1013    |    mandatory      |
|     5       | 	1015    |	 mandatory      |
|     6       | 	1016	|    mandatory      |
|     8       | 	1018    |	 mandatory      |
|     6       |	    1020    |    mandatory      |

e. symptoms shown by all employees.
| employee_id | symptoms |
--------------------------
|    1001     |	  Cold   |
|    1002     |	  Cold   |
|    1002     |   Flu    |
|    1002     |	  Cough  |
|    1002     |	  Taste  |
|    1002     |	  Fever  |
|    1003     |	  Cold   |
|    1003     |	  Cough  |
|    1004     |	  Cold   |
|    1004     |	  Taste  |
|    1005     |	  Fever  |
|    1006     |	  Cough  |
|    1008     |	  Fever  |
|    1010	  |   Cold   |
|    1010     |	  Flu    |
|    1011     |	  Cold   |
|    1012     |	  Taste  |
|    1013     |	  Fever  |
|    1013     |	  Cough  |
|    1014     |	  Fever  |
|    1015     |	  Cold   |
|    1016     |	  Cough  |
|    1017     |	  Cold   |
|    1018     |	  Taste  |
|    1019     |	  Fever  |
|    1020     |	  Cough  |
|    1020     |	  Fever  |

**/