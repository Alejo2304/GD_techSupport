CREATE TABLE locationBranch (
    idBranch CHAR(36) NOT NULL,
    idCity CHAR(36) NOT NULL,
    address VARCHAR(255),
    zipcode VARCHAR(10),
    Activo BIT DEFAULT b'1',
    Actualiza DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (idBranch, idCity)
);