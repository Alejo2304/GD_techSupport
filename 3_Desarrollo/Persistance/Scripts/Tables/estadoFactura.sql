CREATE TABLE estadoFactura (
    idEstadoFactura CHAR(36) PRIMARY KEY,
    estado VARCHAR(255),
    Activo BIT DEFAULT b'1',
    Actualiza DATETIME DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (estado)
);