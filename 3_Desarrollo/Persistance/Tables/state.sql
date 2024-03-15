CREATE TABLE state (
    idState CHAR(36) PRIMARY KEY,
    idCountry CHAR(36),
    name VARCHAR(255),
    Activo BIT DEFAULT b'1',
    Actualiza DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (idCountry) REFERENCES country(idCountry)
);