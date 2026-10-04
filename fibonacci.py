def fibonacci(n: int) -> int:
    """Devuelve el valor de la serie de Fibonacci en la posición n.

    La serie empieza en F(0) = 0, F(1) = 1, F(2) = 1, F(3) = 2, ...
    """
    if not isinstance(n, int) or isinstance(n, bool):
        raise TypeError("n debe ser un entero")
    if n < 0:
        raise ValueError("n debe ser mayor o igual que 0")

    a, b = 0, 1
    for _ in range(n):
        a, b = b, a + b
    return a


if __name__ == "__main__":
    for i in range(11):
        print(f"fibonacci({i}) = {fibonacci(i)}")
