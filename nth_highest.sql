

SELECT A.DEPARTMENT_ID, A.LAST_NAME, A.SALARY
FROM
    (
 SELECT DEPARTMENT_ID, LAST_NAME,  SALARY, 
     DENSE_RANK() OVER ( partition by department_id ORDER BY SALARY DESC  ) AS SALARY_RANK from employee where salary is not null  )A
    Where a.salary_rank=1; 
   