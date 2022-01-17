# Pewlett-Hackard-Analysis

## Overview of the analysis
Pewllet-Hackard has a lot of employees ready to retire in near future. The company wants to know the number of employees retiring so that:

- It can prepare retirement packages for eligible employees in time and effectively
- It can identify how many roles need to be filled in future and have a succession plan for mentorship.

## Results

- The retirement_titles.csv lists the names and titles of employes retiring. As can be seen from the snapshot below, a lot of employees retiring spent considerable amount of time with the company and held many titles.
![retirement_titles](https://github.com/abhi82git/PyBer_Analysis/blob/0c877f4a9ca938bf67032cda53c919c6b15694f4/analysis/PyBer_Summary.png)

- The unique_titles.csv lists the most recent title employees who are retiring.
![unique_titles](https://github.com/abhi82git/PyBer_Analysis/blob/0c877f4a9ca938bf67032cda53c919c6b15694f4/analysis/PyBer_Summary.png)

- The retiring_titles.csv lists the number of employees for each position who are retiring. Senior Engineer and Senior Staff constitute nearly 70% of all employees about to retire.
![retiring_titles](https://github.com/abhi82git/PyBer_Analysis/blob/0c877f4a9ca938bf67032cda53c919c6b15694f4/analysis/PyBer_Summary.png)

- The mentorship_eligibilty.csv identied the employees to provide mentorship.
![mentorship_eligibilty](https://github.com/abhi82git/PyBer_Analysis/blob/0c877f4a9ca938bf67032cda53c919c6b15694f4/analysis/PyBer_Summary.png)

## Summary

- 'Silver Tsunami' effect
A total of 72,458 roles will need to be filled - with nearly 70% of these binf Senior Engineers and Staff Engineers.
![Roles to be filled query](https://github.com/abhi82git/PyBer_Analysis/blob/0c877f4a9ca938bf67032cda53c919c6b15694f4/analysis/PyBer_Summary.png)
![Roles to be filled count](https://github.com/abhi82git/PyBer_Analysis/blob/0c877f4a9ca938bf67032cda53c919c6b15694f4/analysis/PyBer_Summary.png)

- There are 1549 employees available for mentorship, and that does not seem to be enough for mentoring all the open positions that will need to be filled:
![Available for mentorship query](https://github.com/abhi82git/PyBer_Analysis/blob/0c877f4a9ca938bf67032cda53c919c6b15694f4/analysis/PyBer_Summary.png)
![Available for mentorship result](https://github.com/abhi82git/PyBer_Analysis/blob/0c877f4a9ca938bf67032cda53c919c6b15694f4/analysis/PyBer_Summary.png)

### Additional Tables

#### dept_retirees
This table captures the employees retiring from every department. This will inform the management how severely each department will be impacted by the retirees.
![dept_retirees](https://github.com/abhi82git/PyBer_Analysis/blob/0c877f4a9ca938bf67032cda53c919c6b15694f4/analysis/PyBer_Summary.png)

![dept_retiree count](https://github.com/abhi82git/PyBer_Analysis/blob/0c877f4a9ca938bf67032cda53c919c6b15694f4/analysis/PyBer_Summary.png)

As the above snapshot shows, Production and Development will be most impacted by the retirement wave coming.

#### dept_mangr_retiring
The query below will try to identify if any of the departments has a manager who is about to retire soon. This will inform the organization which department needs needs a leader soon enough.
![manager department queries](https://github.com/abhi82git/PyBer_Analysis/blob/0c877f4a9ca938bf67032cda53c919c6b15694f4/analysis/PyBer_Summary.png)

![Departments whose managers are retiring](https://github.com/abhi82git/PyBer_Analysis/blob/0c877f4a9ca938bf67032cda53c919c6b15694f4/analysis/PyBer_Summary.png)

As the above snapshot shows, Sales and Research have managers retiring in near future and needs extra attention from management.