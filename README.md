# demoAngular-docker


#
## Instrucciones para trabajar Crear un ambiente de desarrollo de Angular en Docker

### Crear la imagen Docker

```bash
docker compose build
```

### Iniciar el contenedor de desarrollo Angular


```
docker compose up -d
```

\`\`\`

### Crear un nuevo proyecto Angular

```
ng new NOMBRE-APP
```


### Iniciar la aplicación Angular

- Asegúrate de estar dentro del directorio del proyecto de Angular. Luego, para iniciar la aplicación Angular y hacerla accesible externamente:


```
ng serve --host 0.0.0.0
```
