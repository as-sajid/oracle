
DROP TABLE my_temp_table;
CREATE or replace  private  temporary table my_temp_table
on commit drop definition
as select *  from HR.EMPLOYEES;
select count(*) from hr.my_temp_table;
commit;




