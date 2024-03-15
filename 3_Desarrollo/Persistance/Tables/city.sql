CREATE TABLE city (
    idCity CHAR(36) PRIMARY KEY,
    idState CHAR(36),
    name VARCHAR(255),
    Activo BIT DEFAULT b'1',
    Actualiza DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (idState) REFERENCES state(idState)
);