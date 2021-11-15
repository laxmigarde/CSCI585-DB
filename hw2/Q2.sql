/**
DB Software Used: Browser based SQL Interpreter: https://sql.js.org/examples/GUI/

HW2 - CSCI 585 - Database Systems
Laxmi Garde

Q.2 Write a query to output the most-self-reported symptom.
**/

select count(symptom_id) as TOTALVAL,symptoms from Symptom group by symptoms 
                  having count(symptom_id)=(select max(symptom_id) from (select count(symptom_id) symptom_id,symptoms from Symptom group by symptoms));


/** Another approach **/
select count(symptom_id) as TOTALVAL, symptoms from Symptom group by symptoms order by TOTALVAL desc limit 1;



/** returns the symptom (symptom name along with the count of the most self-reported symptom) 

O/P for the above query based on the populated data:
TOTALVAL  | symptoms
-----------------------
8	      |  Cold

'Cold' is the most self-reported symptom.
**/