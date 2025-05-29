import os
import shutil

ruta_base = 'C:/Users/JMoreno/Pictures/CFD/'

pdf_folder = os.path.join(ruta_base, 'PDF')
vcr_folder = os.path.join(ruta_base, 'VRE')
vce_folder = os.path.join(ruta_base, 'VRM')

xml_folders = [vcr_folder, vce_folder]

print(f"Buscando XMLs en: {vcr_folder} y {vce_folder}")
print(f"Buscando PDFs en: {pdf_folder}\n")

# Limpiar archivo de no encontrados
with open('no_encontrados.txt', "w", encoding='utf-8') as archivo:
    archivo.write("PDFs no encontrados:\n")

encontrados = 0

for xml_root in xml_folders:
    for carpeta, subcarpeta, nomArchiv in os.walk(xml_root):
        for file in nomArchiv:
            if file.lower().endswith('.xml'):
                file_name_no_ext = os.path.splitext(file)[0]
                pdf_name = file_name_no_ext + '.pdf'
                pdf_path = os.path.join(pdf_folder, pdf_name)
                destino = os.path.join(carpeta, pdf_name)

                print(f"Encontrado XML: {file}")
                print(f"Buscando PDF: {pdf_path}")

                if os.path.exists(pdf_path):
                    if not os.path.exists(destino):
                        try:
                            shutil.move(pdf_path, destino)
                            print(f" → Moviendo PDF a {destino}\n")
                            encontrados += 1
                        except Exception as e:
                            print(f" → Error al mover PDF: {e}\n")
                    else:
                        print(f" → Ya existe PDF en destino: {destino}\n")
                else:
                    print(f" → PDF no encontrado: {pdf_path}\n")
                    with open('no_encontrados.txt', "a", encoding='utf-8') as archivo:
                        archivo.writelines(f"{pdf_path}\n")

print(f"Total de PDFs movidos: {encontrados}")
