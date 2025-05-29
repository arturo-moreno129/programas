import os

# Ruta al escritorio del usuario
ruta_escritorio = os.path.join(os.path.expanduser("~"), "Desktop")

# Nombre del archivo .txt que se va a crear
nombre_archivo = 'nombres_carpetas.txt'

# Abrir el archivo en modo escritura
with open(nombre_archivo, 'w') as archivo:
    # Recorrer todas las carpetas en el escritorio
    for nombre_carpeta in os.listdir(ruta_escritorio):
        ruta_carpeta = os.path.join(ruta_escritorio, nombre_carpeta)
        if os.path.isdir(ruta_carpeta):
            # Escribir el nombre de la carpeta en el archivo
            consulta = f'INSERT INTO evidencia VALUES (DEFAULT, "{nombre_carpeta}", "15/10/2024", "PC-COMPLETA", "RESGUARDO1.pdf", NULL, 1);\n'
            archivo.write(consulta)

print(f'Archivo {nombre_archivo} generado en el escritorio con los nombres de las carpetas.')

