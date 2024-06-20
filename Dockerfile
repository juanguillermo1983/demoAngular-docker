# Usar la imagen base de Ubuntu
FROM ubuntu:latest

# Establecer las variables de entorno para evitar preguntas durante la instalación
ENV DEBIAN_FRONTEND=noninteractive

# Actualizar los repositorios e instalar las dependencias necesarias
RUN apt-get update && \
    apt-get install -y curl gnupg build-essential git && \
    apt-get clean

# Instalar nvm (Node Version Manager)
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# Instalar Node.js v20.14.0 y establecerla como la versión predeterminada 
RUN /bin/bash -c "source /root/.nvm/nvm.sh && nvm install 20 && nvm alias default 20"

# Verificar la versión de Node.js instalada
#RUN node -v

# Verificar la versión de npm instalada
#RUN npm -v

# Instalar Angular CLI de manera global
RUN /bin/bash -c "source /root/.nvm/nvm.sh && npm install -g @angular/cli"


# Crear un directorio de trabajo
WORKDIR /app

# Exponer el puerto que usará la aplicación Angular
EXPOSE 4200

# Comando por defecto
CMD ["bash"]
