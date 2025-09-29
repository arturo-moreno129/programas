@echo off
:inicio
echo ==========================
echo   Iniciando ngrok...
echo ==========================
ngrok http --domain=absolute-pegasus-plainly.ngrok-free.app 80
echo ==========================
echo   Ngrok se detuvo.
echo   Reiniciando en 5 segundos...
echo ==========================
timeout /t 5
goto inicio
