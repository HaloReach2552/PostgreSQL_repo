--#1
SELECT * FROM platzi.alumnos
WHERE id IN (
    SELECT id
    FROM platzi.alumnos
    WHERE id IN (5)
);

SELECT * FROM platzi.alumnos
WHERE colegiatura = 5000
ORDER BY tutor_id DESC;

--#2

SELECT * FROM platzi.alumnos
WHERE colegiatura = (
    SELECT DISTINCT colegiatura
    FROM platzi.alumnos
    ORDER BY colegiatura DESC
    LIMIT 1 OFFSET 1
) LIMIT 1;

--#3
SELECT * 
FROM platzi.alumnos AS datos_alumnos
INNER JOIN (
    SELECT DISTINCT colegiatura
    FROM platzi.alumnos
    WHERE tutor_id > 20
    ORDER BY colegiatura DESC
    LIMIT 1 OFFSET 1
) AS cole_uni
ON datos_alumnos.colegiatura = cole_uni.colegiatura;