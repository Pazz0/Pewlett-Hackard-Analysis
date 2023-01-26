# Pewlett-Hackard-Analysis

### Our client Pewlett Hackard, has a very large workforce, many of which plan on retiring soom. This project's objective is to search through data to determine a plan to best position the company for upcoming workforce changes.

## Overview
We had two main objectives for our project to obtain from data: 

* To Determine the number of retiring employees for their company by their title

* Identify employees from the daTABASE who are eligible to participate in a company mentorship program

To do so we created and queried databases to create tables with our desired outcomes. The results and table titles are as follows.

## Results
### Tables
  * Retirement Titles: Holds all the titles of employees who were born between January 1, 1952 and December 31, 1955.

<img width="718" alt="Retirement Titles" src="https://user-images.githubusercontent.com/18335464/214950627-e565d950-c2a9-4ec8-ab70-5b6d249de53d.png">


  * Unique Titles: Employees may have had more then one role at the company. This list is to classify them by their most recent role.

<img width="541" alt="Unique Titles" src="https://user-images.githubusercontent.com/18335464/214950680-35c8e48c-e462-4220-87f3-0d728bbbc86f.png">


  * Retiring Titles: The number of employees (using their most recent job title) who are about to retire.

<img width="283" alt="Retiring Titles" src="https://user-images.githubusercontent.com/18335464/214950781-fd108804-38e5-4543-92a9-c9172bc5b7f7.png">


  * Mentorship Eleigibilty: Holds the employees who are eligible to participate in a mentorship program.

<img width="799" alt="Mentorship Eleigibilty" src="https://user-images.githubusercontent.com/18335464/214950802-45562668-8df0-4135-81fe-b6751be86555.png">


## Summary
The number of retiring employees is **133776**! This is staggering! Good planning must be in effect for the company to be able to work through this transitionarry period. This newly minted data can show us what to expect and give an idea to company decision makers on how to proceed. One majoe step is the employee mentorship program. This is designed to not only retain the skills of previous emplyees as they make a comfortable exit but as well provide valuable insight to the next generation of employees. The employees eligible for this program were extracted using a specific criteria from our client, are presented in the final Mentorship Eligibility table.

### Additional Queries
* An addtional Query that would help further analysis is to Order the Mentorship Eleigibilty table by birth_date to know who the first members to contact for the program showuld be. 

<img width="796" alt="Mentorship By Date" src="https://user-images.githubusercontent.com/18335464/214950928-065c224b-f80e-429c-b56e-51595195b3ae.png">


* Another Query that would find use is to order the Retirement Titles table by from_date to have a list of employees in order of how long they have been there to have a prediction of who and when will be leaving in the near future and approximate order.

<img width="721" alt="Retirement Titles By Date" src="https://user-images.githubusercontent.com/18335464/214950974-aba317fa-56e8-4abc-ae25-0c46432863f8.png">
