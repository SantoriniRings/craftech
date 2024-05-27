# Despliegue de una aplicación Django y React.js

Este repositorio contiene una aplicación web desarrollada con Django (backend) y React.js (frontend), dockerizada para facilitar el despliegue y la gestión de los servicios.
La aplicación es un pequeño CRUD de y su función es crear Tareas para ayudar a la organización del usuario. Pruebala!

## Instrucciones de Despliegue

### Prerrequisitos

- Docker instalado en tu sistema. Puedes descargar Docker desde [este enlace](https://www.docker.com/get-started).

### Clonar el Repositorio

```git clone <https://github.com/SantoriniRings/craftech.git>```

### Dirigirse a la carpeta del repositorio
```cd <craftech>```

### Compilar y Desplegar en una PC Local
1. Compilar y ejecutar el Docker Compose del repositorio
``` docker-compose up --build ```
2. Una vez construida y desplegada la aplicación, comienza a utilizarla desde la dirección web `http://localhost:5173`.

## Extra - Desplegar en la nube AWS

### AWS

1. Subir las imágenes de Docker a Amazon ECR (Elastic Container Registry).
2. Crear un clúster de contenedores en Amazon ECS (Elastic Container Service).
3. Desplegar los contenedores en el clúster utilizando ECS.


## Estructura del proyecto:
- **backend**: Contiene los archivos relacionados a Django Rest Framework acerca de la aplicación
    - **Dockerfile**: Configuración para construir la imagen de Docker del backend.
    - **requirements.txt**: Lista de dependencias de Python para el backend.
    - Otros archivos de Django.

- **frontend**: Contiene los archivos relacionados con ReactJS acerca de la aplicación
    - **Dockerfile**: Configuración para construir la imagen de Docker del frontend.
    - Otros archivos de React.js.

- **docker-compose.yml**: Archivo de configuración de Docker Compose para orquestar los servicios.


