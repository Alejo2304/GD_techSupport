
#departamento
from pydantic import BaseModel
from datetime import datetime

class CiudadModelo(BaseModel):
    idCiudad: str
    idDepartamento: str
    nombre: str
    Activo: bool
    Actualiza: datetime