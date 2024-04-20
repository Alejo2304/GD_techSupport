CREATE TABLE usuario (
    idUsuario CHAR(36) PRIMARY KEY,
    idTipoUsuario CHAR(36),
    idTipoGenero CHAR(36),
    idDispositivo CHAR(36),
    idTipoDocumento CHAR(36),
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    telefono VARCHAR(20),
    email VARCHAR(100),
    Activo BIT DEFAULT b'1',
    Actualiza DATETIME DEFAULT CURRENT_TIMESTAMP
);