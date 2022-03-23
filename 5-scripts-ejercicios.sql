/*
Ejercicio 5: Implemente una consulta que permita obtener el listado de citas 
para un paciente determinado en un rango de fechas establecido. 
Asuma convenientemente los cambios a nivel de filtro y los campos a mostrar.
*/

SELECT C.COD_CONSULTA, U.NOMBRES, U.APELLIDOS, D.COD_DOCTOR, C.FECHA_PROGRAMADA_CONSULTA, S.COD_SEDE
FROM CONSULTA_MEDICA C, USUARIO U, PACIENTE P, DOCTOR D, SEDE S
WHERE C.COD_PACIENTE = P.COD_PACIENTE
AND P.COD_PACIENTE = U.COD_USUARIO
AND C.COD_DOCTOR = D.COD_DOCTOR
AND C.COD_SEDE = S.COD_SEDE
AND FECHA_PROGRAMADA_CONSULTA BETWEEN '2019-03-22' AND '2022-03-22';



/*
Ejercicio 6: Implemente una consulta que permita mostrar la cantidad 
de citas por doctor durante el año 2020. Muestre también la especialidad a 
la que pertenece el doctor y considere solamente a aquellos doctores que tuvieron 
3 citas o más durante el año.
*/

SELECT COUNT(*), U.NOMBRES, U.APELLIDOS, D.COD_ESPECIALIDAD_DOCTOR
FROM CONSULTA_MEDICA C, USUARIO U, DOCTOR D, ESPECIALIDAD E
WHERE C.COD_DOCTOR = D.COD_DOCTOR
AND D.COD_DOCTOR = U.COD_USUARIO
AND D.COD_ESPECIALIDAD_DOCTOR = E.COD_ESPECIALIDAD
AND EXTRACT(YEAR FROM FECHA_PROGRAMADA_CONSULTA) = 2020
GROUP BY (U.NOMBRES, U.APELLIDOS, D.COD_ESPECIALIDAD_DOCTOR)
HAVING COUNT(*)>3;



/*
Ejercicio 7: Implemente una consulta que permita obtener un ranking por especialidad 
tomando en cuenta la cantidad de citas médicas atendidas. 
Considere las citas registradas desde el mes de enero de 2017.
*/


SELECT E.NOMBRE_ESPECIALIDAD, COUNT(*)
FROM ESPECIALIDAD E, DOCTOR D, CONSULTA_MEDICA C
WHERE E.COD_ESPECIALIDAD = D.COD_ESPECIALIDAD_DOCTOR
AND D.COD_DOCTOR = C.COD_DOCTOR
AND FECHA_PROGRAMADA_CONSULTA >= '2017-01-01'
GROUP BY (E.NOMBRE_ESPECIALIDAD);



/*
Ejercicio 8: Implemente una consulta que muestre, por cada médico, 
el porcentaje de “slots” o espacios de disponibilidad que ha utilizado 
el médico para citas en la última semana. Por ejemplo, si el doctor solo 
atiende los miércoles, con un espacio para 4 citas y tuvo 2 pacientes, 
se tendrá un 50% de espacios utilizados.
*/
































