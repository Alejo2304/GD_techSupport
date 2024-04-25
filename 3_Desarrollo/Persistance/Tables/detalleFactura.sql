CREATE TABLE detalleFactura (
    idDetalleFactura CHAR(36) PRIMARY KEY,
    idFactura CHAR(36),
    idDiagnostico CHAR(36),
    descripcion VARCHAR(255),
    subtotal Decimal(12,2),
    Activo BIT DEFAULT b'1',
    Actualiza DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (idFactura) REFERENCES factura(idFactura),
    FOREIGN KEY (idDiagnostico) REFERENCES diagnostico(idDiagnostico)
);