CREATE TABLE TipoEmpleado (
    idTipoEmpleado CHAR(36) PRIMARY KEY,
    cargo VARCHAR(255),
    descripcion VARCHAR(255),
    Activo BIT DEFAULT b'1',
    Actualiza DATETIME DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (descripcion);
