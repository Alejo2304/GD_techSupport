CREATE TABLE detalleDiagnostico (
    idDetalleDiagnostico CHAR(36) PRIMARY KEY,
    idDiagnostico CHAR(36),
    observaciones VARCHAR(255),
    fechaDiagnostico DATE NOT NULL DEFAULT CURRENT_TIMESTAMP,
    Activo BIT DEFAULT b'1',
    Actualiza DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (idDiagnostico) REFERENCES diagnostico(idDiagnostico)
);