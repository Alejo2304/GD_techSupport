
#departamento
from pydantic import BaseModel
from datetime import datetime

class TipousuarioModelo(BaseModel):
    idTipoUsuario: str
    nombre: str
    descripcion: str
    Activo: bool
    Actualiza: datetime