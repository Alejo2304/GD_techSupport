# mediadorobjetoentidad:
#IMPORT LIBRARIES
from fastapi import FastAPI
import mysql.connector
import pymongo

#IMPORT MODELS
from objetos.geografia import GeografiaModelo
from objetos.organizacion import OrganizacionModelo
from objetos.servicio import ServicioModelo
from objetos.transaccion import TransaccionModelo
from objetos.usuario import UsuarioModelo

#IMPORT ENTITIES
from entidades.Pais import PaisModelo
from entidades.Departamento import DepartamentoModelo
from entidades.Ciudad import CiudadModelo
from entidades.Detallediagnostico import DetallediagnosticoModelo
from entidades.Detallefactura import DetallefacturaModelo
from entidades.Diagnostico import DiagnosticoModelo
from entidades.Direccion import DireccionModelo
from entidades.Dispositivo import DispositivoModelo
from entidades.Empleado import EmpleadoModelo
from entidades.Empresa import EmpresaModelo
from entidades.Estadodiagnostico import EstadodiagnosticoModelo
from entidades.Estadofactura import EstadofacturaModelo
from entidades.Factura import FacturaModelo
from entidades.Sede import SedeModelo
from entidades.Tipodispositivo import TipodispositivoModelo
from entidades.Tipodocumento import TipodocumentoModelo
from entidades.Tipoempleado import TipoempleadoModelo
from entidades.Tipogenero import TipogeneroModelo
from entidades.Tipousuario import TipousuarioModelo
from entidades.Usuario import UsuarioModelo as UsuarioModeloEntidad


#IMPORT CREDENTIALS DB
from credenciales import *


app: FastAPI = FastAPI(
title="Mediador Objetos y Entidades",
description="USBGD202401"
)

#######################################################

# Objetos:

# -----GEOGRAFIA-----
@app.post(
    "/consultargeografia",
    response_model=list,
    summary="Consultar Objeto Geografía",
    description="Consultar un objeto de tipo Geografía",
    tags=["Colecciones"]
)

async def consultar_geografia(geografiamodelo: GeografiaModelo) -> list:
    connection_string = strConnection
    results = []	
    client = pymongo.MongoClient(connection_string)
    try:
        db = client["dba_tech_support"]
        col = db["geografia"]
        result = col.find()
        for item in list(result):
            results.append(GeografiaModelo.geografia_helper(item))
    except Exception as ex:
        raise ValueError(ex)
    finally:
        client.close()
    return results

# -----ORGANIZACION-----
@app.post(
    "/consultarorganizacion",
    response_model=list,
    summary="Consultar Objeto Organizacion",
    description="Consultar un objeto de tipo Organizacion",
    tags=["Colecciones"]
)


async def consultar_organizacion(organizacionmodelo: OrganizacionModelo) -> list:
    connection_string = strConnection
    results = []	
    client = pymongo.MongoClient(connection_string)
    try:
        db = client["dba_tech_support"]
        col = db["organizacion"]
        result = col.find()
        for item in list(result):
            results.append(OrganizacionModelo.organizacion_helper(item))
    except Exception as ex:
        raise ValueError(ex)
    finally:
        client.close()
    return results

# -----SERVICIO-----
@app.post(
    "/consultarservicio",
    response_model=list,
    summary="Consultar Objeto Servicio",
    description="Consultar un objeto de tipo Servicio",
    tags=["Colecciones"]
)


async def consultar_servicio(serviciomodelo: ServicioModelo) -> list:
    connection_string = strConnection
    results = []	
    client = pymongo.MongoClient(connection_string)
    try:
        db = client["dba_tech_support"]
        col = db["servicio"]
        result = col.find()
        for item in list(result):
            results.append(ServicioModelo.servicio_helper(item))
    except Exception as ex:
        raise ValueError(ex)
    finally:
        client.close()
    return results

