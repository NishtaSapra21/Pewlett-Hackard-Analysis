# Pewlett-Hackard Analysis

## Overview 
Determine the number of retiring employees per title and identify employees who are eligible to participate in a mentorship program using SQL queries with JOINS, DISTINCT ON, WHERE, COUNT , GROUP BY , ORDER BY.

## RESULTS

### __Employees About to Retire__

* Considering __”employee”__ database, the  total employees are 300,024. From following fig it is seen that 72,458 employees are about to retire. This can be considered   as big number. 
* From 72,458 employees; 25,916 are __Senior Engineers__  and 24,926 are __Senior Staff__, that is 50% of employees who are about to retire. Pewlett-Hackard will need     loose a large number of senior employees.


  ![retirement_titlecounts](https://user-images.githubusercontent.com/107717882/181860264-0e60b22d-6004-4ac0-ac85-9d2d449b8450.png)


### __Employees Ready for Mentorship__

* Consider the total number of employees for given titles are available for mentorship. There is a big difference between number of people are retiring and number of     people are ready for mentorship.
* If company is going to hire as many employee as  are about to retire; it will be difficult to train them with lower number of mentors available. There are only          __1,549__ employees are available to mentorship versus __72,458__ employees are about to retire. 


  ![mentorship_titlecounts](https://user-images.githubusercontent.com/107717882/181860285-88b275a5-8901-48b4-afb2-a51cd953afbc.png)


# __Summary__

1.	Total __72,458__ rolls will be needed to fill before __”silver tsunami”__ begins to make an impact. This is humongous number for any company to  balance hiring and     retiring employees. 
2.	Considering the retirement ready employees; __1,549__ , only __2.13%__ of total retiring employees,  which are not enough to train newly hire/promoted employees.
