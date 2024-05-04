
#departamento
from pydantic import BaseModel
from datetime import datetime

class EstadofacturaModelo(BaseModel):
    idEstadoFactura: str
    estado: str
    Activo: bool
    Actualiza: datetime