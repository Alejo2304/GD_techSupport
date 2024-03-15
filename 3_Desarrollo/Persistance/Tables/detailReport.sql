CREATE TABLE detailReport (
    idDetail CHAR(36) PRIMARY KEY,
    idReport CHAR(36),
    idServices CHAR(36),
    Activo BIT DEFAULT b'1',
    Actualiza DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (idReport) REFERENCES report(idReport),
    FOREIGN KEY (idServices) REFERENCES service(idService)
);