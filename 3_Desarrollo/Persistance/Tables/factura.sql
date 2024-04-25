CREATE TABLE factura (
    idFactura CHAR(36) PRIMARY KEY,
    idUsuario CHAR(36), 
    idEstadoFactura CHAR(36),
    fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
    Activo BIT DEFAULT b'1',
    Actualiza DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario),
    FOREIGN KEY (idEstadoFactura) REFERENCES estadoFactura(idEstadoFactura)
);