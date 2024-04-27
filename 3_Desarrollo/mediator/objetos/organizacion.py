#organizacion
from pydantic import BaseModel
from bson import ObjectId

class OrganizacionModelo(BaseModel):
    _id:ObjectId()
    idEmpresa: str
    idSede: str
    idDireccionSede: str
    idCiudadSede: str
    idEmpleado: str
    idTipoEmpleado: str
    nombreEmpresa: str
    nombreSede: str
    emailSede: str
    nombreCiudad: str
    direccionSede: str
    codigoPostal: str
    nombreEmpleado: str
    apellidoEmpleado: str
    celularEmpleado: str
    emailEmpleado: str
    fechaIngreso: str
    nombreTipoEmpleado: str
    descripcionTipoEmpleado: str

    def organizacion_helper(organizacion):
        return {
            "id": str(organizacion['_id']),
            "idempresa": str(organizacion['IdEmpresa']),
            "idsede": str(organizacion['IdSede']),
            "iddireccionsede": str(organizacion['IdDireccionSede']),
            "idciudadsede": str(organizacion['IdCiudadSede']),
            "idempleado": str(organizacion['IdEmpleado']),
            "idtipoempleado": str(organizacion['IdTipoEmpleado']),
            "nombreempresa": str(organizacion['NombreEmpresa']),
            "nombresede": str(organizacion['NombreSede']),
            "emailsede": str(organizacion['EmailSede']),
            "nombreciudad": str(organizacion['NombreCiudad']),
            "direccionsede": str(organizacion['DireccionSede']),
            "codigopostal": str(organizacion['CodigoPostal']),
            "nombreempleado": str(organizacion['NombreEmpleado']),
            "apellidoempleado": str(organizacion['ApellidoEmpleado']),
            "celularempleado": str(organizacion['CelularEmpleado']),
            "emailempleado": str(organizacion['EmailEmpleado']),
            "fechaingreso": str(organizacion['FechaIngreso']),
            "nombretipoempleado": str(organizacion['NombreTipoEmpleado']),
            "descripciontipoempleado": str(organizacion['DescripcionTipoEmpleado']),
        }