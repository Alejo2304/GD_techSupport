CREATE TABLE city (
    idCity INT PRIMARY KEY,
    idState INT,
    name VARCHAR(255),
    Activo BIT DEFAULT b'1',
    Actualiza DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (idState) REFERENCES state(idState)
);