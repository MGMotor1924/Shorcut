@echo off
set shortcutName=Intranet MG Orange
set shortcutPath=%PUBLIC%\Desktop\%shortcutName%.url
set url=https://mgmexico.orangehrmlive.com/
set iconUrl=https://mgmotormex-my.sharepoint.com/:i:/g/personal/arturo_contreras_mgmotor_com_mx/Edxewc7OvZJEgzHYC8ACJO8BphdoVx2lwXVjkGG20gmZ3g?e=gZOQPP
set iconPath=%TEMP%\icon.ico

:: Descargar el icono
bitsadmin /transfer myDownloadJob /download /priority normal %iconUrl% %iconPath%

:: Crear el archivo .url
(
echo [InternetShortcut]
echo URL=%url%
echo IconFile=%iconPath%
echo IconIndex=0
) > "%shortcutPath%"

echo Shortcut created successfully at %shortcutPath%
