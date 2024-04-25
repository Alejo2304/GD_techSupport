CREATE TABLE empresa (
    idEmpresa CHAR(36) PRIMARY KEY,
    nombre VARCHAR(255),
    Activo BIT DEFAULT b'1',
    Actualiza DATETIME DEFAULT CURRENT_TIMESTAMP
);
