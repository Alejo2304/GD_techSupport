CREATE TABLE employee (
    idEmployee CHAR(36),
    idBranch CHAR(36),
    typeEmployee VARCHAR(255),
    firstName VARCHAR(255),
    lastName VARCHAR(255),
    phone VARCHAR(255),
    email VARCHAR(255),
    Activo BIT DEFAULT b'1',
    Actualiza DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (idBranch) REFERENCES branchCompany(idBranch)
);