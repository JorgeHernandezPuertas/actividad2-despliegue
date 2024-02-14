# Copio una imagen para utilizarla como directorio intermedio build
FROM node:latest AS build

# Cambio mi directorio de trabajo al de la app
WORKDIR /app

# Copio los archivos package.json y package-lock.json que necesito para saber las dependencias
COPY package*.json ./

# Instalo las dependencias en la App gracias a los .json
RUN npm install

# Copio todos los archivos de mi app a la del docker
COPY . .

# Buildeo la app del docker
RUN npm run build

# Una vez creada la build de la app en el docker, monto el apache

# Uso una imagen de apache
FROM httpd:latest

# Copio el build creado anteriormente en el directorio intermedio en el servidor apache
COPY --from=build /app/build/ /usr/local/apache2/htdocs/

#Expongo el puerto 80 del docker al exterior
EXPOSE 80