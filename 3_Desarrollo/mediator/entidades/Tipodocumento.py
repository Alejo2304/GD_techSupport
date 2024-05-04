
#departamento
from pydantic import BaseModel
from datetime import datetime

class TipodocumentoModelo(BaseModel):
    idTipoDocumento: str
    Nombre: str
    Activo: bool
    Actualiza: datetime