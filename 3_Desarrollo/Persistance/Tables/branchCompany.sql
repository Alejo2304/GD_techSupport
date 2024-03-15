CREATE TABLE branchCompany (
    idBranch CHAR(36),
    idCompany CHAR(36),
    name VARCHAR(255),
    email VARCHAR(255),
    Activo BIT DEFAULT b'1',
    Actualiza DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (idCompany) REFERENCES company(idCompany)
);