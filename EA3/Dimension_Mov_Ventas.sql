SELECT TS.ID_pedido
	  ,TS.ID_producto
	  ,TS.ID_cliente
	  ,C.ID_empleado_rep_ventas
      ,TS.fecha_pedido
      ,TS.fecha_esperada
      ,TS.fecha_entrega
      ,TS.cantidad
      ,TS.precio_unidad
	  ,(TS.cantidad*TS.precio_unidad) Total_Venta
      ,TS.estado
      ,TS.comentarios    
  FROM [STAGING_V2].[dbo].[Transacciones_ST] TS
  LEFT JOIN [STAGING_V2].[dbo].[Cliente_ST] C ON C.ID_cliente= TS.ID_cliente