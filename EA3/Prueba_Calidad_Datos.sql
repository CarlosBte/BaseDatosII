  --Verificar si existen registros duplos, Debe de existir un registro por cada ID---
  Select
  ID_cliente,
  COUNT(ID_cliente)
  FROM [STAGING_V2].[dbo].[Dim_Cliente]
  Group by ID_cliente
  HAVING COUNT(ID_cliente)>1
  ----------------------------------
  Select
  ID_empleado,
  COUNT(ID_empleado)
  FROM [STAGING_V2].[dbo].[Dim_Empleado]
  Group by ID_empleado
  HAVING COUNT(ID_empleado)>1

  ----------------------------
  Select
  ID_producto,
  COUNT(ID_producto)
  FROM [STAGING_V2].[dbo].[Dim_Producto]
  Group by ID_producto
  HAVING COUNT(ID_producto)>1

  -------------------------------
  Select
  ID_Tiempo,
  COUNT(ID_Tiempo)
  FROM [STAGING_V2].[dbo].[Dim_Tiempo_ST]
  Group by ID_Tiempo
  HAVING COUNT(ID_Tiempo)>1

  ----------------Verificar las relaciones entre tablas (Integridad Referencial)--------------------------
  SELECT mv.ID_cliente
FROM dbo.DIM_Movimiento_Ventas mv
LEFT JOIN dbo.Dim_Cliente cl ON mv.ID_cliente = cl.ID_cliente
WHERE cl.ID_cliente IS NULL;
------------------------------------
SELECT mv.ID_producto
FROM dbo.DIM_Movimiento_Ventas mv
LEFT JOIN dbo.Dim_Producto pr ON mv.ID_producto = pr.ID_producto
WHERE pr.ID_producto IS NULL;
---------------------------------------
SELECT mv.ID_empleado_rep_ventas
FROM dbo.DIM_Movimiento_Ventas mv
LEFT JOIN dbo.Dim_Empleado emp ON mv.ID_empleado_rep_ventas = emp.ID_empleado
WHERE emp.ID_empleado IS NULL;



