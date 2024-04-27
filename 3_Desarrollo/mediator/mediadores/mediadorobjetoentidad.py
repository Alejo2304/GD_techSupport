# mediadorobjetoentidad:
from fastapi import FastAPI
from objetos.geografia import GeografiaModelo
from objetos.organizacion import OrganizacionModelo
from objetos.servicio import ServicioModelo
from objetos.transaccion import TransaccionModelo
from objetos.usuario import UsuarioModelo
from credenciales import strConnection
import pymongo

app: FastAPI = FastAPI(
title="Mediador Objetos y Entidades",
description="USBGD202401"
)

#######################################################

# Objetos:

@app.post(
    "/consultargeografia",
    response_model=list,
    summary="Consultar Objeto Geografía",
    description="Consultar un objeto de tipo Geografía",
    tags=["Geografia"]
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

@app.post(
    "/consultarorganizacion",
    response_model=list,
    summary="Consultar Objeto Organizacion",
    description="Consultar un objeto de tipo Organizacion",
    tags=["Organizacion"]
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

@app.post(
    "/consultarservicio",
    response_model=list,
    summary="Consultar Objeto Servicio",
    description="Consultar un objeto de tipo Servicio",
    tags=["Servicio"]
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


@app.post(
    "/consultartransaccion",
    response_model=list,
    summary="Consultar Objeto Transaccion",
    description="Consultar un objeto de tipo Transaccion",
    tags=["Transaccion"]
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

@app.post(
    "/consultarusuario",
    response_model=list,
    summary="Consultar Objeto Usario",
    description="Consultar un objeto de tipo Usuario",
    tags=["Usuario"]
)


async def consultar_usuario(usuariomodelo: UsuarioModelo) -> list:
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

#######################################################