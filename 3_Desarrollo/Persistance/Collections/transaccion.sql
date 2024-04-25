SELECT 	
		JSON_ARRAYAGG(
			JSON_OBJECT(
			'IdFactura', factura.idFactura,
            'IdUsuario', usuario.idUsuario,
            'NombreUsuario', usuario.nombre,
            'ApellidoUsuario', usuario.apellido,
            'DocumentoUsuario', usuario.numeroDocumento,
            'IdEstadpFactura', estadoFactura.idEstadoFactura,
            'EstadoFactura', estadoFactura.estado,
            'IdDetalleFactura', detalleFactura.idDetalleFactura,
            'IdDiagnostico', diagnostico.idDiagnostico,
            'DescripcionDiagnostico', diagnostico.descripcion,
            'DetalleFactura', detalleFactura.descripcion,
            'SubtotalFactura', detalleFactura.subtotal
			)
		)
FROM factura
	INNER JOIN estadoFactura
		ON factura.idEstadoFactura = estadoFactura.idEstadoFactura
    INNER JOIN detalleFactura
        ON factura.idFactura = detalleFactura.idFactura
    INNER JOIN usuario
        ON factura.idUsuario = usuario.idUsuario
    INNER JOIN diagnostico
        ON detalleFactura.idDiagnostico = diagnostico.idDiagnostico;