-- SELECT + WHERE(Basic) --
1. Seleccionar todo Trae todos los datos de la tabla de empleados (employees).
SELECT * FROM hr.employees;

2. Seleccionar columnas específicas Trae solo el nombre (first_name) y el apellido (last_name) de todos los empleados.
SELECT first_name, last_name FROM hr.employees;

3. Seleccionar otra tabla Trae todos los datos de la tabla de departamentos (departments).
SELECT * FROM hr.departments;

4. Filtro numérico simple Muestra todos los datos del empleado con el código (employee_id) número 100.
SELECT * FROM hr.employees 
WHERE employee_id = 100;

5. Filtro de texto (Case Sensitive) Muestra los datos del empleado cuyo apellido (last_name) es exactamente 'King'.
SELECT * FROM hr.employees 
WHERE last_name = 'King';

6. Filtro por Departamento Muestra todos los empleados que trabajan en el departamento número 90.
SELECT * FROM hr.employees 
WHERE department_id = 90;

7. Columnas específicas con filtro Muestra solo el nombre y el salario de los empleados del departamento 60.
SELECT first_name, salary 
FROM hr.employees 
WHERE department_id = 60;

8. Filtro por Job ID Muestra los empleados que tienen el puesto (job_id) de 'IT_PROG'.
SELECT * FROM hr.employees 
WHERE job_id = 'IT_PROG';

9. Tabla Locations Trae todas las columnas de la tabla de ubicaciones (locations).
SELECT * FROM hr.locations;

10. Filtro en Locations Muestra las ubicaciones que están en la ciudad (city) de 'Seattle'.
SELECT * FROM hr.locations 
WHERE city = 'Seattle';

11. Filtro numérico en Locations Muestra la ubicación cuyo código postal (postal_code) es '98199'.
SELECT * FROM hr.locations 
WHERE postal_code = '98199';

12. Tabla Jobs Muestra el título del trabajo (job_title) para el código (job_id) 'AD_VP'.
SELECT job_title 
FROM hr.jobs 
WHERE job_id = 'AD_VP';

13. Tabla Regions Muestra la región con el region_id igual a 1.
SELECT * FROM hr.regions 
WHERE region_id = 1;

14. Filtro por Salario exacto Muestra los empleados que ganan exactamente 17000.
SELECT * FROM hr.employees 
WHERE salary = 17000;

15. Filtro por Manager Muestra los empleados que reportan al manager con ID 103.
SELECT * FROM hr.employees 
WHERE manager_id = 103;

16. Filtro por País En la tabla locations, muestra las oficinas que están en el país (country_id) 'US'.
SELECT * FROM hr.locations 
WHERE country_id = 'US';

17. Filtro por Estado/Provincia En la tabla locations, muestra las oficinas que están en el estado (state_province) de 'California'.
SELECT * FROM hr.locations 
WHERE state_province = 'California';

18. Filtro por Título de Trabajo En la tabla jobs, busca la información del puesto cuyo título (job_title) es 'Stock Manager'.
SELECT * FROM hr.jobs 
WHERE job_title = 'Stock Manager';

19. Combinando Select y Where en Countries Muestra el nombre del país (country_name) de la tabla countries donde el código (country_id) sea 'CA'.
SELECT country_name 
FROM hr.countries 
WHERE country_id = 'CA';

20. Validación de ID Muestra el nombre y apellido del empleado con ID 200.
SELECT first_name, last_name 
FROM hr.employees 
WHERE employee_id = 200;

-- INEQUALITY VALUES-----------------------------------------------------------
1. Mayor estricto (Salario) Muestra los empleados que ganan más de 10000.
SELECT * FROM hr.employees 
WHERE salary > 10000;

2. Menor estricto (Salario) Muestra los empleados que ganan menos de 3000.
SELECT * FROM hr.employees 
WHERE salary < 3000;

3. Mayor o igual (Identificador) Muestra los empleados cuyo employee_id sea mayor o igual a 200.
SELECT * FROM hr.employees 
WHERE employee_id >= 200;

4. Diferente (Estándar ANSI) Muestra los empleados que NO trabajan en el departamento 90. Usa el operador <>.
SELECT * FROM hr.employees 
WHERE department_id <> 90;

5. Diferente (Estilo Oracle) Muestra los empleados cuyo puesto (job_id) NO sea 'IT_PROG'. Usa el operador !=.
SELECT * FROM hr.employees 
WHERE job_id != 'IT_PROG';

6. Combinando: Igualdad y Mayor que Muestra los empleados del departamento 50 que ganen más de 5000.
SELECT * FROM hr.employees 
WHERE department_id = 50 AND salary > 5000;

7. Combinando: Igualdad y Menor que Muestra los empleados con el puesto 'ST_CLERK' que ganen menos de 2500.
SELECT * FROM hr.employees 
WHERE job_id = 'ST_CLERK' AND salary < 2500;

8. Menor o igual (Comisión) Muestra los empleados cuya comisión (commission_pct) sea menor o igual a 0.2.
SELECT * FROM hr.employees 
WHERE commission_pct <= 0.2;

9. Filtrar IDs bajos Muestra los departamentos (departments) cuyo department_id sea menor a 50.
SELECT * FROM hr.departments 
WHERE department_id < 50;

