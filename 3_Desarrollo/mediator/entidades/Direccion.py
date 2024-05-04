
#departamento
from pydantic import BaseModel
from datetime import datetime

class DireccionModelo(BaseModel):
    idDireccion: str
    idCiudad: str
    direccion: str
    zipCode: str
    Activo: bool
    Actualiza: datetime