import paramiko # Es una biblioteca para realizar conexiones SSH
import os #Proporciona funciones para interactuar con el sistema operativo, como manipular archivos 
import stat #Se usa para obtener información sobre archivos y sus atributos, como permisos, tamaño, fecha de modificación, entre otros

# Configuración
SERVIDOR_LINUX = "10.20.200.34"
USUARIO = "kcc"
CONTRASENA = "CDKmex123"
RUTA_REMOTA = "/auto/MBR/home/CFD/PDF/"
RUTA_LOCAL = "C:/Users/JMORENO/Desktop/CFD/"

# Asegurarse de que la carpeta local exista
if not os.path.exists(RUTA_LOCAL):
    os.makedirs(RUTA_LOCAL)

# Crear cliente SSH
ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())

try:
    ssh.connect(SERVIDOR_LINUX, username=USUARIO, password=CONTRASENA)
    sftp = ssh.open_sftp()

    archivos = sftp.listdir_attr(RUTA_REMOTA) #Obtine una lista de archivos y sus atributos dentro del directorio remoto especificado,nombre del archivo, fecha tamaño, etc

    for archivo in archivos:
        archivo_remoto = f"{RUTA_REMOTA}/{archivo.filename}" #f se usa en f-strings (cadenas de formato) para crear cadenas de texto dinámicas de manera más intuitiva y eficinte
        archivo_local = os.path.join(RUTA_LOCAL, archivo.filename)

        # Verificar que sea un archivo regular y con extensión .pdf
        if stat.S_ISREG(archivo.st_mode) and archivo.filename.lower().endswith(".pdf"):
            #- stat.S_ISREG(archivo.st_mode) Esta parte verifica si el archivo es un archivo regular  es decir, no un directorio, enlace simbólico, etc.
            print(f"Descargando: {archivo.filename}")
            sftp.get(archivo_remoto, archivo_local)
        else:
            print(f"⏭️  Omitido: {archivo.filename} (no es PDF o no es archivo regular)")

    print("✅ Archivos PDF copiados exitosamente.")
    sftp.close()
    ssh.close()

except Exception as e:
    print(f"❌ Error en la conexión o descarga: {e}")
