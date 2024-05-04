
#departamento
from pydantic import BaseModel
from datetime import datetime

class DiagnosticoModelo(BaseModel):
    idDiagnostico: str
    idDispositivo: str
    idEmpleado: str
    idEstadoDiagnostico: str
    descripcion: str
    fechaInicio: datetime
    fechaFin: datetime
    activo: bool
    actualiza: datetime