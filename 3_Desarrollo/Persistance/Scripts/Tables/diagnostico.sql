CREATE TABLE diagnostico (
    idDiagnostico CHAR(36) PRIMARY KEY,
    idDispositivo CHAR(36),
    idEmpleado CHAR(36),
    idEstadoDiagnostico CHAR(36),
    descripcion VARCHAR(255),
    fechaInicio DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    fechaFin DATETIME,
    activo BIT DEFAULT b'1',
    actualiza DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (idDispositivo) REFERENCES dispositivo(idDispositivo),
    FOREIGN KEY (idEmpleado) REFERENCES empleado(idEmpleado),
    FOREIGN KEY (idEstadoDiagnostico) REFERENCES estadoDiagnostico(idEstadoDiagnostico)
);