
#departamento
from pydantic import BaseModel
from datetime import datetime

class DepartamentoModelo(BaseModel):
    idDepartamento: str
    idPais: str
    nombre: str
    Activo: bool
    Actualiza: datetime