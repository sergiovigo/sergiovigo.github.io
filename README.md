# sergiovigo.github.io

Este repositorio aloja la página personal publicada mediante GitHub Pages. Su objetivo principal es redirigir a la sección [`/online-cv`](./online-cv), donde se encuentra el currículum en línea.

## Clonación e inicialización del submódulo

```bash
git clone <repo>
cd sergiovigo.github.io
git submodule update --init --recursive
```

## Dependencias

Las dependencias del proyecto se gestionan mediante Bundler y están declaradas en el archivo `Gemfile`, aunque actualmente no hay gemas listadas. Para instalarlas, ejecute:

```bash
bundle install
```


## Pruebas

El repositorio incluye un script de comprobación sencilla llamado `test_redirect.sh` que verifica que `index.html` redirige correctamente a `/online-cv/`.

Para ejecutarlo:

```bash
./test_redirect.sh
```

El script mostrará `PASS` si la URL de la redirección es correcta o `FAIL` en caso contrario.