10. Salario Mínimo en Jobs En la tabla jobs, muestra los puestos donde el salario mínimo (min_salary) sea mayor a 10000.
SELECT * FROM hr.jobs 
WHERE min_salary > 10000;

11. Salario Máximo en Jobs En la tabla jobs, muestra los puestos donde el salario máximo (max_salary) sea menor a 5000.
SELECT * FROM hr.jobs 
WHERE max_salary < 5000;

12. Exclusión por Nombre Muestra todos los empleados excepto aquellos cuyo apellido (last_name) sea 'King'.
SELECT * FROM hr.employees 
WHERE last_name <> 'King';

13. Fechas (Mayor que) Nota: Las fechas funcionan como números. "Mayor" significa "más reciente". Muestra empleados contratados después del 1 de Enero de 2008. (Formato seguro: '01-JAN-08').
SELECT * FROM hr.employees 
WHERE hire_date > '01-JAN-08';

14. Fechas (Menor que) Muestra empleados contratados antes del 1 de Enero de 2003.
SELECT * FROM hr.employees 
WHERE hire_date < '01-JAN-03';

15. Regiones Mayores En la tabla countries, muestra los países cuya region_id sea mayor a 2.
SELECT * FROM hr.countries 
WHERE region_id > 2;

16. Ubicaciones fuera de US En la tabla locations, muestra todas las oficinas que NO estén en 'US'.
SELECT * FROM hr.locations 
WHERE country_id != 'US';

17. Combinación Triple Muestra empleados del departamento 80, que sean 'SA_REP' y ganen más o igual a 10000.
SELECT * FROM hr.employees 
WHERE department_id = 80 AND job_id = 'SA_REP' AND salary >= 10000;

18. Orden alfabético (Mayor) Nota: Las letras también se comparan. C es "mayor" que A. Muestra los empleados cuyo apellido empiece por una letra posterior a la 'W' (ej. Zlotkey).
SELECT last_name FROM hr.employees 
WHERE last_name > 'W';

19. Lógica negativa Muestra los empleados que NO tengan el manager 100.
SELECT * FROM hr.employees 
WHERE manager_id <> 100;

20. Desigualdad con OR Muestra empleados que ganen menos de 2500 O que ganen más de 20000.
SELECT * FROM hr.employees 
WHERE salary < 2500 OR salary > 20000;

-- NULL / NOT NULL-----------------------------------------------------------------
1. Empleados sin Comisión Muestra a los empleados que no tienen un porcentaje de comisión (commission_pct).
SELECT first_name, last_name, commission_pct 
FROM hr.employees 
WHERE commission_pct IS NULL;

2. Empleados con Comisión Muestra a los empleados que sí tienen asignado un porcentaje de comisión.
SELECT first_name, last_name, commission_pct 
FROM hr.employees 
WHERE commission_pct IS NOT NULL;

3. Jefes Superiores Muestra el nombre del empleado que no reporta a ningún gerente (manager_id es nulo).
SELECT first_name, last_name 
FROM hr.employees 
WHERE manager_id IS NULL;

4. Empleados con Jefes Muestra los empleados que sí tienen un gerente asignado.
SELECT first_name, last_name, manager_id 
FROM hr.employees 
WHERE manager_id IS NOT NULL;

5. Combinando (NULL + Igualdad) Muestra a los empleados que no tienen comisión y que trabajan en el departamento 80.
SELECT * FROM hr.employees 
WHERE commission_pct IS NULL AND department_id = 80;

6. Combinando (NULL + Desigualdad) Muestra a los empleados que no tienen comisión y que ganan más de 10000.
SELECT * FROM hr.employees 
WHERE commission_pct IS NULL AND salary > 10000;

7. Nulos en Departamentos (Busca Gerentes) En la tabla departments, el campo manager_id puede ser nulo. Muestra los departamentos que no tienen un gerente asignado actualmente.
SELECT * FROM hr.departments 
WHERE manager_id IS NULL;

8. Nulos y Puestos Muestra a los empleados que tienen el puesto SA_REP y que sí tienen comisión asignada.
SELECT * FROM hr.employees 
WHERE job_id = 'SA_REP' AND commission_pct IS NOT NULL;

9. Nulos y Puestos (Excluyendo) Muestra los empleados que no tienen comisión asignada y que no tienen el puesto IT_PROG.
SELECT * FROM hr.employees 
WHERE commission_pct IS NULL AND job_id <> 'IT_PROG';

10. Comisión Mínima con Nulos Muestra los empleados que tienen comisión asignada y que esta comisión es menor a 0.25.
SELECT * FROM hr.employees 
WHERE commission_pct IS NOT NULL AND commission_pct < 0.25;

11. Fechas y Nulos (Combinado) Muestra a los empleados que fueron contratados antes del 1 de Enero de 2005 y que no tienen gerente.
SELECT * FROM hr.employees 
WHERE hire_date < '01-JAN-05' AND manager_id IS NULL;

12. Todos con Manager y Buen Salario Muestra los empleados que sí tienen un manager_id y cuyo salario es mayor a 15000.
SELECT * FROM hr.employees 
WHERE manager_id IS NOT NULL AND salary > 15000;

