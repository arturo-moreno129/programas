import os
import time
import threading
import tkinter as tk
from tkinter import ttk, messagebox
from datetime import datetime
import webbrowser
import pystray
from PIL import Image, ImageDraw

monitoring = [True]

# Verifica conexión a internet
def check_internet():
    response = os.system("ping -n 1 8.8.8.8 >nul")  # En Windows
    return response == 0

# Registrar caída
def log_failure():
    now = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    with open("caidas_internet.txt", "a") as file:
        file.write(f"Caída de internet detectada: {now}\n")
    return now

# Obtener última caída registrada
def get_last_failure():
    if not os.path.exists("caidas_internet.txt"):
        return "Ninguna caída registrada"
    with open("caidas_internet.txt", "r") as file:
        lines = file.readlines()
        if lines:
            return lines[-1].strip()
    return "Ninguna caída registrada"

# Monitor en segundo plano
def monitor_internet(label_estado, label_ultima):
    while monitoring[0]:
        connected = check_internet()
        if connected:
            label_estado.config(text="Conectado a Internet", foreground="green")
        else:
            label_estado.config(text="Sin conexión", foreground="red")
            ultima = log_failure()
            label_ultima.config(text=f"Última caída: {ultima}")
        time.sleep(60)

# Abrir archivo de registro
def abrir_log():
    archivo = os.path.abspath("caidas_internet.txt")
    if not os.path.exists(archivo):
        with open(archivo, "w"): pass
    os.startfile(archivo)

# Minimizar a bandeja del sistema
def minimizar(root):
    root.withdraw()
    icono = crear_icono(root)
    threading.Thread(target=icono.run, daemon=True).start()

# Crear icono de bandeja
def crear_icono(root):
    def volver():
        icon.stop()
        root.deiconify()

    def salir():
        monitoring[0] = False
        icon.stop()
        root.destroy()

    image = Image.new("RGB", (64, 64), "white")
    draw = ImageDraw.Draw(image)
    draw.ellipse((16, 16, 48, 48), fill="blue")

    icon = pystray.Icon("MonitorInternet", image, "Monitor Internet", menu=pystray.Menu(
        pystray.MenuItem("Restaurar", volver),
        pystray.MenuItem("Salir", salir)
    ))
    return icon

# Cerrar ventana
def cerrar(root):
    if messagebox.askokcancel("Salir", "¿Deseas cerrar el monitor?"):
        monitoring[0] = False
        root.destroy()

# Interfaz gráfica
def start_gui():
    root = tk.Tk()
    root.title("Monitor de Internet")
    root.geometry("360x200")
    root.resizable(False, False)

    estado_label = ttk.Label(root, text="Verificando conexión...", font=("Arial", 12))
    estado_label.pack(pady=10)

    ultima_label = ttk.Label(root, text=get_last_failure(), font=("Arial", 10))
    ultima_label.pack(pady=5)

    frame_botones = ttk.Frame(root)
    frame_botones.pack(pady=10)

    ttk.Button(frame_botones, text="Abrir registro", command=abrir_log).grid(row=0, column=0, padx=5)
    ttk.Button(frame_botones, text="Minimizar", command=lambda: minimizar(root)).grid(row=0, column=1, padx=5)
    ttk.Button(frame_botones, text="Cerrar", command=lambda: cerrar(root)).grid(row=0, column=2, padx=5)

    # Hilo de monitoreo
    threading.Thread(target=monitor_internet, args=(estado_label, ultima_label), daemon=True).start()

    root.protocol("WM_DELETE_WINDOW", lambda: cerrar(root))
    root.mainloop()

# Ejecutar
if __name__ == "__main__":
    try:
        from PIL import Image, ImageDraw
        import pystray
        start_gui()
    except ImportError:
        print("Faltan módulos. Instala PIL y pystray con: pip install pillow pystray")
