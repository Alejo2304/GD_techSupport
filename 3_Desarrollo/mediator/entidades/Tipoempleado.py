
#departamento
from pydantic import BaseModel
from datetime import datetime

class TipoempleadoModelo(BaseModel):
    idTipoEmpleado: str
    cargo: str
    descripcion: str
    Activo: bool
    Actualiza: datetime