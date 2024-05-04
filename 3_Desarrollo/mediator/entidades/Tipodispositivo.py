
#departamento
from pydantic import BaseModel
from datetime import datetime

class TipodispositivoModelo(BaseModel):
    idTipoDispositivo: str
    Nombre: str
    descripcion: str
    Activo: bool
    Actualiza: datetime