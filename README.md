# templates

Plantillas para tesis, casos y presentaciones.

## Contenido

| Ruta | Descripción |
| --- | --- |
| `tesis-latex/` | Plantilla en LaTeX para escribir una tesis, tesina o caso en el ITAM. |
| `fibonacci.py` | Función de Python que devuelve el valor de la serie de Fibonacci en una posición dada. |

## Plantilla de tesis (`tesis-latex/`)

```
tesis-latex/template/
├── maestria.tex          # documento principal
├── referencias.bib       # bibliografía (BibTeX)
├── capitulos/            # portada, declaración, capítulos y bibliografía
└── imagenes/             # figuras y logo del ITAM
```

### Cómo usarla

1. Edita la portada en `capitulos/title.tex` (título, grado, autor, asesor).
2. Escribe cada capítulo en un archivo de `capitulos/` y añádelo a `maestria.tex` con `\include{./capitulos/<nombre>}`.
3. Agrega tus referencias a `referencias.bib`.
4. Guarda las figuras en `imagenes/`; se cargan por nombre con `\includegraphics`.

### Compilar

Desde `tesis-latex/template/`:

```bash
latexmk -pdf maestria.tex
```

O, sin `latexmk`:

```bash
pdflatex maestria
bibtex maestria
pdflatex maestria
pdflatex maestria
```

También funciona subiendo la carpeta `template/` a Overleaf.

## Fibonacci (`fibonacci.py`)

```python
from fibonacci import fibonacci

fibonacci(0)   # 0
fibonacci(10)  # 55
```

La serie empieza en la posición 0. Lanza `ValueError` con números negativos y `TypeError` si no recibe un entero.

```bash
python3 fibonacci.py   # imprime los primeros 11 valores
```
