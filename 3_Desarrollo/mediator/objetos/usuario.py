#usuario
from pydantic import BaseModel
from bson import ObjectId

class UsuarioModelo(BaseModel):
    _id:ObjectId()
    IdUsuario: str
    IdTipoUsuario: str
    IdTipoDocumento: str
    IdTipoGenero: str
    NombreUsuario: str
    ApellidoUsuario: str
    EmailUsuario: str
    TelefonoUsuario: str
    TipoDocumento: str
    NumeroDocumento: str
    NombreTipoUsuario: str
    DescripcionTipoUsuario: str
    GeneroUsuario: str

    def usuario_helper(usuario):
        return {
            "id": str(usuario['_id']),
            "IdUsuario": str(usuario['IdUsuario']),
            "IdTipoUsuario": str(usuario['IdTipoUsuario']),
            "IdTipoDocumento": str(usuario['IdTipoDocumento']),
            "IdTipoGenero": str(usuario['IdTipoGenero']),
            "NombreUsuario": str(usuario['NombreUsuario']),
            "ApellidoUsuario": str(usuario['ApellidoUsuario']),
            "EmailUsuario": str(usuario['EmailUsuario']),
            "TelefonoUsuario": str(usuario['TelefonoUsuario']),
            "TipoDocumento": str(usuario['TipoDocumento']),
            "NumeroDocumento": str(usuario['NumeroDocumento']),
            "NombreTipoUsuario": str(usuario['NombreTipoUsuario']),
            "DescripcionTipoUsuario": str(usuario['DescripcionTipoUsuario']),
            "GeneroUsuario": str(usuario['GeneroUsuario']),

        }