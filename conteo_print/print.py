import win32evtlog
import time
import requests

# URL del servidor donde se enviarán los datos
SERVER_URL = "http://localhost:5000/guardar_impresion"  # Ajustar según el servidor

def monitor_impresiones():
    server = "localhost"
    log_type = "System"

    while True:
        hand = win32evtlog.OpenEventLog(server, log_type)
        flags = win32evtlog.EVENTLOG_BACKWARDS_READ | win32evtlog.EVENTLOG_SEQUENTIAL_READ
        events = win32evtlog.ReadEventLog(hand, flags, 0)

        if events:
            for event in events:
                if event.EventID == 307:  # Evento de impresión
                    datos = {
                        "usuario": event.StringInserts[6],
                        "impresora": event.StringInserts[0],
                        "documento": event.StringInserts[1],
                        "paginas": event.StringInserts[3],
                        "copias": event.StringInserts[4],
                        "fecha": event.TimeGenerated.Format()
                    }
                    print(f"Impresión detectada: {datos}")
                    
                    # Enviar datos a la base de datos
                    try:
                        requests.post(SERVER_URL, json=datos)
                    except Exception as e:
                        print("Error al enviar datos:", e)

        time.sleep(5)  # Leer cada 5 segundos

if __name__ == "__main__":
    monitor_impresiones()
