
#departamento
from pydantic import BaseModel
from datetime import datetime

class EmpresaModelo(BaseModel):
    idEmpresa: str
    nombre: str
    Activo: bool
    Actualiza: datetime