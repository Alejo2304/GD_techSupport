CREATE TABLE sede (
    idSede CHAR(36) PRIMARY KEY,
    idEmpresa CHAR(36),
    idDireccion CHAR(36),
    nombre VARCHAR(255),
    email VARCHAR(255),
    Activo BIT DEFAULT b'1',
    Actualiza DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (idEmpresa) REFERENCES empresa(idEmpresa),
    FOREIGN KEY (idDireccion) REFERENCES direccion(idDireccion)
);