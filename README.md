# Yokohama Web - lista para Coolify con Dockerfile

## Subir a GitHub
Sube el contenido de esta carpeta a la raiz del repositorio.

## Configuracion correcta en Coolify
- Build Pack: Dockerfile
- Base Directory: /
- Dockerfile Location: vacio o /Dockerfile
- Ports Exposes: 80
- Port Mappings: vacio
- Domains: deja el dominio generado o tu dominio final

## Healthcheck recomendado en Coolify
En la pestana Healthcheck:
- Enable: activado
- Path: /healthz
- Port: 80
- Method: GET
- Expected Code: 200

Si prefieres, tambien puedes desactivar el healthcheck para probar primero el arranque.

## Fotos del carrusel / platillos
Colocalas en la carpeta `platillos/` con nombres como:
- platillo-1.jpg
- platillo-2.jpg
- platillo-3.jpg
- platillo-4.jpg

Tambien sirven .jpeg, .png y .webp.
