#servicio
from pydantic import BaseModel
from bson import ObjectId

class ServicioModelo(BaseModel):
    _id:ObjectId()
    IdUsuario: str
    IdDispositivo: str
    IdTipoDispositivo: str
    IdDiagnostico: str
    IdEstadoDiagnostico: str
    IdDetalleDiagnostico: str
    IdEmpleadoDiagnostico: str
    NombreUsuario: str
    NombreTipoDispositivo: str
    MarcaDispositivo: str
    ModeloDispositivo: str
    ColorDispositivo: str
    DescripcionDiagnostico: str
    EstadoDiagnostico: str
    ObservacionDetalleDiagnostico: str
    FechaDetalleDiagnostico: str
    FechaInicioDiagnostico: str
    FechaFinDiagnostico: str
    NombreEmpleadoDiagnostico: str
    
    def servicio_helper(servicio):
        return {
            "id": str(servicio['_id']),
            "IdUsuario": str(servicio['IdUsuario']),
            "IdDispositivo": str(servicio['IdDispositivo']),
            "IdTipoDispositivo": str(servicio['IdTipoDispositivo']),
            "IdDiagnostico": str(servicio['IdDiagnostico']),
            "IdEstadoDiagnostico": str(servicio['IdEstadoDiagnostico']),
            "IdDetalleDiagnostico": str(servicio['IdDetalleDiagnostico']),
            "IdEmpleadoDiagnostico": str(servicio['IdEmpleadoDiagnostico']),
            "NombreUsuario": str(servicio['NombreUsuario']),
            "NombreTipoDispositivo": str(servicio['NombreTipoDispositivo']),
            "MarcaDispositivo": str(servicio['MarcaDispositivo']),
            "ModeloDispositivo": str(servicio['ModeloDispositivo']),
            "ColorDispositivo": str(servicio['ColorDispositivo']),
            "DescripcionDiagnostico": str(servicio['DescripcionDiagnostico']),
            "EstadoDiagnostico": str(servicio['EstadoDiagnostico']),
            "ObservacionDetalleDiagnostico": str(servicio['ObservacionDetalleDiagnostico']),
            "FechaDetalleDiagnostico": str(servicio['FechaDetalleDiagnostico']),
            "FechaInicioDiagnostico": str(servicio['FechaInicioDiagnostico']),
            "FechaFinDiagnostico": str(servicio['FechaFinDiagnostico']),
            "NombreEmpleadoDiagnostico": str(servicio['NombreEmpleadoDiagnostico']),           
        }