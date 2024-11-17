CREATE TABLE employees (
         employee_id INT, 
         employee_name VARCHAR(100), 
         department_id INT
     );
     CREATE TABLE departments (
         department_id INT, 
         department_name VARCHAR(100)
     );
     CREATE TABLE projects (
         project_id INT, 
         employee_id INT, 
         rating DECIMAL(3, 2), 
         start_date DATE
     );
     INSERT INTO departments VALUES 
         (1, 'IT'), 
         (2, 'HR'), 
         (3, 'Finance');
     INSERT INTO employees VALUES 
         (1, 'John Doe', 1), 
         (2, 'Jane Smith', 1), 
         (3, 'Emily Johnson', 2), 
         (4, 'Michael Brown', 3);
     INSERT INTO projects VALUES 
         (1, 1, 4.5, '2022-01-10'), 
         (2, 1, 4.7, '2023-03-15'), 
         (3, 2, 4.8, '2021-06-20'), 
         (4, 3, 4.0, '2023-01-05'), 
         (5, 4, 4.9, '2022-11-30');

SELECT * FROM DEPARTMENTS
SELECT * FROM EMPLOYEES
SELECT * FROM PROJECTS

/*Retrieve the top 10 employees who have the highest average project rating over the last 3 years, 
including their department and the number of projects they have worked on.*/


--HIGHEST AVERAGE PROJECT RATING
--LAST 3 YEARS
--DEPARTMENT
--NUMBER OF PROJECTS WORKED
--LIMIT 10


SELECT 
    E.EMPLOYEE_NAME,
    D.DEPARTMENT_NAME,
    AVG(P.RATING) AS AVERAGE_PROJECT_RATING,
    COUNT(P.PROJECT_ID) AS NO_OF_PROJECTS
FROM PROJECTS P
JOIN EMPLOYEES E 
    ON P.EMPLOYEE_ID = E.EMPLOYEE_ID
JOIN DEPARTMENTS D
    ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
WHERE P.START_DATE >= CURRENT_DATE - INTERVAL '3 years'
GROUP BY E.EMPLOYEE_NAME, D.DEPARTMENT_NAME
ORDER BY AVERAGE_PROJECT_RATING DESC
LIMIT 10;

       
       

