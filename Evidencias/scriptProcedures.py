import mysql.connector, os
from controlDatabase import *
#pip install mysql-connector-python
path = "3_Desarrollo\Persistance\Procedures"
tables = []
#Database connection data
cnx = mysql.connector.connect(
    host= host,
    user= user,
    password= password,
    database= database 
)
cursor = cnx.cursor()
#creation of the cursor

#Query to get all tables on the DB
query = "show tables;"
cursor.execute(query)

#Get all tables in the tables variable
tables = cursor.fetchall() 

#Create a folder for each table
for table in tables:
    os.makedirs(os.path.join(path, table[0]), exist_ok=True)

def create_procedure():

    for table in tables:
        i= 1
        columns = [] 

        #Query to get all columns from a table
        query= f"SHOW COLUMNS FROM {table[0]}"
        cursor.execute(query)
        columns = cursor.fetchall()

        #This will create the procedures for the CRUD operations
        create_procedure= f"""CREATE DEFINER=`root`@`localhost` PROCEDURE `create{table[0]}`(\n"""

        while i < (len(columns)-2):
            create_procedure += f"""IN `P_{columns[i][0]}` {columns[i][1]},\n"""
            i += 1

        create_procedure += f""")
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        INSERT INTO {table[0]}("""
        
        i=1
        while i < (len(columns)-2):
            if i == (len(columns)-3):
                create_procedure += f"""{columns[i][0]}"""
            else:
                create_procedure += f"""{columns[i][0]}, """
            i += 1

        create_procedure += f""")
        VALUES("""

        i=1
        while i < (len(columns)-2):
            if i == (len(columns)-3):
                create_procedure += f"""P_{columns[i][0]}"""
            else:
                create_procedure += f"""P_{columns[i][0]}, """
            i += 1

        create_procedure += f""");
        END"""

        with open(os.path.join(path, table[0], f"create_{table[0]}.sql"), 'w') as f:
            f.write(create_procedure)
    return "ok"

def read_procedure():
    for table in tables:
        read_procedure = f"""
        CREATE DEFINER=`root`@`localhost` PROCEDURE `read{table[0]}`()
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM {table[0]} WHERE Activo = 1;
        
        END"""

        with open(os.path.join(path, table[0], f"read_{table[0]}.sql"), 'w') as f:
            f.write(read_procedure)
    return "ok"

def update_procedure():
    for table in tables:
        columns, i = [], 0
        #Query to get all columns from a table
        query = f"SHOW COLUMNS FROM {table[0]}"
        cursor.execute(query)
        columns = cursor.fetchall()

        update_procedure = f"""CREATE DEFINER=`root`@`localhost` PROCEDURE `update{table[0]}`("""

        while (i) < (len(columns)-2):
            update_procedure += f"""
            IN `P_{columns[i][0]}` {columns[i][1]},"""
            i += 1

        update_procedure += f"""
        )
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        UPDATE {table[0]}"""

        i=1
        while i < (len(columns)-2):
            update_procedure += f"""
            SET {columns[i][0]} = P_{columns[i][0]}"""
            i += 1

        update_procedure += f"""
        WHERE {columns[0][0]} = P_{columns[0][0]}
        AND Activo = 1;

        END"""

        with open(os.path.join(path, table[0], f"update_{table[0]}.sql"), 'w') as f:
            f.write(update_procedure)
        
    return "ok"

def delete_procedure():
    
    for table in tables:
        columns, i = [], 0
        #Query to get all columns from a table
        query = f"SHOW COLUMNS FROM {table[0]}"
        cursor.execute(query)
        columns = cursor.fetchall()

        delete_procedure = f"""CREATE DEFINER=`root`@`localhost` PROCEDURE `delete{table[0]}`(
            IN `P_{columns[0][0]}` {columns[0][1]},
            )
            LANGUAGE SQL
            NOT DETERMINISTIC
            CONTAINS SQL
            SQL SECURITY DEFINER
            COMMENT ''
            BEGIN

            UPDATE {table[0]}
            SET Activo = 0
            WHERE {columns[0][0]} = P_{columns[0][0]}
            AND Activo = 1;

            END"""
        with open(os.path.join(path, table[0], f"delete_{table[0]}.sql"), 'w') as f:
            f.write(delete_procedure)
    return "ok"
    
create_procedure()
read_procedure()
update_procedure()
delete_procedure()

cnx.close()