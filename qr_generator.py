import qrcode

def generar_qr_wifi(ssid: str, password: str, encryption: str = "WPA", hidden: bool = False, filename: str = "wifi_qr.png"):
    """
    Genera un QR que conecta a la red Wi-Fi cuando lo escanean.
    encryption: "WPA", "WEP" o "" (cadena vacía para red abierta)
    hidden: True si la red está oculta
    """
    # Asegurar formato correcto para campos vacíos
    enc = encryption if encryption else ""
    hidden_str = "true" if hidden else "false"
    payload = f'WIFI:T:{enc};S:{ssid};P:{password};H:{hidden_str};;'

    qr = qrcode.QRCode(
        version=None,
        error_correction=qrcode.constants.ERROR_CORRECT_M,
        box_size=10,
        border=4,
    )
    qr.add_data(payload)
    qr.make(fit=True)

    img = qr.make_image(fill_color="black", back_color="white")
    img.save(filename)
    return filename

if __name__ == "__main__":
    # EJEMPLO: cambia ssid y password por tus datos
    ssid = "WCamionesRivera 2.4"
    password = "24g13579def"
    archivo = generar_qr_wifi(ssid, password, encryption="WPA", hidden=False, filename="wifi_CamionesRivera.png")
    print("QR guardado en:", archivo)