13. Nulos en la tabla de Países En la tabla hr.countries, hay un campo llamado state_province. Muestra las ubicaciones (locations) que no tienen un estado/provincia registrado (si aplica en Live SQL). Pista: Intenta hacer la query en hr.locations sobre state_province.
SELECT * FROM hr.locations 
WHERE state_province IS NULL;

14. Lógica de Nulos (Manager 100) Muestra a los empleados cuyo gerente sea el 100 y que no tienen comisión.
SELECT * FROM hr.employees 
WHERE manager_id = 100 AND commission_pct IS NULL;

15. Salario sin Comisión Muestra el nombre, salario y comisión de los empleados cuyo salario es menor o igual a 5000 y que no tienen comisión.
SELECT first_name, salary, commission_pct 
FROM hr.employees 
WHERE salary <= 5000 AND commission_pct IS NULL;

16. Manager no reporta a nadie Muestra los gerentes (manager_id) que aparecen en la tabla de empleados, que no son el gerente principal (es decir, tienen un manager_id asignado a ellos mismos). Pista: Filtra por empleados que tienen un manager_id y además manager_id IS NOT NULL (aunque el segundo es redundante por el primero, es bueno practicar).
SELECT DISTINCT manager_id 
FROM hr.employees 
WHERE manager_id IS NOT NULL;

17. Nulos en Locations (Códigos postales) Muestra las ubicaciones (locations) que no tienen un código postal (postal_code) registrado.
SELECT * FROM hr.locations 
WHERE postal_code IS NULL;

18. Empleados sin Comisión y Puestos Específicos Muestra los empleados que no tienen comisión y cuyo puesto es SA_MAN.
SELECT * FROM hr.employees 
WHERE commission_pct IS NULL AND job_id = 'SA_MAN';

19. Excluyendo un Jefe Muestra todos los empleados que no tienen a 145 como gerente y que no tienen comisión.
SELECT * FROM hr.employees 
WHERE manager_id <> 145 AND commission_pct IS NULL;

20. Nulos, Salario y Rango Muestra a los empleados cuyo salario está entre 5000 y 7000, y que sí tienen comisión.
SELECT * FROM hr.employees 
WHERE salary >= 5000 AND salary <= 7000 AND commission_pct IS NOT NULL;

-- AGGREGATES(IN, NOT IN, BETWEEN)
1. Salarios en Rango Muestra a los empleados cuyo salario está entre 5000 y 7000 (ambos inclusive).
SELECT first_name, salary FROM hr.employees 
WHERE salary BETWEEN 5000 AND 7000;

2. Departamentos Específicos Muestra a los empleados que trabajan en los departamentos 20, 50, o 80. Usa el operador IN.
SELECT * FROM hr.employees 
WHERE department_id IN (20, 50, 80);

3. Fechas en Rango Muestra los empleados contratados entre el 1 de Enero de 2005 y el 31 de Diciembre de 2007.
SELECT * FROM hr.employees 
WHERE hire_date BETWEEN '01-JAN-05' AND '31-DEC-07';

4. Puestos Excluidos Muestra a todos los empleados que NO trabajan en los puestos (job_id) 'IT_PROG', 'SA_MAN', ni 'AD_VP'. Usa NOT IN.
SELECT * FROM hr.employees 
WHERE job_id NOT IN ('IT_PROG', 'SA_MAN', 'AD_VP');

5. Combinando (IN + Desigualdad) Muestra a los empleados que están en los departamentos 100 o 110, y que ganan más de 8000.
SELECT * FROM hr.employees 
WHERE department_id IN (100, 110) AND salary > 8000;

6. Combinando (BETWEEN + Nulos) Muestra los empleados cuyo salario está entre 9000 y 15000, y que no tienen comisión.
SELECT * FROM hr.employees 
WHERE salary BETWEEN 9000 AND 15000 AND commission_pct IS NULL;

7. Puestos de Nivel Bajo Muestra los empleados que están en los puestos de 'ST_MAN', 'ST_CLERK' o 'SH_CLERK'.
SELECT * FROM hr.employees 
WHERE job_id IN ('ST_MAN', 'ST_CLERK', 'SH_CLERK');

8. Rangos de Fechas Excluidos Muestra los empleados que NO fueron contratados entre el 1 de Enero de 2006 y el 31 de Diciembre de 2006.
SELECT * FROM hr.employees 
WHERE hire_date NOT BETWEEN '01-JAN-06' AND '31-DEC-06';

9. Managers Específicos (IN) Muestra los empleados que reportan a los managers con ID 100, 101, o 102.
SELECT * FROM hr.employees 
WHERE manager_id IN (100, 101, 102);

10. Managers Excluidos (NOT IN) Muestra a todos los empleados excepto aquellos que reportan a los managers 100 o 145.
SELECT * FROM hr.employees 
WHERE manager_id NOT IN (100, 145);

11. Salarios Fuera de Rango (usando desigualdad) Muestra a los empleados cuyo salario es menor de 3000 O mayor de 15000.
SELECT * FROM hr.employees 
WHERE salary < 3000 OR salary > 15000;

