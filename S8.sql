
SELECT cod_mecanico, pnombre || ' ' || apaterno  AS nombre_mecanico,
sueldo AS salario, monto_impuestos AS impuesto_actual, 
monto_impuestos * 0.80 AS impuesto_rebajado,
sueldo - monto_impuestos * 0.80 AS sueldo_con_rebaja_impuestos
FROM mecanico
WHERE bono_jefatura IS NULL AND monto_impuestos <= 40000
ORDER BY monto_impuestos DESC, pnombre ASC