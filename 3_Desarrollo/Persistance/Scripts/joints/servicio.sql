SELECT 	
		JSON_ARRAYAGG(
			JSON_OBJECT(
			'IdDispositivo', dispositivo.idDispositivo,
            'IdUsuario', usuario.idUsuario,
            'NombreUsuario', usuario.nombre,
            'idTipoDispositivo', tipoDispositivo.idTipoDispositivo,
            'NombreTipoDispositivo', tipoDispositivo.nombre,
            'MarcaDispositivo', dispositivo.marca,
            'ModeloDispositivo', dispositivo.modelo,
            'ColorDispositivo', dispositivo.color,
            'IdDiagnostico', diagnostico.idDiagnostico,
            'DescripcionDiagnostico', diagnostico.descripcion,
            'IdEstadoDiagnostico', EstadoDiagnostico.idEstadoDiagnostico,
            'EstadoDiagnostico', EstadoDiagnostico.descripcion,
            'IdDetalleDiagnostico', detalleDiagnostico.idDetalleDiagnostico,
            'ObservacionDetalleDiagnostico', detalleDiagnostico.observaciones,
            'FechaDetalleDiagnostico', detalleDiagnostico.fechaDiagnostico,
            'FechaInicioDiagnostico', diagnostico.fechaInicio,
            'FechaFinDiagnostico', diagnostico.fechaFin,
            'IdEmpleadoDiagnostico', empleado.idEmpleado,
            'NombreEmpleadoDiagnostico', empleado.nombre
			)
		)
FROM dispositivo
	INNER JOIN tipoDispositivo
		ON dispositivo.idTipoDispositivo = tipoDispositivo.idTipoDispositivo
	INNER JOIN diagnostico
		ON dispositivo.idDispositivo = diagnostico.idDispositivo
    INNER JOIN usuario
        ON dispositivo.idUsuario = usuario.idUsuario
    INNER JOIN EstadoDiagnostico
        ON diagnostico.idEstadoDiagnostico = EstadoDiagnostico.idEstadoDiagnostico
    INNER JOIN detalleDiagnostico
        ON diagnostico.idDiagnostico = detalleDiagnostico.idDiagnostico
    INNER JOIN empleado
        ON diagnostico.idEmpleado = empleado.idEmpleado;