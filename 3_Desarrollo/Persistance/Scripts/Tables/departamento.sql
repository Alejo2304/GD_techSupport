CREATE TABLE departamento (
    idDepartamento CHAR(36) PRIMARY KEY,
    idPais CHAR(36),
    nombre VARCHAR(255),
    Activo BIT DEFAULT b'1',
    Actualiza DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (idPais) REFERENCES pais(idPais)
);