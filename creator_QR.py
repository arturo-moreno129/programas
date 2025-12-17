import qrcode

# URL del sitio web
url = "https://vadisatextil.com.mx/"

# Crear el objeto QR
qr = qrcode.QRCode(
    version=1,  # tamaño del QR (1 es el más pequeño)
    error_correction=qrcode.constants.ERROR_CORRECT_L,
    box_size=10,
    border=4,
)

# Agregar la URL al QR
qr.add_data(url)
qr.make(fit=True)

# Crear la imagen del QR
img = qr.make_image(fill_color="black", back_color="white")

# Guardar la imagen
img.save("codigo_qr_ejemplo.png")