CREATE TABLE renewable_energy_companies (
         company_id INT PRIMARY KEY, 
         company_name VARCHAR(100), 
         project_count INT
     );
     INSERT INTO renewable_energy_companies VALUES 
         (1, 'Tata Power', 10), 
         (2, 'ReNew Power', 25), 
         (3, 'Greenko', 15);

SELECT * FROM RENEWABLE_ENERGY_COMPANIES

/*
Get all renewable energy companies that have a project count between 5 and 20.
*/

SELECT COMPANY_NAME
FROM RENEWABLE_ENERGY_COMPANIES
WHERE PROJECT_COUNT BETWEEN 5 AND 20