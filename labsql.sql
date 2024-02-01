SELECT * FROM lms.lab;

TRUNCATE TABLE lab;
UPDATE lab 
SET name='Java' where Id=1;
TRUNCATE TABLE lab;
UPDATE lab 
SET name='Software Testing' where Id=2;
UPDATE lab 
SET name='Javascript' where Id=3;
UPDATE lab 
SET name='SQLDatabase' where Id=4;
UPDATE lab 
SET name='NodeJS' where Id=5;
UPDATE lab 
SET name='Android devops' where Id=6;
UPDATE lab 
SET name='Automation Testing' where Id=7;
UPDATE lab 
SET name='Ajax JQuery' where Id=8;
UPDATE lab 
SET name='C#' where Id=9;


