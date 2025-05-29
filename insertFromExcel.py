import pandas as pd
import mysql.connector

# Configuración de la base de datos
db_config = {
    "host": "127.0.0.1",
    "user": "root",
    "password": "",
    "database": "bd_acrivera"
}

# Ruta del archivo Excel
archivo_excel = "Directrorio ACR_Enero.xlsx"

# Nombre de la hoja en el archivo Excel
nombre_hoja = "Hoja1"

# Conectar a MySQL
try:
    conn = mysql.connector.connect(**db_config)
    cursor = conn.cursor()
    print("Conexión exitosa a MySQL")
except mysql.connector.Error as err:
    print(f"Error de conexión: {err}")
    exit()

# Leer el archivo Excel
try:
    df = pd.read_excel(archivo_excel, sheet_name=nombre_hoja)
    print("Datos cargados desde Excel correctamente")
except Exception as e:
    print(f"Error al leer el archivo Excel: {e}")
    exit()

# Insertar datos en la base de datos
df.columns = df.columns.str.strip()
print(df.columns)
df = df.dropna()  # Elimina filas con valores NaN en excel N/A indica un valor NaN
for index, row in df.iterrows():
    try:
        cursor.execute(
            "INSERT INTO directorio (nom_usu, puesto, correo,extencion,area) VALUES (%s, %s, %s, %s, %s)",
            (row["nombre"], row["puesto"], row["correo"], row["extencion"], row["area"])
        )
    except mysql.connector.Error as err:
        print(f"Error al insertar fila {index}: {err}")

# Confirmar los cambios y cerrar conexión
conn.commit()
cursor.close()
conn.close()
print("Datos insertados correctamente en MySQL")
