SELECT 	
		JSON_ARRAYAGG(
			JSON_OBJECT(
			'IdUsuario', usuario.idUsuario,
            'IdTipoUsuario', tipoUsuario.idTipoUsuario,
            'NombreTipoUsuario', tipoUsuario.nombre,
            'DescripcionTipoUsuario', tipoUsuario.descripcion,
            'IdTipoDocumento', tipoDocumento.idTipoDocumento,
            'TipoDocumento', tipoDocumento.nombre,
            'NumeroDocumento', usuario.numeroDocumento,
            'IdTipoGenero', tipoGenero.idTipoGenero,
            'GeneroUsuario', tipoGenero.nombre,
            'NombreUsuario', usuario.nombre,
            'ApellidoUsuario', usuario.apellido,
            'EmailUsuario', usuario.email,
            'TelefonoUsuario', usuario.telefono
			)
		)
FROM usuario
	INNER JOIN tipoUsuario
		ON tipoUsuario.idTipoUsuario = usuario.idTipoUsuario
    INNER JOIN tipoDocumento
        ON usuario.idTipoDocumento = tipoDocumento.idTipoDocumento
    INNER JOIN tipoGenero
        ON usuario.idTipoGenero = tipoGenero.idTipoGenero;