
#departamento
from pydantic import BaseModel
from datetime import datetime

class TipogeneroModelo(BaseModel):
    idTipoGenero: str
    Nombre: str
    Activo: bool
    Actualiza: datetime