12. Combinando (NOT IN + Nulos) Muestra los empleados que no están en los departamentos 10, 20 o 30, y que sí tienen comisión.
SELECT * FROM hr.employees 
WHERE department_id NOT IN (10, 20, 30) AND commission_pct IS NOT NULL;

13. Rangos de Comisión Muestra a los empleados cuya comisión está entre 0.1 y 0.3.
SELECT * FROM hr.employees 
WHERE commission_pct BETWEEN 0.1 AND 0.3;

14. Lógica de Países (IN) Muestra las ubicaciones (locations) que están en Canadá, Alemania, o Italia. Usa los country_id ('CA', 'DE', 'IT').
SELECT * FROM hr.locations 
WHERE country_id IN ('CA', 'DE', 'IT');

15. Combinación Compleja (BETWEEN + IN) Muestra los empleados cuyo salario está entre 7000 y 12000, y que trabajan en los departamentos 80 o 90.
SELECT * FROM hr.employees 
WHERE salary BETWEEN 7000 AND 12000 AND department_id IN (80, 90);

16. Excluyendo un Rango de Managers Muestra a todos los empleados cuyos managers tienen un ID menor a 105 O mayor a 120. (Usa OR).
SELECT * FROM hr.employees 
WHERE manager_id < 105 OR manager_id > 120;

17. Ciudades Específicas (IN) Muestra las ubicaciones (locations) que están en las ciudades 'London', 'Toronto', o 'Sydney'.
SELECT * FROM hr.locations 
WHERE city IN ('London', 'Toronto', 'Sydney');

18. Rangos de Fechas con Nulos Muestra a los empleados que fueron contratados entre 2003 y 2005 y que no tienen comisión.
SELECT * FROM hr.employees 
WHERE hire_date BETWEEN '01-JAN-03' AND '31-DEC-05' AND commission_pct IS NULL;

19. Rangos en la tabla Jobs En la tabla jobs, muestra los puestos donde el salario máximo (max_salary) está entre 10000 y 15000.
SELECT * FROM hr.jobs 
WHERE max_salary BETWEEN 10000 AND 15000;

20. Excluyendo Salarios y Comisión Muestra los empleados cuyo salario NO está entre 3000 y 8000, y que sí tienen comisión.
SELECT * FROM hr.employees 
WHERE salary NOT BETWEEN 3000 AND 8000 AND commission_pct IS NOT NULL;

-- LIKE, ORDER BY, DISTINCT, FETCH -------------------------------------------
1. Patrón Básico y Orden (LIKE + ORDER BY) Muestra los empleados cuyo nombre empieza con 'A'. Ordénalos por su apellido alfabéticamente.
SELECT * FROM hr.employees
WHERE first_name LIKE 'A%'
ORDER BY last_name;

2. Exclusión de Patrón y Rango (NOT LIKE + BETWEEN) Muestra los empleados cuyo puesto (job_id) NO empieza con 'SA'. Además, su salario debe estar entre 5000 y 10000.
SELECT * FROM hr.employees
WHERE job_id NOT LIKE 'SA%' AND salary BETWEEN 5000 AND 10000;

3. Nulos y Ordenamiento (IS NULL + ORDER DESC) Muestra los empleados que no tienen comisión. Ordena los resultados por salario de mayor a menor (los que más ganan arriba).
SELECT * FROM hr.employees
WHERE commission_pct IS NULL
ORDER BY salary DESC;

4. Lista Específica y Patrón (IN + LIKE) Muestra los empleados que trabajan en los departamentos 50 u 80, y cuyo nombre contiene la letra 'e'.
SELECT * FROM hr.employees
WHERE department_id IN (50, 80) AND first_name LIKE '%e%';

5. El "Top 5" de los Pobres (FETCH + Orden Ascendente) Muestra los 5 empleados con el salario más bajo de toda la empresa. (Ordena por salario ASC y limita a 5).
SELECT * FROM hr.employees
ORDER BY salary ASC
FETCH FIRST 5 ROWS ONLY;

6. Combinación Compleja (NOT IN + IS NOT NULL + ORDER) Muestra los empleados que NO son 'IT_PROG' ni 'ST_CLERK', y que sí tienen comisión. Ordénalos por porcentaje de comisión.
SELECT * FROM hr.employees
WHERE job_id NOT IN ('IT_PROG', 'ST_CLERK') AND commission_pct IS NOT NULL
ORDER BY commission_pct;

7. Distintos con Filtro (DISTINCT + LIKE) Muestra los códigos de puesto (job_id) únicos que empiezan por 'ST'.
SELECT DISTINCT job_id
FROM hr.employees
WHERE job_id LIKE 'ST%';

8. Rango de Fechas y Orden (BETWEEN + ORDER BY) Muestra los empleados contratados entre 2004 y 2005. Ordénalos por fecha de contratación, del más antiguo al más reciente.
SELECT * FROM hr.employees
WHERE hire_date BETWEEN '01-JAN-04' AND '31-DEC-05'
ORDER BY hire_date;

9. Patrón Exacto (Guiones bajos) y Salario (LIKE + Inequality) Muestra los empleados cuyo nombre tiene exactamente 5 letras y ganan más de 3000.
SELECT * FROM hr.employees
WHERE first_name LIKE '_____' AND salary > 3000;

