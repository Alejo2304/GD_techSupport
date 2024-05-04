
#departamento
from pydantic import BaseModel
from datetime import datetime

class PaisModelo(BaseModel):
    idPais: str
    nombre: str
    Activo: bool
    Actualiza: datetime