CREATE TABLE client (
    idClient CHAR(36) PRIMARY KEY,
    typeID INT,
    typeClient VARCHAR(50),
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    phone VARCHAR(20),
    email VARCHAR(100),
    Activo BIT DEFAULT b'1',
    Actualiza DATETIME DEFAULT CURRENT_TIMESTAMP
);