10. Top 3 de un Departamento (WHERE + FETCH) Muestra a los 3 empleados que más ganan, pero solo del departamento 60.
SELECT * FROM hr.employees
WHERE department_id = 60
ORDER BY salary DESC
FETCH FIRST 3 ROWS ONLY;

11. Exclusión Compleja (NOT LIKE + OR) Muestra los empleados cuyo apellido NO termina en 'n' O cuyo salario es mayor a 10000. (Cuidado con la lógica, pide OR).
SELECT * FROM hr.employees
WHERE last_name NOT LIKE '%n' OR salary > 10000;

12. Nulos al Final (NULLS LAST) Muestra nombre y comisión. Ordena por comisión de forma ascendente, pero fuerza a que los nulos salgan al final de la lista.
SELECT first_name, commission_pct
FROM hr.employees
ORDER BY commission_pct ASC NULLS LAST;

13. Patrón de Fecha (LIKE con fechas) Muestra los empleados contratados en el mes de Enero (JAN) de cualquier año. Usa LIKE. Nota: Asumiendo formato DD-MON-RR.
SELECT * FROM hr.employees
WHERE hire_date LIKE '%JAN%';

14. Salarios Altos sin Gerente (IS NULL + Comparación + FETCH) Muestra los 10 primeros empleados que no tienen gerente (manager_id nulo) ordenados por salario descendente. (Nota: En HR solo hay 1 sin manager, pero la query debe estar preparada para mostrar hasta 10).
SELECT * FROM hr.employees
WHERE manager_id IS NULL
ORDER BY salary DESC
FETCH FIRST 10 ROWS ONLY;

15. Paginación (OFFSET + FETCH) Ordena a todos los empleados por employee_id. Salta los primeros 10 y muestra los siguientes 5.
SELECT * FROM hr.employees
ORDER BY employee_id
OFFSET 10 ROWS FETCH NEXT 5 ROWS ONLY;

16. Lógica Negativa Múltiple (NOT IN + NOT LIKE) Muestra los empleados que no trabajan en los departamentos 80, 90 ni 100, y cuyo nombre no empieza con 'K'.
SELECT * FROM hr.employees
WHERE department_id NOT IN (80, 90, 100) AND first_name NOT LIKE 'K%';

17. Filtro en Alias (ORDER BY Alias) Calcula el salario semestral (salary * 6) con alias "Semestral". Filtra solo a los del departamento 50. Ordena el resultado por el alias "Semestral" de mayor a menor.
SELECT first_name, salary * 6 AS "Semestral"
FROM hr.employees
WHERE department_id = 50
ORDER BY "Semestral" DESC;

18. Ciudades Específicas (Locations + IN + LIKE) En la tabla locations, muestra las oficinas que están en 'US' o 'CA' (country_id), y cuya ciudad empieza por 'S'.
SELECT * FROM hr.locations
WHERE country_id IN ('US', 'CA') AND city LIKE 'S%';

19. Rango Salarial Excluyente y Orden (NOT BETWEEN + ORDER) Muestra los empleados cuyo salario NO está entre 2500 y 15000. Ordena por apellido.
SELECT * FROM hr.employees
WHERE salary NOT BETWEEN 2500 AND 15000
ORDER BY last_name;

20. El Gran Final (LIKE, IS NOT NULL, AND, OR, FETCH) Muestra los empleados que (tienen comisión Y ganan menos de 10000) O (cuyo nombre empieza por 'Z'). Muestra solo los primeros 5 resultados encontrados.
SELECT * FROM hr.employees
WHERE (commission_pct IS NOT NULL AND salary < 10000) OR first_name LIKE 'Z%'
FETCH FIRST 5 ROWS ONLY;


-- INNER JOIN -----------------------------------------------------

SELECT e.FIRST_NAME, d.DEPARTMENT_ID 
FROM HR.EMPLOYEES e 
INNER JOIN HR.DEPARTMENTS d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY d.DEPARMENT_NAME;

-- 1
SELECT e.FIRST_NAME, d.DEPARTMENT_NAME 
FROM HR.EMPLOYEES e 
JOIN HR.DEPARTMENTS d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY d.DEPARTMENT_NAME;

-- 2
SELECT e.FIRST_NAME, e.LAST_NAME, d.DEPARTMENT_NAME, d.DEPARTMENT_ID 
FROM HR.EMPLOYEES e 
JOIN HR.DEPARTMENTS d ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
WHERE e.DEPARTMENT_ID = 90;

-- 3
SELECT e.first_name, d.department_name, l.city
FROM hr.employees e
JOIN hr.departments d ON e.department_id = d.department_id
JOIN hr.locations l ON d.location_id = l.location_id;

--4 
SELECT e.first_name, j.job_title
FROM hr.employees e
JOIN hr.jobs j ON e.job_id = j.job_id
WHERE e.salary > 10000;

-- 5
SELECT e.last_name, d.department_name
FROM hr.employees e
JOIN hr.departments d ON e.department_id = d.department_id
WHERE d.department_name IN ('Marketing', 'Sales');

