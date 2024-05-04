
#departamento
from pydantic import BaseModel
from datetime import datetime

class UsuarioModelo(BaseModel):
    idUsuario: str
    idTipoUsuario: str
    idTipoGenero: str
    idTipoDocumento: str
    nombre: str
    apellido: str
    telefono: str
    email: str
    Activo: bool
    Actualiza: datetime
    numeroDocumento: str