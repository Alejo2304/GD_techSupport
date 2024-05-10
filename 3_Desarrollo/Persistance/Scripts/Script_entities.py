#Comentar la linea de abajo si vas a escribir los datos de conexión directamente en el script
from controlDatabase import *
#pip install mysql-connector-python
import mysql.connector
import os

'''
# Conexión a la base de datos - Reemplazar valores con tu DB
host="
user=""
password=""
database="" 
'''

#Ruta de la carpeta donde vas a guardar las entidades
ruta = "C:\\Users\\Daniela\\Desktop\\LAOR\\GESTION_DATOS\\3_CORTE\\TechSupport\\3_Desarrollo\\mediator\\entidades"
#Ruta de la carpeta donde esta guardado el archivo objetoentidadrelacion.py
ruta2 = "C:\\Users\\Daniela\\Desktop\\LAOR\\GESTION_DATOS\\3_CORTE\\TechSupport\\3_Desarrollo\\mediator\\mediadores"

def dataTypeConverter(DataTypeSQL):
    # Split the string at the opening parenthesis and take the first part
    DataTypeSQL = DataTypeSQL.lower().split('(')[0]
    #print(DataTypeSQL)

    if DataTypeSQL == "int":
        return "int"
    elif DataTypeSQL == "decimal":
        return "float"
    elif DataTypeSQL == "varchar":
        return "str"
    elif DataTypeSQL == "char":
        return "str"
    elif DataTypeSQL == "datetime":
        return "datetime"
    elif DataTypeSQL == "timestamp":
        return "datetime"
    elif DataTypeSQL == "text":
        return "str"
    elif DataTypeSQL == "date":
        return "datetime"
    elif DataTypeSQL == "bit":
        return "bool"
    else:
        return "Tipo de dato no soportado"

class Script_entities:

    def __init__(self):
        self.connection = mysql.connector.connect(
            host=host,
            user=user,
            password=password,
            database=database
        )
        self.cursor = self.connection.cursor()

    def crearEntidades(self, rutaFolder):
        tables = []
        try:
            comandoSQL = "show tables;" 
            self.cursor.execute(comandoSQL)
            tables = self.cursor.fetchall()

            for table in tables:
                tableName = table[0]
                tableName = tableName.capitalize()

                fileHeader = f"""
#departamento
from pydantic import BaseModel
from datetime import datetime

class {tableName}Modelo(BaseModel):"""
                fileBody = ""

                columns = []
                comandoSQL = f"show columns from {tableName};"
                self.cursor.execute(comandoSQL)
                columns = self.cursor.fetchall()

                for column in columns:
                    columnName = column[0]
                    columnType = column[1]

                    aux = f"""
    {columnName}: {dataTypeConverter(columnType)}"""
                    fileBody += aux

                fileContent = fileHeader + fileBody
                #print(fileContent)

                with open(os.path.join(f"{rutaFolder}", f"{tableName}.py"), 'w') as f:
                   f.write(fileContent)

        except mysql.connector.Error as err:
            print("Error: {}".format(err))
        
        #self.connection.close()
        return print("Entidades creadas con éxito")
    
    def ActualizarMediadorObjetoEntidad(self, rutaFolder):
        tables = []
        code = ""
        try:
            comandoSQL = "show tables;" 
            self.cursor.execute(comandoSQL)
            tables = self.cursor.fetchall()

            for table in tables:
                tableName = table[0]
                tableName = tableName.capitalize()

                text = f"""

# -----{tableName}-----

@app.post(
    "/consultar{tableName.lower()}",
    response_model=list,
    summary="Consultar {tableName}",
    description="Consultar Entidad {tableName}",
    tags=["Entidades"]
)
async def consultar_{tableName.lower()}({tableName.lower()}modelo: {tableName}Modelo) -> list:
    results = []
    db = mysql.connector.connect(
        host=host,
        user=user,
        password=password,
        database=database
    )
    try:
        cursor = db.cursor()
        cursor.callproc("read{tableName.lower()}")
        for item in list(cursor.stored_results()):
            results = item.fetchall()
        db.commit()
        cursor.close()
    except Exception as ex:
        raise ValueError(ex)
    finally:
        db.disconnect()
    return results"""

                code += text
            
            with open(os.path.join(f"{rutaFolder}", f"mediadorobjetoentidad.txt"), 'w') as f:
                f.write(code)
        
        except mysql.connector.Error as err:
            print("Error: {}".format(err))

        #self.connection.close()
        return print("Mediador actualizado con éxito")

objeto = Script_entities()
objeto.crearEntidades(ruta)
objeto.ActualizarMediadorObjetoEntidad(ruta2)