-- 6
SELECT e.first_name, d.department_name
FROM hr.employees e
JOIN hr.departments d ON e.department_id = d.department_id
WHERE e.hire_date BETWEEN '01-JAN-05' AND '31-DEC-06';

--7 
SELECT e.first_name, l.city
FROM hr.employees e
JOIN hr.departments d ON e.department_id = d.department_id
JOIN hr.locations l ON d.location_id = l.location_id
WHERE l.city LIKE 'S%';

--8 
SELECT e.first_name, j.job_title
FROM hr.employees e
JOIN hr.jobs j ON e.job_id = j.job_id
WHERE j.job_title NOT IN ('Programmer', 'Stock Clerk');

-- 9
SELECT e.first_name, j.job_title, e.salary
FROM hr.employees e
JOIN hr.jobs j ON e.job_id = j.job_id
ORDER BY e.salary DESC
FETCH FIRST 5 ROWS ONLY;

-- 10 
SELECT e.last_name, d.department_name, e.salary * 12 AS "Anual"
FROM hr.employees e
JOIN hr.departments d ON e.department_id = d.department_id
ORDER BY "Anual" DESC;

-- 11
SELECT DISTINCT d.department_name
FROM hr.employees e
JOIN hr.departments d ON e.department_id = d.department_id
WHERE e.salary > 15000;

-- 12
SELECT e.last_name, d.department_name, e.salary
FROM hr.employees e
JOIN hr.departments d ON e.department_id = d.department_id
WHERE d.department_name = 'Executive' 
   OR (d.department_name = 'IT' AND e.salary > 6000);

-- 13
SELECT e.first_name, d.department_name, e.commission_pct
FROM hr.employees e
JOIN hr.departments d ON e.department_id = d.department_id
WHERE e.commission_pct IS NULL;

-- 14
SELECT e.first_name, l.city, c.country_name
FROM hr.employees e
JOIN hr.departments d ON e.department_id = d.department_id
JOIN hr.locations l ON d.location_id = l.location_id
JOIN hr.countries c ON l.country_id = c.country_id;

-- 15
SELECT e.last_name, d.department_name
FROM hr.employees e
JOIN hr.departments d ON e.department_id = d.department_id
ORDER BY e.last_name
OFFSET 10 ROWS FETCH NEXT 10 ROWS ONLY;

-- 16
SELECT d.department_name, l.street_address
FROM hr.departments d
JOIN hr.locations l ON d.location_id = l.location_id
WHERE l.street_address NOT LIKE '%Drive%';

-- 17
SELECT SUBSTR(e.first_name, 1, 1) AS "Inicial", d.department_name
FROM hr.employees e
JOIN hr.departments d ON e.department_id = d.department_id;

-- 18 
SELECT e.first_name, r.region_name
FROM hr.employees e
JOIN hr.departments d ON e.department_id = d.department_id
JOIN hr.locations l ON d.location_id = l.location_id
JOIN hr.countries c ON l.country_id = c.country_id
JOIN hr.regions r ON c.region_id = r.region_id;

-- 19 
SELECT e.first_name AS "Empleado", jefe.first_name AS "Jefe"
FROM hr.employees e
JOIN hr.employees jefe ON e.manager_id = jefe.employee_id; -- ESTE NECESITO QUE ME LO EXPLOQUES BIEN, NO LO ENTENDI, TUVE QUE VER TU QUERY

-- 20
SELECT e.LAST_NAME, j.JOB_TITLE, l.CITY 
FROM HR.EMPLOYEES e 
JOIN HR.JOBS j on j.JOB_ID =  e.JOB_ID
JOIN HR.DEPARTMENTS d ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
JOIN HR.LOCATIONS l ON l.LOCATION_ID = d.LOCATION_ID
WHERE SALARY > 5000 AND l.CITY != 'Seattle'
ORDER BY l.CITY ASC, e.SALARY DESC
FETCH FIRST 10 ROWS ONLY;

-- OUTER JOINS--------------------------------------------------------------------------
-- 1
SELECT e.FIRST_NAME, d.DEPARTMENT_NAME 
FROM HR.EMPLOYEES e 
LEFT JOIN HR.DEPARTMENTS d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID;

-- 2
SELECT d.DEPARTMENT_NAME, e.LAST_NAME 
FROM HR.DEPARTMENTS d
LEFT JOIN HR.EMPLOYEES e ON d.DEPARTMENT_ID =  e.DEPARTMENT_ID
ORDER BY e.LAST_NAME NULLS FIRST; -- COLOQUE EL ORDER Y NULLS FISRT PARA DETECTAR LOS HUECOS MAS RAPIDOS

-- 3
SELECT d.DEPARTMENT_NAME, e.LAST_NAME 
FROM HR.DEPARTMENTS d
LEFT JOIN HR.EMPLOYEES e ON d.DEPARTMENT_ID =  e.DEPARTMENT_ID
WHERE e.LAST_NAME IS NULL
ORDER BY e.LAST_NAME NULLS FIRST; -- COLOQUE LAST_NAME EN VEZ DE DEPARMENT_NAME YA QE NO HAY VACIOS EN DEPARMENT_NAME

