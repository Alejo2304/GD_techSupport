CREATE TABLE empleado (
    idEmpleado CHAR(36) PRIMARY KEY,
    idSede CHAR(36),
    idTipoEmpleado VARCHAR(255),
    nombre VARCHAR(255),
    apellido VARCHAR(255),
    celular VARCHAR(255),
    email VARCHAR(255),
    fecha_ingreso TIMESTAMP default CURRENT_TIMESTAMP,
    Activo BIT DEFAULT b'1',
    Actualiza DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (idSede) REFERENCES sede(idSede),
    FOREIGN KEY (idTipoEmpleado) REFERENCES tipoEmpleado(idTipoEmpleado)
);