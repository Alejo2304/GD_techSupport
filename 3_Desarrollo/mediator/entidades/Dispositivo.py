
#departamento
from pydantic import BaseModel
from datetime import datetime

class DispositivoModelo(BaseModel):
    idDispositivo: str
    idUsuario: str
    idTipoDispositivo: str
    marca: str
    modelo: str
    color: str
    Activo: bool
    Actualiza: datetime