-- 4
SELECT e.FIRST_NAME AS "Employee", Boss.FIRST_NAME AS "Boss"
FROM HR.EMPLOYEES e 
LEFT JOIN HR.EMPLOYEES Boss ON e.MANAGER_ID = boss.EMPLOYEE_ID;

-- 5
SELECT l.CITY, d.DEPARTMENT_NAME 
FROM HR.LOCATIONS l 
LEFT JOIN HR.DEPARTMENTS d ON d.LOCATION_ID = l.LOCATION_ID
WHERE d.DEPARTMENT_NAME IS NULL; -- AQUI AGREGUE ESTO A LA QUERY PARA SOLO VER LAS CIUDADES FANTASMAS REQUERRIDAS, NO SE SI ESTE BIEN

-- 6
SELECT e.FIRST_NAME, d.DEPARTMENT_NAME 
FROM HR.DEPARTMENTS d
RIGHT JOIN HR.EMPLOYEES e ON d.DEPARTMENT_ID = e.DEPARTMENT_ID ; -- AQUI ME DA EL MISMO RESULTADO QUE EL EJERCICIO 1? ESTA BIEN ASI?

-- 7
SELECT d.DEPARTMENT_NAME, e.LAST_NAME AS "Manager"
FROM HR.EMPLOYEES e
RIGHT JOIN HR.DEPARTMENTS d ON d.DEPARTMENT_ID = e.EMPLOYEE_ID;

-- 8 
SELECT e.LAST_NAME, d.DEPARTMENT_NAME 
FROM HR.EMPLOYEES e
FULL OUTER JOIN HR.DEPARTMENTS d ON d.DEPARTMENT_ID = e.DEPARTMENT_ID;

-- 9 
SELECT e.LAST_NAME, d.DEPARTMENT_NAME 
FROM HR.EMPLOYEES e
FULL OUTER JOIN HR.DEPARTMENTS d ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
WHERE e.LAST_NAME IS NULL OR d.DEPARTMENT_NAME IS NULL;

-- 10 
SELECT e.FIRST_NAME, j.JOB_TITLE, e.SALARY 
FROM HR.EMPLOYEES e
LEFT JOIN HR.JOBS j ON j.JOB_ID = e.JOB_ID
WHERE e.SALARY > 5000;

-- 11
SELECT j.JOB_TITLE, e.FIRST_NAME 
FROM HR.JOBS j 
LEFT JOIN HR.EMPLOYEES e ON e.JOB_ID = j.JOB_ID
WHERE e.EMPLOYEE_ID IS NULL; -- CREO QUE AQUI SI PONGO WHERE FIRST_NAME IS NILL NO ME SALEN NINGUNO PORQUE NO HAYNNULOS.

-- 12 
SELECT c.COUNTRY_NAME, l.CITY 
FROM HR.COUNTRIES c
LEFT JOIN HR.LOCATIONS l ON l.COUNTRY_ID = c.COUNTRY_ID
WHERE l.LOCATION_ID IS NULL;

-- 13
SELECT d.DEPARTMENT_NAME, l.CITY, c.COUNTRY_NAME
FROM HR.DEPARTMENTS d 
LEFT JOIN HR.LOCATIONS l ON l.LOCATION_ID =  d.LOCATION_ID
LEFT JOIN HR.COUNTRIES c ON c.COUNTRY_ID = l.COUNTRY_ID;

-- 14
SELECT e.FIRST_NAME, e.LAST_NAME, d.DEPARTMENT_NAME
FROM HR.EMPLOYEES e
LEFT JOIN HR.DEPARTMENTS d ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
WHERE e.LAST_NAME LIKE 'G%';

-- 15
SELECT e.FIRST_NAME, e.LAST_NAME, d.DEPARTMENT_NAME 
FROM HR.DEPARTMENTS d
LEFT JOIN HR.EMPLOYEES e ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
ORDER BY e.LAST_NAME NULLS FIRST;

-- 16
SELECT d.DEPARTMENT_NAME, e.LAST_NAME
FROM HR.DEPARTMENTS d
LEFT JOIN HR.EMPLOYEES e ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY d.DEPARTMENT_NAME ASC 
OFFSET 10 ROWS FETCH NEXT 10 ROWS ONLY;

-- 17
SELECT DISTINCT j.JOB_ID
FROM HR.JOBS j
LEFT JOIN HR.EMPLOYEES e ON e.JOB_ID = j.JOB_ID
WHERE e.EMPLOYEE_ID IS NULL;

-- 18
SELECT r.REGION_NAME
FROM HR.REGIONS r
LEFT JOIN HR.COUNTRIES c ON c.REGION_ID =  r.REGION_ID
WHERE c.COUNTRY_ID IS NULL;

-- 19
SELECT d.DEPARTMENT_NAME, e.LAST_NAME AS "Manager_Department", L.city
FROM HR.DEPARTMENTS d
LEFT JOIN HR.EMPLOYEES e ON e.DEPARTMENT_ID =  d.DEPARTMENT_ID
LEFT JOIN HR.LOCATIONS l ON l.LOCATION_ID = d.LOCATION_ID
ORDER BY d.DEPARTMENT_ID; -- AGREGUE EL ORDER BY POR MI CUENTA

