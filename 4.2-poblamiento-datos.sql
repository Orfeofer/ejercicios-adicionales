COPY TELEFONO FROM 'C:\Users\Fernandez\Desktop\Ejercicios-adicionales\Carga-de-datos\telefono.csv' CSV HEADER;
COPY USUARIO FROM 'C:\Users\Fernandez\Desktop\Ejercicios-adicionales\Carga-de-datos\usuario.csv' CSV HEADER;
COPY JORNADA_LABORAL FROM 'C:\Users\Fernandez\Desktop\Ejercicios-adicionales\Carga-de-datos\jornada_laboral.csv' CSV HEADER;
insert into jornada_laboral values('1', '08:00 AM', '05:00 PM');
COPY EMPLEADO FROM 'C:\Users\Fernandez\Desktop\Ejercicios-adicionales\Carga-de-datos\empleado.csv' CSV HEADER;
COPY PREGRADO FROM 'C:\Users\Fernandez\Desktop\Ejercicios-adicionales\Carga-de-datos\pregrado.csv' CSV HEADER;
COPY POSTGRADO FROM 'C:\Users\Fernandez\Desktop\Ejercicios-adicionales\Carga-de-datos\postgrado.csv' CSV HEADER;
COPY ESTUDIO_SUPERIOR FROM 'C:\Users\Fernandez\Desktop\Ejercicios-adicionales\Carga-de-datos\estudio_superior.csv' CSV HEADER;
