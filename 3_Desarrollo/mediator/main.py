#Se usa librerias Uvicorn y FastAPI para la creación de un servidor web que se encargará de recibir las peticiones de los clientes y enviarlas al mediador correspondiente.
#pip install fastapi
#pip install uvicorn
#python -m pip install "pymongo[srv]"
# main:

import uvicorn

def start():
    uvicorn.run(
        "mediadores.mediadorobjetoentidad:app",
        host="127.0.0.1",
        port=8070,
        reload=True
    )


if __name__ == "__main__":
    start()