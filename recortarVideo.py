from moviepy.video.io.VideoFileClip import VideoFileClip

# Cargar el video
video = VideoFileClip("C:/Users/JMoreno/Videos/Ticket_1574.mp4")

# Recortar el video: especifica el tiempo de inicio y fin (en segundos)
inicio = 9*60  # Empieza en el segundo 0           minutos a segundos = minutos * 60
#fin = 1*3600  # Termina en el segundo 30           horas a segundos = minutos * 3600
video_recortado = video.subclipped(inicio)

# Guardar el video recortado
video_recortado.write_videofile("video_recortado.mp4", codec="libx264", audio_codec="aac")

# Cerrar los clips para liberar recursos
video.close()
video_recortado.close()
