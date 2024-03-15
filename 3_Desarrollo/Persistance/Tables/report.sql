CREATE TABLE report (
    idReport CHAR(36) PRIMARY KEY,
    idDevice CHAR(36),
    idEmployee CHAR(36),
    startDate DATE,
    finishDate DATE,
    status INT,
    activo BIT DEFAULT b'1',
    actualiza DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (idDevice) REFERENCES device(idDevice),
    FOREIGN KEY (idEmployee) REFERENCES employee(idEmployee)
);