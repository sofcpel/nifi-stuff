SELECT DEPARTMENT_ID, DEPARTMENT_NAME, LOCATION_ID, CITY
FROM DEPARTMENTS d 
NATURAL JOIN LOCATIONS;

SELECT DEPARTMENT_ID, DEPARTMENT_NAME, LOCATION_ID, CITY
FROM DEPARTMENTS d 
NATURAL JOIN LOCATIONS l
WHERE DEPARTMENT_ID IN (20,50);

SELECT EMPLOYEE_ID, LAST_NAME, DEPARTMENT_ID, LOCATION_ID
FROM EMPLOYEES e 
	JOIN DEPARTMENTS d 
	USING (DEPARTMENT_ID);

SELECT L.CITY, d.DEPARTMENT_NAME
FROM LOCATIONS l 
	JOIN DEPARTMENTS d USING (LOCATION_ID)
	WHERE LOCATION_ID = 1400;

SELECT e.EMPLOYEE_ID, e.LAST_NAME, e.DEPARTMENT_ID, d.DEPARTMENT_ID, d.LOCATION_ID 
FROM EMPLOYEES e 
	JOIN DEPARTMENTS d 
	ON (e.DEPARTMENT_ID =  d.DEPARTMENT_ID);

SELECT EMPLOYEE_ID, CITY, DEPARTMENT_NAME
FROM EMPLOYEES e 
	JOIN DEPARTMENTS d 
	ON d.DEPARTMENT_ID = e.DEPARTMENT_ID 
	JOIN LOCATIONS l 
	ON d.LOCATION_ID = l.LOCATION_ID; 

SELECT e.EMPLOYEE_ID, e.LAST_NAME, e.DEPARTMENT_ID, d.DEPARTMENT_ID, d.LOCATION_ID 
FROM EMPLOYEES e 
	JOIN DEPARTMENTS d
	ON (e.DEPARTMENT_ID = d.DEPARTMENT_ID)
	AND e.MANAGER_ID = 149;

SELECT worker.LAST_NAME emp, manager.LAST_NAME mgr
FROM EMPLOYEES worker 
	JOIN EMPLOYEES manager
	ON (worker.MANAGER_ID = manager.EMPLOYEE_ID);

SELECT e.LAST_NAME, e.DEPARTMENT_ID, d.DEPARTMENT_NAME 
FROM EMPLOYEES e 
	LEFT OUTER JOIN DEPARTMENTS d 
	ON (e.DEPARTMENT_ID = d.DEPARTMENT_ID);



SELECT l.LOCATION_ID, l.STREET_ADDRESS, CITY, l.STATE_PROVINCE, c.COUNTRY_NAME 
FROM LOCATIONS l NATURAL JOIN COUNTRIES c;

SELECT e.LAST_NAME, d.DEPARTMENT_ID, d.DEPARTMENT_NAME 
FROM EMPLOYEES e 
	JOIN DEPARTMENTS d
	ON (e.DEPARTMENT_ID = d.DEPARTMENT_ID);

SELECT e.LAST_NAME, e.JOB_ID, d.DEPARTMENT_ID, d.DEPARTMENT_NAME 
FROM EMPLOYEES e 
JOIN DEPARTMENTS d 
	ON (e.DEPARTMENT_ID = d.DEPARTMENT_ID)
JOIN LOCATIONS l 
	ON (d.LOCATION_ID = l.LOCATION_ID)
	AND l.CITY = 'Toronto'; 

SELECT emp.LAST_NAME Employee, emp.EMPLOYEE_ID EMP#, mng.LAST_NAME Manager, mng.MANAGER_ID MNG#
FROM EMPLOYEES emp 
JOIN EMPLOYEES mng
	ON (emp.MANAGER_ID = mng.MANAGER_ID);

SELECT emp.LAST_NAME Employee, emp.EMPLOYEE_ID EMP#, mng.LAST_NAME Manager, mng.MANAGER_ID MNG#
FROM EMPLOYEES emp 
LEFT OUTER JOIN EMPLOYEES mng
	ON (emp.MANAGER_ID = mng.MANAGER_ID);

SELECT workers.DEPARTMENT_ID, workers.LAST_NAME, coworkers.LAST_NAME 
FROM EMPLOYEES workers
JOIN EMPLOYEES coworkers
	ON (workers.DEPARTMENT_ID = coworkers.DEPARTMENT_ID)
	WHERE workers.EMPLOYEE_ID <> coworkers.EMPLOYEE_ID 
ORDER BY workers.DEPARTMENT_ID, coworkers.LAST_NAME, workers.LAST_NAME; 
	
SELECT e.LAST_NAME, e.HIRE_DATE, m.LAST_NAME, m.HIRE_DATE 
FROM EMPLOYEES e 
JOIN EMPLOYEES m 
	ON (e.MANAGER_ID = m.EMPLOYEE_ID)
	WHERE e.HIRE_DATE < m.HIRE_DATE;



	
