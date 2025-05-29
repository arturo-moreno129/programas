import os
import time
from datetime import datetime

# Función para hacer ping a un servidor (por ejemplo, Google DNS)
def check_internet():
    response = os.system("ping -c 1 140.240.13.250")  # Usamos el DNS de Google (8.8.8.8)
    return response == 0  # Si el ping tiene éxito, la respuesta será 0

# Función para registrar la caída en un archivo
def log_failure():
    with open("caidas_internet.txt", "a") as file:
        now = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        file.write(f"Caída de internet detectada: {now}\n")

# Función principal para verificar constantemente la conexión
def monitor_internet():
    while True:
        if not check_internet():  # Si no hay conexión
            log_failure()  # Registra la caída
        time.sleep(1)  # Espera 1 minuto antes de verificar de nuevo

# Ejecuta el programa
if __name__ == "__main__":
    monitor_internet()