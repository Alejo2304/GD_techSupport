
#departamento
from pydantic import BaseModel
from datetime import datetime

class SedeModelo(BaseModel):
    idSede: str
    idEmpresa: str
    idDireccion: str
    nombre: str
    email: str
    Activo: bool
    Actualiza: datetime