#-----TRANSACCION-----
@app.post(
    "/consultartransaccion",
    response_model=list,
    summary="Consultar Objeto Transaccion",
    description="Consultar un objeto de tipo Transaccion",
    tags=["Colecciones"]
)


async def consultar_transaccion(transaccionmodelo: TransaccionModelo) -> list:
    connection_string = strConnection
    results = []	
    client = pymongo.MongoClient(connection_string)
    try:
        db = client["dba_tech_support"]
        col = db["transaccion"]
        result = col.find()
        for item in list(result):
            results.append(TransaccionModelo.transaccion_helper(item))
    except Exception as ex:
        raise ValueError(ex)
    finally:
        client.close()
    return results

#-----USUARIO-----
@app.post(
    "/consultarusuarioColeccion",
    response_model=list,
    summary="Consultar Objeto Usario",
    description="Consultar un objeto de tipo Usuario",
    tags=["Colecciones"]
)


async def consultar_coleccion_usuario(usuariomodelo: UsuarioModelo) -> list:
    connection_string = strConnection
    results = []	
    client = pymongo.MongoClient(connection_string)
    try:
        db = client["dba_tech_support"]
        col = db["usuario"]
        result = col.find()
        for item in list(result):
            results.append(UsuarioModelo.usuario_helper(item))
    except Exception as ex:
        raise ValueError(ex)
    finally:
        client.close()
    return results
#######################################################

# Entidades:


# -----Ciudad-----

@app.post(
    "/consultarciudad",
    response_model=list,
    summary="Consultar Ciudad",
    description="Consultar Entidad Ciudad",
    tags=["Entidades"]
)
async def consultar_ciudad(ciudadmodelo: CiudadModelo) -> list:
    results = []
    db = mysql.connector.connect(
        host=host,
        user=user,
        password=password,
        database=database
    )
    try:
        cursor = db.cursor()
        cursor.callproc("readciudad")
        for item in list(cursor.stored_results()):
            results = item.fetchall()
        db.commit()
        cursor.close()
    except Exception as ex:
        raise ValueError(ex)
    finally:
        db.disconnect()
    return results

# -----Departamento-----

@app.post(
    "/consultardepartamento",
    response_model=list,
    summary="Consultar Departamento",
    description="Consultar Entidad Departamento",
    tags=["Entidades"]
)
async def consultar_departamento(departamentomodelo: DepartamentoModelo) -> list:
    results = []
    db = mysql.connector.connect(
        host=host,
        user=user,
        password=password,
        database=database
    )
    try:
        cursor = db.cursor()
        cursor.callproc("readdepartamento")
        for item in list(cursor.stored_results()):
            results = item.fetchall()
        db.commit()
        cursor.close()
    except Exception as ex:
        raise ValueError(ex)
    finally:
        db.disconnect()
    return results

# -----Detallediagnostico-----

@app.post(
    "/consultardetallediagnostico",
    response_model=list,
    summary="Consultar Detallediagnostico",
    description="Consultar Entidad Detallediagnostico",
    tags=["Entidades"]
)
async def consultar_detallediagnostico(detallediagnosticomodelo: DetallediagnosticoModelo) -> list:
    results = []
    db = mysql.connector.connect(
        host=host,
        user=user,
        password=password,
        database=database
    )
    try:
        cursor = db.cursor()
        cursor.callproc("readdetallediagnostico")
        for item in list(cursor.stored_results()):
            results = item.fetchall()
        db.commit()
        cursor.close()
    except Exception as ex:
        raise ValueError(ex)
    finally:
        db.disconnect()
    return results

# -----Detallefactura-----