-- 20
SELECT e.LAST_NAME, d.DEPARTMENT_NAME, e.SALARY, d.LOCATION_ID
FROM HR.EMPLOYEES e
FULL OUTER JOIN HR.DEPARTMENTS d ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
WHERE e.SALARY > 10000 OR d.LOCATION_ID = 1700
ORDER BY e.SALARY DESC NULLS LAST
FETCH NEXT 20 ROWS ONLY; -- AGREGUE LOCATION AL SELECT PARA SABER LOS DE 1700

-- GROUP BY, HAVING(FUNCIONES AGREGADASS)
-- 1
SELECT SUM(SALARY) 
FROM HR.EMPLOYEES;

-- 2
SELECT COUNT(EMPLOYEE_ID)
FROM HR.EMPLOYEES;

-- 3
SELECT MIN(SALARY) AS Min_Salary, MAX(SALARY) AS Max_Salary
FROM HR.EMPLOYEES;

-- 4
SELECT AVG(SALARY) AS Average_Salary
FROM HR.EMPLOYEES;

-- 5
SELECT MAX(HIRE_DATE) 
FROM HR.EMPLOYEES;

-- 6
SELECT DEPARTMENT_ID, COUNT(*)
FROM HR.EMPLOYEES
GROUP BY DEPARTMENT_ID;

-- 7
SELECT JOB_ID, AVG(SALARY)
FROM HR.EMPLOYEES
GROUP BY JOB_ID;

-- 8
SELECT MANAGER_ID, SUM(SALARY)
FROM HR.EMPLOYEES
GROUP BY MANAGER_ID;

-- 9
SELECT DEPARTMENT_ID, MIN(SALARY), MAX(SALARY)
FROM HR.EMPLOYEES
GROUP BY DEPARTMENT_ID
ORDER BY DEPARTMENT_ID;

-- 10
SELECT AVG(COMMISSION_PCT), DEPARTMENT_ID
FROM HR.EMPLOYEES
GROUP BY DEPARTMENT_ID;

-- 11
SELECT DEPARTMENT_ID, COUNT(*) AS Number_Of_Employees
FROM HR.EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING COUNT(*) > 5;

-- 12
SELECT JOB_ID, MAX(SALARY) AS Max_Salary
FROM HR.EMPLOYEES 
GROUP BY JOB_ID
HAVING MAX(SALARY) >= 10000
ORDER BY Max_Salary;

-- 13
SELECT MANAGER_ID, COUNT(*) AS PEOPLE_HE_MANAGES
FROM HR.EMPLOYEES
GROUP BY MANAGER_ID
HAVING COUNT(*) > 5
ORDER BY COUNT(*);

-- 14
SELECT MANAGER_ID, SUM(SALARY) AS Total_Salary_By_Departmeny
FROM HR.EMPLOYEES
GROUP BY MANAGER_ID
HAVING SUM(SALARY) > 50000
ORDER BY SUM(SALARY) DESC;

-- 15
SELECT d.DEPARTMENT_NAME, COUNT(e.DEPARTMENT_ID) AS NUMBER_OF_EMPLOYEES FROM HR.EMPLOYEES e 
JOIN HR.DEPARTMENTS d ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
GROUP BY d.DEPARTMENT_NAME;

-- 16
SELECT L.CITY, AVG(e.SALARY) AS Salary_Average
FROM HR.EMPLOYEES e
JOIN HR.DEPARTMENTS d ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
JOIN HR.LOCATIONS l ON l.LOCATION_ID = d.LOCATION_ID
GROUP BY l.CITY;

-- 17
SELECT j.JOB_TITLE, COUNT(e.EMPLOYEE_ID)
FROM HR.EMPLOYEES e 
JOIN HR.JOBS j ON j.JOB_ID = e.JOB_ID
WHERE e.SALARY > 5000
GROUP BY j.JOB_TITLE;

-- 18
SELECT j.JOB_TITLE, COUNT(*)
FROM HR.EMPLOYEES e
JOIN HR.JOBS j ON j.JOB_ID = e.JOB_ID
GROUP BY j.JOB_TITLE
HAVING COUNT(*) = 1;

-- 19
SELECT COUNT(*) AS Total_Employees, COUNT(COMMISSION_PCT) AS Total_With_Commision
FROM HR.EMPLOYEES
WHERE DEPARTMENT_ID = 80;

-- 20
SELECT d.DEPARTMENT_NAME, AVG(e.SALARY) 
FROM HR.EMPLOYEES e 
JOIN HR.DEPARTMENTS d ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
WHERE e.HIRE_DATE > '01-JAN-2000'
GROUP BY d.DEPARTMENT_NAME
HAVING AVG(e.SALARY) > 5000
ORDER BY AVG(e.SALARY) DESC;

-- EXTRA
SELECT DEPARTMENT_ID, SUM(SALARY)
FROM HR.EMPLOYEES
WHERE JOB_ID != 'TEMP'      -- 1. WHERE: Elimina a los empleados temporales (INDIVIDUAL)
GROUP BY DEPARTMENT_ID      -- 2. GROUP BY: Agrupa a los que quedaron por departamento
HAVING SUM(SALARY)> 50000;  -- 3. HAVING: Elimina los departamentos que no suman 50k (GRUPO)
