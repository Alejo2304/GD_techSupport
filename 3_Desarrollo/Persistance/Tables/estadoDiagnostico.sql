CREATE TABLE estadoDiagnostico (
    idEstadoDiagnostico CHAR(36) PRIMARY KEY,
    descripcion VARCHAR(255),
    Activo BIT DEFAULT b'1',
    Actualiza DATETIME DEFAULT CURRENT_TIMESTAMP
);