@app.post(
    "/consultardetallefactura",
    response_model=list,
    summary="Consultar Detallefactura",
    description="Consultar Entidad Detallefactura",
    tags=["Entidades"]
)
async def consultar_detallefactura(detallefacturamodelo: DetallefacturaModelo) -> list:
    results = []
    db = mysql.connector.connect(
        host=host,
        user=user,
        password=password,
        database=database
    )
    try:
        cursor = db.cursor()
        cursor.callproc("readdetallefactura")
        for item in list(cursor.stored_results()):
            results = item.fetchall()
        db.commit()
        cursor.close()
    except Exception as ex:
        raise ValueError(ex)
    finally:
        db.disconnect()
    return results

# -----Diagnostico-----

@app.post(
    "/consultardiagnostico",
    response_model=list,
    summary="Consultar Diagnostico",
    description="Consultar Entidad Diagnostico",
    tags=["Entidades"]
)
async def consultar_diagnostico(diagnosticomodelo: DiagnosticoModelo) -> list:
    results = []
    db = mysql.connector.connect(
        host=host,
        user=user,
        password=password,
        database=database
    )
    try:
        cursor = db.cursor()
        cursor.callproc("readdiagnostico")
        for item in list(cursor.stored_results()):
            results = item.fetchall()
        db.commit()
        cursor.close()
    except Exception as ex:
        raise ValueError(ex)
    finally:
        db.disconnect()
    return results

# -----Direccion-----

@app.post(
    "/consultardireccion",
    response_model=list,
    summary="Consultar Direccion",
    description="Consultar Entidad Direccion",
    tags=["Entidades"]
)
async def consultar_direccion(direccionmodelo: DireccionModelo) -> list:
    results = []
    db = mysql.connector.connect(
        host=host,
        user=user,
        password=password,
        database=database
    )
    try:
        cursor = db.cursor()
        cursor.callproc("readdireccion")
        for item in list(cursor.stored_results()):
            results = item.fetchall()
        db.commit()
        cursor.close()
    except Exception as ex:
        raise ValueError(ex)
    finally:
        db.disconnect()
    return results

# -----Dispositivo-----

@app.post(
    "/consultardispositivo",
    response_model=list,
    summary="Consultar Dispositivo",
    description="Consultar Entidad Dispositivo",
    tags=["Entidades"]
)
async def consultar_dispositivo(dispositivomodelo: DispositivoModelo) -> list:
    results = []
    db = mysql.connector.connect(
        host=host,
        user=user,
        password=password,
        database=database
    )
    try:
        cursor = db.cursor()
        cursor.callproc("readdispositivo")
        for item in list(cursor.stored_results()):
            results = item.fetchall()
        db.commit()
        cursor.close()
    except Exception as ex:
        raise ValueError(ex)
    finally:
        db.disconnect()
    return results

# -----Empleado-----

@app.post(
    "/consultarempleado",
    response_model=list,
    summary="Consultar Empleado",
    description="Consultar Entidad Empleado",
    tags=["Entidades"]
)
async def consultar_empleado(empleadomodelo: EmpleadoModelo) -> list:
    results = []
    db = mysql.connector.connect(
        host=host,
        user=user,
        password=password,
        database=database
    )
    try:
        cursor = db.cursor()
        cursor.callproc("readempleado")
        for item in list(cursor.stored_results()):
            results = item.fetchall()
        db.commit()
        cursor.close()
    except Exception as ex:
        raise ValueError(ex)
    finally:
        db.disconnect()
    return results

# -----Empresa-----

@app.post(
    "/consultarempresa",
    response_model=list,
    summary="Consultar Empresa",
    description="Consultar Entidad Empresa",
    tags=["Entidades"]
)
async def consultar_empresa(empresamodelo: EmpresaModelo) -> list:
    results = []
    db = mysql.connector.connect(
        host=host,
        user=user,
        password=password,
        database=database
    )
    try:
        cursor = db.cursor()
        cursor.callproc("readempresa")
        for item in list(cursor.stored_results()):
            results = item.fetchall()
        db.commit()
        cursor.close()
    except Exception as ex:
        raise ValueError(ex)
    finally:
        db.disconnect()
    return results

# -----Estadodiagnostico-----

