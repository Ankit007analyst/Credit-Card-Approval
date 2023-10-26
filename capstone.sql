-- 1. Group the customers based on their income type and find the average of their annual income.

select Type_Income,avg( Annual_income) from file1 group by Type_Income

-- Find the female owners of cars and property.
select * from file1 where gender='F'and Car_Owner="y" and Propert_Owner='Y'

-- Find the male customers who are staying with their families.
select distinct * from file1 where Housing_type='With parents'

-- Please list the top five people having the highest income.
select * from file1 order by Annual_income limit 5

How many married people are having bad credit?
select Marital_status,avg(Annual_income),avg(work_experience) from file1 group by Marital_status;
select Marital_status,Count(*) from file1 where Marital_status='Married'and Annual_income<180000 and work_experience<3;

-- What is the highest education level and what is the total count?
select EDUCATION,count(*) from file1 group by EDUCATION having EDUCATION='Higher education' or EDUCATION='Academic degree';

-- Between married males and females, who is having more bad credit? 
select GENDER,Marital_status,Avg(work_experience), avg(Annual_income)from file1 group by GENDER,Marital_status




