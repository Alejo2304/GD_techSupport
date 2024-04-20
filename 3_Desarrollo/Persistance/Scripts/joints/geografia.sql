SELECT 	
		JSON_ARRAYAGG(
			JSON_OBJECT(
			'IdPais', country.id,
			'NombrePais', country.name,
			'IdDepartamento', state.IdState,
			'NombreDepartamento', state.name,
			'IdCiudad', City.IdCity,
			'NombreCiudad', City.name 
			)
		)
FROM country
	INNER JOIN state
		ON country.id = state.idCountry
	INNER JOIN city
		ON state.idState = city.idState;