@app.post(
    "/consultarestadodiagnostico",
    response_model=list,
    summary="Consultar Estadodiagnostico",
    description="Consultar Entidad Estadodiagnostico",
    tags=["Entidades"]
)
async def consultar_estadodiagnostico(estadodiagnosticomodelo: EstadodiagnosticoModelo) -> list:
    results = []
    db = mysql.connector.connect(
        host=host,
        user=user,
        password=password,
        database=database
    )
    try:
        cursor = db.cursor()
        cursor.callproc("readestadodiagnostico")
        for item in list(cursor.stored_results()):
            results = item.fetchall()
        db.commit()
        cursor.close()
    except Exception as ex:
        raise ValueError(ex)
    finally:
        db.disconnect()
    return results

# -----Estadofactura-----

@app.post(
    "/consultarestadofactura",
    response_model=list,
    summary="Consultar Estadofactura",
    description="Consultar Entidad Estadofactura",
    tags=["Entidades"]
)
async def consultar_estadofactura(estadofacturamodelo: EstadofacturaModelo) -> list:
    results = []
    db = mysql.connector.connect(
        host=host,
        user=user,
        password=password,
        database=database
    )
    try:
        cursor = db.cursor()
        cursor.callproc("readestadofactura")
        for item in list(cursor.stored_results()):
            results = item.fetchall()
        db.commit()
        cursor.close()
    except Exception as ex:
        raise ValueError(ex)
    finally:
        db.disconnect()
    return results

# -----Factura-----

@app.post(
    "/consultarfactura",
    response_model=list,
    summary="Consultar Factura",
    description="Consultar Entidad Factura",
    tags=["Entidades"]
)
async def consultar_factura(facturamodelo: FacturaModelo) -> list:
    results = []
    db = mysql.connector.connect(
        host=host,
        user=user,
        password=password,
        database=database
    )
    try:
        cursor = db.cursor()
        cursor.callproc("readfactura")
        for item in list(cursor.stored_results()):
            results = item.fetchall()
        db.commit()
        cursor.close()
    except Exception as ex:
        raise ValueError(ex)
    finally:
        db.disconnect()
    return results

# -----Pais-----

@app.post(
    "/consultarpais",
    response_model=list,
    summary="Consultar Pais",
    description="Consultar Entidad Pais",
    tags=["Entidades"]
)
async def consultar_pais(paismodelo: PaisModelo) -> list:
    results = []
    db = mysql.connector.connect(
        host=host,
        user=user,
        password=password,
        database=database
    )
    try:
        cursor = db.cursor()
        cursor.callproc("readpais")
        for item in list(cursor.stored_results()):
            results = item.fetchall()
        db.commit()
        cursor.close()
    except Exception as ex:
        raise ValueError(ex)
    finally:
        db.disconnect()
    return results

# -----Sede-----

@app.post(
    "/consultarsede",
    response_model=list,
    summary="Consultar Sede",
    description="Consultar Entidad Sede",
    tags=["Entidades"]
)
async def consultar_sede(sedemodelo: SedeModelo) -> list:
    results = []
    db = mysql.connector.connect(
        host=host,
        user=user,
        password=password,
        database=database
    )
    try:
        cursor = db.cursor()
        cursor.callproc("readsede")
        for item in list(cursor.stored_results()):
            results = item.fetchall()
        db.commit()
        cursor.close()
    except Exception as ex:
        raise ValueError(ex)
    finally:
        db.disconnect()
    return results

# -----Tipodispositivo-----

@app.post(
    "/consultartipodispositivo",
    response_model=list,
    summary="Consultar Tipodispositivo",
    description="Consultar Entidad Tipodispositivo",
    tags=["Entidades"]
)
async def consultar_tipodispositivo(tipodispositivomodelo: TipodispositivoModelo) -> list:
    results = []
    db = mysql.connector.connect(
        host=host,
        user=user,
        password=password,
        database=database
    )
    try:
        cursor = db.cursor()
        cursor.callproc("readtipodispositivo")
        for item in list(cursor.stored_results()):
            results = item.fetchall()
        db.commit()
        cursor.close()
    except Exception as ex:
        raise ValueError(ex)
    finally:
        db.disconnect()
    return results

