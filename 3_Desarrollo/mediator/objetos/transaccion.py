#transaccion
from pydantic import BaseModel
from bson import ObjectId

class TransaccionModelo(BaseModel):
    _id:ObjectId()
    IdFactura: str
    IdEstadoFactura: str
    IdDetalleFactura: str
    IdDiagnostico: str
    IdUsuario: str
    NombreUsuario: str
    ApellidoUsuario: str
    DocumentoUsuario: str
    EstadoFactura: str
    DetalleFactura: str
    SubtotalFactura: str
    DescripcionDiagnostico: str
    
    def transaccion_helper(transaccion):
        return {
            "id": str(transaccion['_id']),
            "IdFactura": str(transaccion['IdFactura']),
            "IdEstadoFactura": str(transaccion['IdEstadoFactura']),
            "IdDetalleFactura": str(transaccion['IdDetalleFactura']),
            "IdDiagnostico": str(transaccion['IdDiagnostico']),
            "IdUsuario": str(transaccion['IdUsuario']),
            "NombreUsuario": str(transaccion['NombreUsuario']),
            "ApellidoUsuario": str(transaccion['ApellidoUsuario']),
            "DocumentoUsuario": str(transaccion['DocumentoUsuario']),
            "EstadoFactura": str(transaccion['EstadoFactura']),
            "DetalleFactura": str(transaccion['DetalleFactura']),
            "SubtotalFactura": str(transaccion['SubtotalFactura']),
            "DescripcionDiagnostico": str(transaccion['DescripcionDiagnostico']),
        }