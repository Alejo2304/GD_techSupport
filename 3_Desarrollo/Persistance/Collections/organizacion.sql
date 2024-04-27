SELECT 	
		JSON_ARRAYAGG(
			JSON_OBJECT(
			'IdEmpresa', empresa.idEmpresa,	
			'NombreEmpresa', empresa.nombre,
			'IdSede', sede.IdSede,
			'NombreSede', sede.nombre,
            'EmailSede', sede.email,
            'IdDireccionSede', direccion.idDireccion,
            'IdCiudadSede', direccion.idCiudad,
            'NombreCiudad', ciudad.nombre,
            'DireccionSede', direccion.direccion,
			'CodigoPostal', direccion.zipcode,
            'IdEmpleado', empleado.idEmpleado,
            'NombreEmpleado', empleado.nombre,
            'IdTipoEmpleado', tipoEmpleado.idTipoEmpleado,
            'NombreTipoEmpleado', tipoEmpleado.cargo,
            'DescripcionTipoEmpleado', tipoEmpleado.descripcion,
            'NombreEmpleado', empleado.nombre,
            'ApellidoEmpleado', empleado.apellido,
            'CelularEmpleado', empleado.celular,
            'EmailEmpleado', empleado.email,
            'FechaIngreso', empleado.fecha_Ingreso
			)
		)
FROM (((empresa
	INNER JOIN sede
		ON empresa.idEmpresa = sede.idEmpresa)
	INNER JOIN direccion
		ON sede.idDireccion = direccion.idDireccion)
    INNER JOIN empleado
        ON sede.idSede = empleado.idSede)
    INNER JOIN tipoEmpleado
        ON empleado.idTipoEmpleado = tipoEmpleado.idTipoEmpleado
    INNER JOIN ciudad
        ON direccion.idCiudad = ciudad.idCiudad;