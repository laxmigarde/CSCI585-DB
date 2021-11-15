

README.txt

Name: Laxmi Garde
CSCI 585 Database Systems - HW 1


ER Diagram Description:

A.  Employee signs up for the COVID-19 Contact tracing app using the Registration system. One registration per employee is done (1:1). Employee registers using employee_id, phone_no (required), and email_address (optional). The app installation and registration issue handling parts are not in the scope of this ER diagram. Once registered, Employee receives one or more notifications from the Notifications system.*  An Employee reports one or more health statuses (daily or if they develop symptoms) to the Self-Reporting System.

B. Company manages multiple Registration(s).** The Registration system contains a Notifications system which notifies one or more updates to the Employees and the Company. Registration system also contains Self-Reporting System which allows Employees to update health-status regularly and updates Company too. Company employs many Employees (1:N). The Company building has multiple floors, with multiple Meeting Room(s) on every floor. One or more Employees can join one Meeting Room at a time based on meeting schedules. Details related to close contact between employees in Meeting Rooms(s) are stored in the Registration system for the Employee and Company (via app) to check.

C. Employee can develop zero or more Symptoms. If one or many Symptoms develop, they are reported on the Self-Reporting System. The Symptoms are also reported to the Notifications system which further can update the Company. Employees that develop symptoms need to perform tests is not represented in the ER diagram. 

D. Company conducts many random Test Scan(s). Employee undergoes one or more random Test Scans that are conducted daily (during entry/exit) or randomly by the company. The Test Scan details are available with the Notifications system for further notifications to be sent to Company or Employee.

E. Employee performs tests in a Testing Lab.***  The Testing Lab can generate many Test Report(s). An Employee can have multiple Test Report(s). Each Test Report is reported to the Notifications system and Self-Reporting System (1:1).

F. Employee who tests positive for COVID and needs hospitalization is admitted to a Hospital. The Test Report of the Employee is available with the Hospital during admission, and it can receive many Test Reports(s). Hospital daily updates the status of the patient (Employee) over the Notifications system (an assumption that the Company has a tie-up with the Hospital for COVID treatment of its Employee(s)).****



* The notification_type and notification_message attributes are used to notify the Employees that they were in contact with COVID patients or there is an employee who tested positive on the floor and that the others should consider getting tested.

** The Registration, Notifications, and Self-Reporting System are to be considered as part of the Application available to the Employees and Company for use. 

*** Employees can either go to an onsite testing lab or offsite testing lab of their choice. During random testing conducted, it is assumed here that the employees need to take tests at the onsite testing facility. This is not represented separately on the ER diagram. 

**** When an employee is hospitalized but stable, they can directly update their daily status over the app (This part is not separately represented on the ER Diagram). But when the employee is critical or deceased, the status is updated by the Hospital administration (assumption). 



Entities with attributes:

Employee(employee_id (PK), phone_no(required), email_address, emp_name, emp_position, emp_role, company_id(FK), meeting_id(FK))

Registration(reg_id (PK), reg_date, reg_time, employee_id (FK, unique), company_id (FK), notification_no (FK, unique), self_report_no (FK, unique), meeting_id (FK, unique))

Notifications(notification_no (PK), employee_id (FK), report_id (FK, unique), scan_id (FK, unique), hospital_id (FK), company_id (FK), notification_type, notification_message, notif_send_date, notif_update_date, notif_timestamp)

Self-Reporting System(self_report_no (PK), employee_id (FK),report_id (FK, unique), company_id (FK), health_status, last_test_date)

Company(company_id (PK), company_name, company_address, postal_code)

Meeting Room(meeting_id (PK), company_id (FK), room_no (required), floor_no (required), meeting_date (required), meeting_start_time, meeting_end_time, total_attendees)

Symptom(symptom_code (PK), employee_id (FK), symptom_name, symptom_type, symp_start_date (required), symp_end_date (required), self_report_no (FK), notification_no (FK))

Test Scan(scan_id (PK), employee_id (FK), company_id (FK), entry_temp_scan, exit_temp_scan, emp_temp, date_of_scan, test_required)

Test Report(report_id (PK), employee_id (FK), hospital_id (FK), test_lab_id (FK), report_type, report_result (required), test_date, report_created_date, report_updated_date, quaratine_start_date, qurantine_end_date)

Testing Lab(test_lab_id (PK), employee_id(FK, unique), onsite_testing, offsite_testing, location_addr)

Hospital(hospital_id (PK), employee_id (FK, unique), patient_no, emp_status, admit_date, discharge_date, recovery_stage, bed_no)



