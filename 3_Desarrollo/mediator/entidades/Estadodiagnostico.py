
#departamento
from pydantic import BaseModel
from datetime import datetime

class EstadodiagnosticoModelo(BaseModel):
    idEstadoDiagnostico: str
    descripcion: str
    Activo: bool
    Actualiza: datetime