# -----Tipodocumento-----

@app.post(
    "/consultartipodocumento",
    response_model=list,
    summary="Consultar Tipodocumento",
    description="Consultar Entidad Tipodocumento",
    tags=["Entidades"]
)
async def consultar_tipodocumento(tipodocumentomodelo: TipodocumentoModelo) -> list:
    results = []
    db = mysql.connector.connect(
        host=host,
        user=user,
        password=password,
        database=database
    )
    try:
        cursor = db.cursor()
        cursor.callproc("readtipodocumento")
        for item in list(cursor.stored_results()):
            results = item.fetchall()
        db.commit()
        cursor.close()
    except Exception as ex:
        raise ValueError(ex)
    finally:
        db.disconnect()
    return results

# -----Tipoempleado-----

@app.post(
    "/consultartipoempleado",
    response_model=list,
    summary="Consultar Tipoempleado",
    description="Consultar Entidad Tipoempleado",
    tags=["Entidades"]
)
async def consultar_tipoempleado(tipoempleadomodelo: TipoempleadoModelo) -> list:
    results = []
    db = mysql.connector.connect(
        host=host,
        user=user,
        password=password,
        database=database
    )
    try:
        cursor = db.cursor()
        cursor.callproc("readtipoempleado")
        for item in list(cursor.stored_results()):
            results = item.fetchall()
        db.commit()
        cursor.close()
    except Exception as ex:
        raise ValueError(ex)
    finally:
        db.disconnect()
    return results

# -----Tipogenero-----

@app.post(
    "/consultartipogenero",
    response_model=list,
    summary="Consultar Tipogenero",
    description="Consultar Entidad Tipogenero",
    tags=["Entidades"]
)
async def consultar_tipogenero(tipogeneromodelo: TipogeneroModelo) -> list:
    results = []
    db = mysql.connector.connect(
        host=host,
        user=user,
        password=password,
        database=database
    )
    try:
        cursor = db.cursor()
        cursor.callproc("readtipogenero")
        for item in list(cursor.stored_results()):
            results = item.fetchall()
        db.commit()
        cursor.close()
    except Exception as ex:
        raise ValueError(ex)
    finally:
        db.disconnect()
    return results

# -----Tipousuario-----

@app.post(
    "/consultartipousuario",
    response_model=list,
    summary="Consultar Tipousuario",
    description="Consultar Entidad Tipousuario",
    tags=["Entidades"]
)
async def consultar_tipousuario(tipousuariomodelo: TipousuarioModelo) -> list:
    results = []
    db = mysql.connector.connect(
        host=host,
        user=user,
        password=password,
        database=database
    )
    try:
        cursor = db.cursor()
        cursor.callproc("readtipousuario")
        for item in list(cursor.stored_results()):
            results = item.fetchall()
        db.commit()
        cursor.close()
    except Exception as ex:
        raise ValueError(ex)
    finally:
        db.disconnect()
    return results

# -----Usuario-----

@app.post(
    "/consultarusuario",
    response_model=list,
    summary="Consultar Usuario",
    description="Consultar Entidad Usuario",
    tags=["Entidades"]
)
async def consultar_usuario(usuariomodelo: UsuarioModeloEntidad) -> list:
    results = []
    db = mysql.connector.connect(
        host=host,
        user=user,
        password=password,
        database=database
    )
    try:
        cursor = db.cursor()
        cursor.callproc("readusuario")
        for item in list(cursor.stored_results()):
            results = item.fetchall()
        db.commit()
        cursor.close()
    except Exception as ex:
        raise ValueError(ex)
    finally:
        db.disconnect()
    return results

#######################################################