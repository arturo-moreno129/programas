import paramiko
import os
import stat

# Configuración
SERVIDOR_LINUX = "10.20.200.34"
USUARIO = "kcc"
CONTRASEÑA = "CDKmex123"
RUTA_REMOTA = "/auto/MBR/home/CFD/PDF/"
RUTA_LOCAL = "C:/Users/JMORENO/Desktop/CFD/"

# Asegurarse de que la carpeta local exista
if not os.path.exists(RUTA_LOCAL):
    os.makedirs(RUTA_LOCAL)

# Crear cliente SSH
ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())

try:
    ssh.connect(SERVIDOR_LINUX, username=USUARIO, password=CONTRASEÑA)
    sftp = ssh.open_sftp()

    archivos = sftp.listdir_attr(RUTA_REMOTA)

    for archivo in archivos:
        archivo_remoto = f"{RUTA_REMOTA}/{archivo.filename}"
        archivo_local = os.path.join(RUTA_LOCAL, archivo.filename)

        # Verificar que sea un archivo regular y con extensión .pdf
        if stat.S_ISREG(archivo.st_mode) and archivo.filename.lower().endswith(".pdf"):
            print(f"Descargando: {archivo.filename}")
            sftp.get(archivo_remoto, archivo_local)
        else:
            print(f"⏭️  Omitido: {archivo.filename} (no es PDF o no es archivo regular)")

    print("✅ Archivos PDF copiados exitosamente.")
    sftp.close()
    ssh.close()

except Exception as e:
    print(f"❌ Error en la conexión o descarga: {e}")
