# Função para imprimir a matriz
def imprimir_matriz(matriz):
    for linha in matriz:
        print(" ".join(map(str, linha)))

# Preenchendo a matriz 5x5
matriz = []
for i in range(5):
    linha = []
    for j in range(5):
        valor = int(input(f"Digite o valor para a posição [{i + 1}][{j + 1}]: "))
        linha.append(valor)
    matriz.append(linha)

# Trocando a segunda e a quinta linha
matriz[1], matriz[4] = matriz[4], matriz[1]

# Trocando a primeira e a quarta coluna
for i in range(5):
    matriz[i][0], matriz[i][3] = matriz[i][3], matriz[i][0]

# Trocando a diagonal principal e secundária
for i in range(5):
    matriz[i][i], matriz[i][4 - i] = matriz[i][4 - i], matriz[i][i]

# Exibindo a matriz modificada
print("\nMatriz modificada:")
imprimir_matriz(matriz)
1