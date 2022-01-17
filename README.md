# Pewlett-Hackard-Analysis

## Overview of the analysis
Pewlett-Hackard has a lot of employees ready to retire in near future. The company wants to know the number of employees retiring so that:

- It can prepare retirement packages for eligible employees in time and effectively
- It can identify how many roles need to be filled in future and have a succession plan for mentorship.

## Results

- The retirement_titles.csv lists the names and titles of employes retiring. As can be seen from the snapshot below, a lot of employees retiring spent considerable amount of time with the company and held many titles.

![retirement_titles](https://github.com/abhi82git/Pewlett-Hackard-Analysis/blob/63607dc932313d9d69cf593cf369b3dbfbdc32e0/Resources/retirement_titles.png)

- The unique_titles.csv lists the most recent title employees who are retiring.

![unique_titles](https://github.com/abhi82git/Pewlett-Hackard-Analysis/blob/63607dc932313d9d69cf593cf369b3dbfbdc32e0/Resources/Unique_Titles.png)

- The retiring_titles.csv lists the number of employees for each position who are retiring. Senior Engineer and Senior Staff constitute nearly 70% of all employees about to retire.

![retiring_titles](https://github.com/abhi82git/Pewlett-Hackard-Analysis/blob/63607dc932313d9d69cf593cf369b3dbfbdc32e0/Resources/retiring_titles.png)

- The mentorship_eligibilty.csv identied the employees to provide mentorship.

![mentorship_eligibilty](https://github.com/abhi82git/Pewlett-Hackard-Analysis/blob/63607dc932313d9d69cf593cf369b3dbfbdc32e0/Resources/Mentorship_Eligibility.png)

## Summary

- 'Silver Tsunami' effect
A total of 72,458 roles will need to be filled - with nearly 70% of these binf Senior Engineers and Staff Engineers.

![Roles to be filled query](https://github.com/abhi82git/Pewlett-Hackard-Analysis/blob/63607dc932313d9d69cf593cf369b3dbfbdc32e0/Resources/Employees_Retiring_Count_Query.png)
![Roles to be filled count](https://github.com/abhi82git/Pewlett-Hackard-Analysis/blob/63607dc932313d9d69cf593cf369b3dbfbdc32e0/Resources/Employees_Retiring_Count_Result.png)

- There are 1549 employees available for mentorship, and that does not seem to be enough for mentoring all the open positions that will need to be filled:

![Available for mentorship query](https://github.com/abhi82git/Pewlett-Hackard-Analysis/blob/63607dc932313d9d69cf593cf369b3dbfbdc32e0/Resources/Mentorship_Eligibility_Count_Query.png)
![Available for mentorship result](https://github.com/abhi82git/Pewlett-Hackard-Analysis/blob/63607dc932313d9d69cf593cf369b3dbfbdc32e0/Resources/Mentorship_Eligibility_Count_Result.png)

### Additional Tables

#### dept_retirees
This table captures the employees retiring from every department. This will inform the management how severely each department will be impacted by the retirees.

![dept_retirees](https://github.com/abhi82git/Pewlett-Hackard-Analysis/blob/63607dc932313d9d69cf593cf369b3dbfbdc32e0/Resources/dept_retiree_query.png)

![dept_retiree count](https://github.com/abhi82git/Pewlett-Hackard-Analysis/blob/63607dc932313d9d69cf593cf369b3dbfbdc32e0/Resources/dept_retiree_count.png)

As the above snapshot shows, Production and Development will be most impacted by the retirement wave coming.

#### dept_mangr_retiring
The query below will try to identify if any of the departments has a manager who is about to retire soon. This will inform the organization which department needs needs a leader soon enough.

![manager department queries](https://github.com/abhi82git/Pewlett-Hackard-Analysis/blob/63607dc932313d9d69cf593cf369b3dbfbdc32e0/Resources/managers_retiring_query.png)

![Departments whose managers are retiring](https://github.com/abhi82git/Pewlett-Hackard-Analysis/blob/63607dc932313d9d69cf593cf369b3dbfbdc32e0/Resources/managers_retiring_result.png)

As the above snapshot shows, Sales and Research have managers retiring in near future and needs extra attention from management.