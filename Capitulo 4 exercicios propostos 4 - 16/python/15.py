# Função para imprimir a matriz
def imprimir_matriz(matriz):
    for linha in matriz:
        print(" ".join(map(str, linha)))

# Função para girar a matriz 90 graus no sentido horário
def girar_matriz_90_graus(matriz):
    n = len(matriz)
    matriz_girada = [[0] * n for _ in range(n)]
    for i in range(n):
        for j in range(n):
            matriz_girada[j][n - i - 1] = matriz[i][j]
    return matriz_girada

# Preenchendo a matriz 10x10
matriz = []
for i in range(10):
    linha = []
    for j in range(10):
        valor = int(input(f"Digite o valor para a posição [{i + 1}][{j + 1}]: "))
        linha.append(valor)
    matriz.append(linha)

# Girando a matriz 90 graus no sentido horário
matriz_girada = girar_matriz_90_graus(matriz)

# Exibindo a matriz girada
print("\nMatriz girada 90 graus no sentido horário:")
imprimir_matriz(matriz_girada)
