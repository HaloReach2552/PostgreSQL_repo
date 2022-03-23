
SELECT * FROM pagos;


SELECT * FROM pagos
OFFSET (
    SELECT COUNT(*)/2
    FROM pagos
);


SELECT COUNT(*) FROM pagos;

SELECT * FROM clientes
WHERE cliente_id IN (1,15,30,45);

SELECT * FROM clientes
WHERE cliente_id IN (
    SELECT cliente_id
    FROM clientes
    WHERE direccion_id >19 AND cliente_id IN (16,17,18,19)
);


SELECT * FROM clientes
WHERE cliente_id NOT IN (
    SELECT cliente_id
    FROM clientes
    WHERE direccion_id >19 AND cliente_id IN (16,17,18,19)
);


SELECT * FROM paises
WHERE pais IN (
    SELECT pais
    FROM paises
    WHERE pais = 'Argentina'
);

SELECT * FROM peliculas
WHERE anio_publicacion  IN(
    SELECT anio_publicacion 
    FROM peliculas
    WHERE anio_publicacion = 2006
);
