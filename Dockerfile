# Usamos la imagen oficial de nginx
FROM nginx:latest

# Copiamos el archivo index.html personalizado en el directorio de nginx
COPY index.html /usr/share/nginx/html/index.html
