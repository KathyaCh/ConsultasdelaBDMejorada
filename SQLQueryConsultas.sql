//Consultas//

//1.- 

SELECT id_cliente, fecha
FROM factura
WHERE fecha BETWEEN '2021-01-01' AND '2021-12-31'


2.-

SELECT id_cliente, fecha
FROM factura
WHERE fecha > '2021-12-31' AND fecha < '2023-05-26'


3.-

SELECT id_cliente, fecha 
FROM factura
WHERE fecha BETWEEN '2021-12-01' AND '2021-12-31'


4.-

SELECT id_factura, id_cliente
FROM factura 
WHERE id_cliente = '2' 

SELECT cliente.nombre, cliente.apellido, cliente.id_cliente, factura.id_factura, factura.fecha
FROM cliente INNER JOIN factura ON factura.id_cliente   = '2' AND cliente.nombre = 'Valentina Anastasia' AND cliente.apellido =  'Huerta Corral'


5.-

SELECT cliente.nombre, cliente. apellido, cliente.id_cliente, factura.id_factura, factura.fecha
FROM cliente INNER JOIN factura ON factura.id_cliente like '17' AND cliente.nombre like 'Zayra Manuela' AND cliente.apellido like 'Gómez López'


6.- 

SELECT cliente.nombre, cliente.apellido, cliente.id_cliente, factura.id_factura, factura.fecha 
FROM cliente INNER JOIN factura ON factura.id_cliente like '24' AND cliente.nombre like 'Dante Eduardo' AND cliente.apellido like 'Dolores Meza'


7.-

SELECT cliente.nombre, cliente.apellido, cliente.id_cliente, factura.id_factura, factura.fecha 
FROM cliente INNER JOIN factura ON factura.id_cliente like '4' AND cliente.nombre like 'Ana Maribel' AND cliente.apellido like 'Cedillo Núñez'


8.-

SELECT cliente.nombre, cliente.apellido, cliente.id_cliente, factura.id_factura, factura.fecha 
FROM cliente INNER JOIN factura ON factura.id_cliente like '11' AND cliente.nombre like 'Rodrigo Ismael' AND cliente.apellido like 'Silva Ugarte'

9.-

SELECT id_producto, cantidad, precio
FROM detalle
WHERE cantidad = (SELECT MAX (cantidad) FROM detalle);


10.-

SELECT nombre, stock 
FROM producto
WHERE stock = (SELECT MAX (stock) FROM producto);

11.-

SELECT id_factura, id_cliente, fecha
FROM factura
ORDER BY fecha ASC

12.-

SELECT nombre, apellido
FROM cliente 
ORDER BY nombre ASC

13.-

SELECT id_producto, nombre, id_categoria 
FROM producto 
WHERE id_categoria = '2'

SELECT id_producto, nombre, id_categoria 
FROM producto 
WHERE id_categoria = '3'

SELECT id_producto, nombre, id_categoria 
FROM producto 
WHERE id_categoria = '7'

SELECT id_producto, nombre, id_categoria 
FROM producto 
WHERE id_categoria = '6'


SELECT id_producto, nombre, id_categoria 
FROM producto 
WHERE id_categoria = '10'



14.-

SELECT Nombre_Sucursal, Encargado 
FROM Sucursal 

15.-

SELECT empleado.Nombre_Empleado, empleado.id_sucursal, sucursal.Nombre_Sucursal
FROM Empleado INNER JOIN Sucursal ON Nombre_Sucursal  = 'Akiras Boutique:Constitucion' AND empleado.id_Sucursal = '700'

16.-

SELECT *
FROM cliente
WHERE fec_nac <= '1993-05-28'


