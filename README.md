# Test-Claude

Pruebas pequeñas en Python y R.

## Contenido

| Archivo | Descripción |
| --- | --- |
| `fibonacci.py` | Función de Python que devuelve el valor de la serie de Fibonacci en una posición dada. |
| `uniforme.R` | Genera 100 valores de una uniforme U(0, 1), los grafica y calcula media y desviación estándar. |
| `uniforme.png` | Gráfica generada por `uniforme.R`. |

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

## Uniforme (`uniforme.R`)

```bash
Rscript uniforme.R
```

Imprime la media y la desviación estándar de la muestra junto a sus valores teóricos (0.5 y 1/√12 ≈ 0.2887) y guarda la gráfica en `uniforme.png`. Usa `set.seed(42)`, así que cada ejecución da la misma muestra.
