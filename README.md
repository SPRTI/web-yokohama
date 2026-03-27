# Web Yokohama lista para GitHub + Coolify

## Estructura importante
- `index.html` → página principal
- `assets/` → logos y recursos visuales
- `locations/` → imágenes de sucursales
- `platillos/` → aquí van las fotos del carrusel / área de platillos
- `menu.pdf` → menú en PDF
- `Dockerfile` → despliegue con Docker
- `nginx.conf` → configuración de Nginx

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
1. Sube todo el contenido del proyecto a un repositorio.
2. Asegúrate de incluir la carpeta `platillos/`, aunque esté vacía.
3. Si quieres que el apartado aparezca de una vez, mete antes tus fotos con los nombres indicados.

## Despliegue en Coolify
1. En Coolify crea un nuevo recurso desde Git.
2. Conecta tu repositorio.
3. Selecciona despliegue por `Dockerfile`.
4. Confirma que el puerto expuesto sea `80`.
5. Despliega.

## Notas
- El apartado de platillos se mantiene responsive.
- En móvil se ve como carrusel horizontal deslizable.
- En escritorio se muestra como una cuadrícula elegante.
- Si no hay imágenes en `platillos/`, la sección no aparece.
