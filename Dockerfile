FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive

# Instala dependencias necesarias para agregar repositorios y Node.js
RUN apt-get update && \
    apt-get install -y \
    curl \
    wget \
    iputils-ping \
    gnupg \
    ca-certificates \
    dirmngr \
    lsb-release \
    software-properties-common
# Descargar el script con reintentos y luego ejecutarlo
RUN wget -q --tries=5 --timeout=10 https://deb.nodesource.com/setup_22.x -O /tmp/nodesource_setup.sh && \
    bash /tmp/nodesource_setup.sh

# Instalar node y cli angular
RUN apt-get install -y nodejs && \
    npm install -g @angular/cli@19 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/nodesource_setup.sh

# Establece el directorio de trabajo
WORKDIR /app

# Expone el puerto de Angular
EXPOSE 4200
