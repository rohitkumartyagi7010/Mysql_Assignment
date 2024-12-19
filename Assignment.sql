-- Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using 
-- the alias name as <WORKER_NAME>.

select first_name as workername
from company.worker;

-- Q-2. Write an SQL query to fetch unique values of DEPARTMENT from 
-- Worker table.
select 
	distinct(department)
from company.worker;
-- Q-2. Write an SQL query to fetch total number of unique DEPARTMENT from 
-- Worker table.
select 
    count(distinct(department))
from company.worker; 

-- Q-3. Write an SQL query to show the last 5 record from a table. 

WITH RankedRecords AS (
    SELECT *, ROW_NUMBER() OVER () AS row_num
    FROM Worker
)
SELECT *
FROM RankedRecords
WHERE row_num > (SELECT COUNT(*) FROM Worker) - 5;

select *
from company.worker
limit 5 offset 8;



 

 
    





