CREATE TABLE direccion (
    idDireccion CHAR(36) PRIMARY KEY,
    idCiudad CHAR(36),
    direccion VARCHAR(255),
    zipCode VARCHAR(15),
    Activo BIT DEFAULT b'1',
    Actualiza DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (idCiudad) REFERENCES ciudad(idCiudad)
);