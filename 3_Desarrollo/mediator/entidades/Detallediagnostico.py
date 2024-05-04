
#departamento
from pydantic import BaseModel
from datetime import datetime

class DetallediagnosticoModelo(BaseModel):
    idDetalleDiagnostico: str
    idDiagnostico: str
    observaciones: str
    fechaDiagnostico: datetime
    Activo: bool
    Actualiza: datetime