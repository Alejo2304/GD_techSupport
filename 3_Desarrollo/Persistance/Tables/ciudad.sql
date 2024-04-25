CREATE TABLE ciudad (
    idCiudad CHAR(36) PRIMARY KEY,
    idDepartamento CHAR(36),
    nombre VARCHAR(255),
    Activo BIT DEFAULT b'1',
    Actualiza DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (idDepartamento) REFERENCES departamento(idDepartamento)
);