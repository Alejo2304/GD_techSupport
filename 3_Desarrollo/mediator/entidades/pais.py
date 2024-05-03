#pais

from pydantic import BaseModel
from datetime import datetime

class PaisModelo(BaseModel):
    id_pais: int
    nombre: str
    activo: bool
    actualiza: datetime
