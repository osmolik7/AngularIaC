# Entorno de Desarrollo Angular con Docker

Este repositorio contiene una configuración completa para levantar un entorno de desarrollo Angular utilizando Docker. Utiliza la versión 22 de Node.js y la CLI de Angular 19 sobre una imagen base de Ubuntu. El objetivo es facilitar la creación, desarrollo y prueba de proyectos Angular sin necesidad de instalar Node.js o Angular CLI directamente en tu máquina.


## 🧰 Requisitos Previos

- Windows 10/11
- [Docker Desktop](https://www.docker.com/products/docker-desktop/)
  

## 🐳 Instalación de Docker en Windows

1. Dirígete a [docker.com](https://www.docker.com/products/docker-desktop/) y descarga Docker Desktop.
2. Instálalo y sigue las instrucciones del instalador.
3. Habilita la virtualización en la BIOS si es necesario.
4. Abre Docker Desktop y verifica que esté corriendo (ícono de ballena en la barra de tareas).
5. Ejecuta `docker version` en una terminal (CMD o PowerShell) para verificar que Docker esté funcionando correctamente.
   

## 🛠 Cómo usar
1. **Descarga los archivos:**
- Clona este repositorio o descarga los siguientes archivos manualmente:
  
  ```text
  - Dockerfile  
  - docker-compose.yml` 
  - .env
  ```
2. **Modifica el archivo .env** (opcional)
- Puedes cambiar los valores a conveniencia del proyecto, contenedor e imagen.
  
  ```env
  PROJECT_NAME=basicosAngular
  CONTAINER_NAME=basicosAngular
  IMAGEN=angular-dev:1.0
  ```
3. **Construye la imagen:**
- Abre una terminal en la carpeta que descargaste este repositorio.
- Ejecuta el siguiente script, considera que el nombre de la imagen con tag debe ser igual al del archivo .env
  
  ```bash
  docker build -t <nombre-imagen>:<tag> .
  ```
4. **Inicia el contenedor:**
- Crea un nuevo contenedor si no existe o bien inicia el que ya se habia creado
  
  ```bash
  docker-compose up
  ```
5. **Abre tu navegador:**
- http://localhost:4500
