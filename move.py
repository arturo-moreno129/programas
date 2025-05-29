import os #esto es para poder trabajar con rutas y archivos.
import shutil #esta biblioteca nos ayuda para mover archivos 

# Ruta principal: REEMPLAZA esto con tu ruta real
ruta_base = 'C:/Users/JMoreno/Pictures/CFD/'

pdf_folder = os.path.join(ruta_base, 'PDF')
vcr_folder = os.path.join(ruta_base, 'VRE')
vce_folder = os.path.join(ruta_base, 'VRM')

xml_folders = [vcr_folder, vce_folder]

print(f"Buscando XMLs en: {vcr_folder} y {vce_folder}")
print(f"Buscando PDFs en: {pdf_folder}\n")

encontrados = 0

for xml_root in xml_folders:
    for carpeta, subcarpeta, nomArchiv in os.walk(xml_root): #Usa os.walk() para recorrer recursivamente cada subcarpeta dentro de VCR y VCE. 
        for file in nomArchiv:
            if file.lower().endswith('.xml'): #Verifica si el archivo actual es un archivo XML (sin importar mayúsculas o minúsculas).
                file_name_no_ext = os.path.splitext(file)[0] #Extrae el nombre del archivo sin extensión
                pdf_name = file_name_no_ext + '.pdf'#Construye el nombre del archivo PDF correspondiente.
                pdf_path = os.path.join(pdf_folder, pdf_name)#Crea la ruta completa del PDF dentro de la carpeta
                destino = os.path.join(carpeta, pdf_name)#Crea la ruta donde se quiere mover el PDF, es decir, a la misma carpeta donde está el XML.

                print(f"Encontrado XML: {file}")
                print(f"Buscando PDF: {pdf_path}")

                if os.path.exists(pdf_path): #Verifica si el archivo PDF realmente existe en la carpeta
                    if not os.path.exists(destino):#Verifica si ya existe un archivo con ese nombre en el destino (para evitar sobrescribirlo).
                        print(f" → Moviendo PDF a {destino}\n")
                        shutil.move(pdf_path, destino)#mueve el archivo al destino
                        encontrados += 1
                    else:
                        print(f" → Ya existe PDF en destino: {destino}\n")
                else:
                    print(f" → PDF no encontrado: {pdf_path}\n")
                    

print(f"Total de PDFs movidos: {encontrados}")#cuenta cuanto s pdf se movieron
