
#departamento
from pydantic import BaseModel
from datetime import datetime

class FacturaModelo(BaseModel):
    idFactura: str
    idUsuario: str
    idEstadoFactura: str
    fecha: datetime
    Activo: bool
    Actualiza: datetime