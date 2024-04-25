CREATE TABLE dispositivo (
    idDispositivo CHAR(36) PRIMARY KEY,
    idUsuario CHAR(36),
    idTipoDispositivo CHAR(36),
    marca VARCHAR(255),
    modelo VARCHAR(255),
    color VARCHAR(255),
    Activo BIT DEFAULT b'1',
    Actualiza DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario),
    FOREIGN KEY (idTipoDispositivo) REFERENCES tipoDispositivo(idTipoDispositivo)
);
