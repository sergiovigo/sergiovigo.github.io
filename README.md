# sergiovigo.github.io

Este repositorio aloja la página personal publicada mediante GitHub Pages. Su objetivo principal es redirigir a la sección [`/online-cv`](./online-cv), donde se encuentra el currículum en línea.

Tras clonar el repositorio debes ejecutar `git submodule update --init --recursive` para descargar la carpeta `online-cv`.

## Clonación e inicialización del submódulo

```bash
git clone <repo>
cd sergiovigo.github.io
git submodule update --init --recursive
```
GitHub Pages no podrá generar correctamente el sitio si este submódulo no se ha descargado, por lo que el CV aparecerá vacío o la publicación fallará.

## Dependencias

Las dependencias del proyecto se gestionan mediante Bundler y están declaradas en el archivo `Gemfile`, aunque actualmente no hay gemas listadas. Para instalarlas, ejecute:

```bash
bundle install
```


## Estructura del proyecto

El repositorio es deliberadamente pequeño y está orientado a servir de puerta de entrada hacia el CV hospedado como submódulo. Los archivos incluidos cumplen las siguientes funciones:

| Archivo | Propósito |
| --- | --- |
| `index.html` | Página mínima que redirige automáticamente a [`/online-cv`](./online-cv) mediante una metaetiqueta `refresh`. Incluye un mensaje de respaldo por si la redirección se desactiva. |
| `online-cv/` | Submódulo de Git que contiene el currículum real. Tras inicializarlo se poblará con todos los activos necesarios para la web. |
| `test_redirect.sh` | Script Bash que comprueba de forma automática que la metaetiqueta de `index.html` siga apuntando a `/online-cv/`. |
| `Gemfile` y `Gemfile.lock` | Configuración de Bundler. Se incluyen para facilitar la gestión futura de dependencias Ruby si el sitio llega a necesitarlas. |

## Pruebas

El repositorio incluye un script de comprobación sencilla llamado `test_redirect.sh` que verifica que `index.html` redirige correctamente a `/online-cv/`.

Para ejecutarlo:

```bash
./test_redirect.sh
```

El script mostrará `PASS` si la URL de la redirección es correcta o `FAIL` en caso contrario.

