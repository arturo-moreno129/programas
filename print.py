import os
import win32print
import win32api

# Ruta de la carpeta que contiene los archivos
carpeta = r"C:/Users/JMoreno/Desktop/SCAN"

# Obtener la impresora predeterminada
impresora = win32print.GetDefaultPrinter()

# Extensiones de archivo que deseas imprimir
extensiones_permitidas = ['.pdf', '.txt', '.docx', '.jpg', '.png']

# Iterar sobre los archivos en la carpeta
for archivo in os.listdir(carpeta):
    ruta_archivo = os.path.join(carpeta, archivo)
    
    # Comprobar si es un archivo y si tiene una extensión permitida
    if os.path.isfile(ruta_archivo) and os.path.splitext(archivo)[1].lower() in extensiones_permitidas:
        try:
            # Enviar el archivo a la impresora
            print(f"Imprimiendo: {archivo}")
            win32api.ShellExecute(0, "print", ruta_archivo, None, ".", 0)
        except Exception as e:
            print(f"No se pudo imprimir {archivo}: {e}")
