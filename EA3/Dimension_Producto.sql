SELECT [ID_producto]
      ,[nombre]
      ,[Categoria]
	  ,CP.Desc_Categoria
	  ,CP.descripcion_texto
      ,[dimensiones]
      ,[proveedor]
      ,[descripcion]
      ,[cantidad_en_stock]
      ,[precio_venta]
      ,[precio_proveedor]
  FROM [STAGING_V2].[dbo].[Producto_ST]
  LEFT JOIN [STAGING_V2].[dbo].[CategoriaProducto_ST] CP ON CP.Id_Categoria=Categoria