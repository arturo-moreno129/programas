import mysql.connector

# Conectar a la base de datos
conexion = mysql.connector.connect(
    host='127.0.0.1',  # Por ejemplo, 'localhost'
    user='root',
    password='',
    database='bd_acrivera'
)

cursor = conexion.cursor()

# Pedir al usuario cuántas veces desea insertar
num_insertos = 2 #int(input("¿Cuántas veces deseas insertar? "))

# Ejecutar la inserción el número de veces indicado
for i in range(1,num_insertos):
    nombre = "HUGO ENRIQUE GUZMAN CERVANTES" #input(f"Ingrese el nombre para la inserción {i + 1}: ")
    archivo = "RESGUARDO"+str(i+1)+".pdf"
    #fecha = input("Ingrese la fecha (DD/MM/AAAA): ")
    consulta = "INSERT INTO evidencia (id_evidencia, nombre, fecha, dispositivo, url_resguardo,url_mantenimiento,id_usuario) VALUES (DEFAULT, %s, %s, %s, %s, null, 1)"
    datos = (nombre, "15/10/2024", "PC-COMPLETA", archivo)
    #datos = (nombre, fecha, "PC-COMPLETA", "RESGUARDO1.pdf")
    
    cursor.execute(consulta, datos)

# Guardar los cambios y cerrar la conexión
conexion.commit()
cursor.close()
conexion.close()

print(f'Se han insertado {num_insertos} registros en la base de datos.')
