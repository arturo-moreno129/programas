from flask import Flask, request, jsonify
import mysql.connector

app = Flask(__name__)

# Configurar conexión a la base de datos
db_config = {
    "host": "localhost",
    "user": "tu_usuario",
    "password": "tu_contraseña",
    "database": "impresiones"
}

def guardar_impresion(datos):
    try:
        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor()
        sql = """INSERT INTO registros (usuario, impresora, documento, paginas, copias, fecha)
                 VALUES (%s, %s, %s, %s, %s, %s)"""
        valores = (datos["usuario"], datos["impresora"], datos["documento"], datos["paginas"], datos["copias"], datos["fecha"])
        cursor.execute(sql, valores)
        conn.commit()
        cursor.close()
        conn.close()
        return True
    except Exception as e:
        print("Error en la base de datos:", e)
        return False

@app.route("/guardar_impresion", methods=["POST"])
def recibir_datos():
    datos = request.json
    if guardar_impresion(datos):
        return jsonify({"mensaje": "Registro guardado"}), 200
    return jsonify({"mensaje": "Error al guardar"}), 500

if __name__ == "__main__":
    app.run(debug=True)
