CREATE TABLE service (
    idService CHAR(36),
    typeService VARCHAR(255),
    description VARCHAR(255),
    Activo BIT DEFAULT b'1',
    Actualiza DATETIME DEFAULT CURRENT_TIMESTAMP
);