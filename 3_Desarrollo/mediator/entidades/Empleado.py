
#departamento
from pydantic import BaseModel
from datetime import datetime

class EmpleadoModelo(BaseModel):
    idEmpleado: str
    idSede: str
    idTipoEmpleado: str
    nombre: str
    apellido: str
    celular: str
    email: str
    Activo: bool
    Actualiza: datetime
    fecha_ingreso: datetime