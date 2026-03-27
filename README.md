# Web Yokohama lista para GitHub + Coolify

## Qué incluye
- Sitio estático listo para despliegue con Dockerfile
- Sección de **Platillos Destacados** responsive
- Compatible con celular
- Configuración preparada para **Coolify**
- Healthcheck para que Coolify detecte mejor si el contenedor está sano

## Estructura importante
- `index.html` → página principal
- `assets/` → logos y recursos visuales
- `locations/` → imágenes de sucursales
- `platillos/` → aquí van las fotos del carrusel / área de platillos
- `menu.pdf` → menú en PDF
- `Dockerfile` → despliegue con Docker
- `nginx.conf` → configuración de Nginx
- `.dockerignore` → evita subir basura al build

## Cómo nombrar las fotos de platillos
Coloca las imágenes dentro de la carpeta `platillos/` con nombres como:

- `platillo-1.jpg`
- `platillo-2.jpg`
- `platillo-3.jpg`
- `platillo-4.jpg`
- `platillo-5.jpg`
- `platillo-6.jpg`
- `platillo-7.jpg`
- `platillo-8.jpg`

También acepta:
- `.jpeg`
- `.png`
- `.webp`

La web detecta automáticamente cuáles existen y solo muestra esas.

## Subida a GitHub
1. Crea un repositorio nuevo.
2. Sube **todo el contenido de esta carpeta** a la raíz del repo.
3. Asegúrate de incluir la carpeta `platillos/`, aunque al inicio esté vacía.

## Despliegue correcto en Coolify
1. Crea un recurso nuevo desde Git.
2. Elige **Dockerfile** como método de build.
3. Selecciona tu repositorio y rama.
4. En **Port Exposes** usa: `3000`
5. No agregues **Port Mappings** al host.
6. Haz deploy.

## Importante sobre el error Bad Gateway
Este proyecto quedó configurado para escuchar internamente en el puerto `3000`, que suele coincidir mejor con la configuración por defecto del build pack Dockerfile en Coolify.

Si todavía apareciera `Bad Gateway`, revisa estas 3 cosas:
- que `Port Exposes` esté en `3000`
- que el dominio apunte correctamente al servidor
- que el contenedor haya quedado en estado `healthy`

## Notas
- En móvil los platillos se ven como carrusel horizontal.
- En escritorio se muestran como cuadrícula.
- Si no hay imágenes en `platillos/`, la sección no aparece.
