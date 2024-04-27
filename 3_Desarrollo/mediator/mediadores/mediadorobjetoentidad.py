# mediadorobjetoentidad:
from fastapi import FastAPI
from objetos.geografia import GeografiaModelo
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
    connection_string = "mongodb+srv://luisojeda222:root@cluster0.4yls2sc.mongodb.net/dba_tech_support?retryWrites=true&w=majority"
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

#######################################################

# Entidades:

#######################################################