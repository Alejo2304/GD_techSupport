CREATE TABLE tipoDispositivo (
    idTipoDispositivo CHAR(36) PRIMARY KEY,
    Nombre VARCHAR(255),
    Descripción VARCHAR(255),
    Activo BIT DEFAULT b'1',
    Actualiza DATETIME DEFAULT CURRENT_TIMESTAMP
);