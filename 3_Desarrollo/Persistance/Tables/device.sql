CREATE TABLE device (
    idDevice CHAR(36) PRIMARY KEY,
    idClient CHAR(36),
    branch VARCHAR(255),
    model VARCHAR(255),
    color VARCHAR(255),
    detail VARCHAR(255),
    Activo BIT DEFAULT b'1',
    Actualiza DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (idClient) REFERENCES client(idClient)
);
