
#departamento
from pydantic import BaseModel
from datetime import datetime

class DetallefacturaModelo(BaseModel):
    idDetalleFactura: str
    idFactura: str
    idDiagnostico: str
    descripcion: str
    subtotal: float
    Activo: bool
    Actualiza: datetime