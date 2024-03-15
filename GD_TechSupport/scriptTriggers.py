import os

# Directory paths
tables_dir = "C:\\Users\\Daniela\\Desktop\\LAOR\\GESTION_DATOS\\TechSupport\\3_Desarrollo\\Persistance\\Tables"
triggers_dir = "C:\\Users\\Daniela\\Desktop\\LAOR\\GESTION_DATOS\\TechSupport\\3_Desarrollo\\Persistance\\Triggers"

# Get all table names from the Tables directory
table_files = os.listdir(tables_dir)
table_names = [os.path.splitext(file)[0] for file in table_files]

# Create a trigger file for each table
for table_name in table_names:
    trigger_content = f"""CREATE DEFINER=`root`@`localhost` TRIGGER `{table_name}_before_insert` BEFORE INSERT ON `{table_name}` FOR EACH ROW BEGIN
    SET NEW.Id{table_name} = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP
END"""

    # Write the trigger content to a new .sql file in the Triggers directory
    with open(os.path.join(triggers_dir, f"{table_name}_before_insert.sql"), 'w') as f:
        f.write(trigger_content)