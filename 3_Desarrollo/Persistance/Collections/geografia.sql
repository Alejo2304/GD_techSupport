SELECT 	
		JSON_ARRAYAGG(
			JSON_OBJECT(
			'IdPais', pais.idPais,	
			'NombrePais', pais.nombre,
			'IdDepartamento', departamento.idDepartamento,
			'NombreDepartamento', departamento.nombre,
			'IdCiudad', ciudad.idCiudad,
			'NombreCiudad', ciudad.nombre
			)
		)
FROM pais
	INNER JOIN departamento
		ON pais.idpais = departamento.idpais
	INNER JOIN ciudad
		ON departamento.idDepartamento = ciudad.idDepartamento;