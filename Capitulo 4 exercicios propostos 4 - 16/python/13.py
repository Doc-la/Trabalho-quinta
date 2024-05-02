# Função para imprimir a matriz
def imprimir_matriz(matriz):
    for linha in matriz:
        print(" ".join(map(str, linha)))

# Função para imprimir a diagonal principal
def diagonal_principal(matriz):
    diagonal = [matriz[i][i] for i in range(len(matriz))]
    print("Diagonal principal:", diagonal)

# Função para imprimir o triângulo superior à diagonal principal
def triangulo_superior(matriz):
    for i in range(len(matriz)):
        for j in range(i + 1, len(matriz)):
            print(matriz[i][j], end=" ")
    print()

# Função para imprimir o triângulo inferior à diagonal principal
def triangulo_inferior(matriz):
    for i in range(1, len(matriz)):
        for j in range(i):
            print(matriz[i][j], end=" ")
    print()

# Função para imprimir tudo exceto a diagonal principal
def tudo_exceto_diagonal_principal(matriz):
    for i in range(len(matriz)):
        for j in range(len(matriz)):
            if i != j:
                print(matriz[i][j], end=" ")
    print()

# Função para imprimir a diagonal secundária
def diagonal_secundaria(matriz):
    diagonal = [matriz[i][len(matriz) - 1 - i] for i in range(len(matriz))]
    print("Diagonal secundária:", diagonal)

# Função para imprimir o triângulo superior à diagonal secundária
def triangulo_superior_secundario(matriz):
    for i in range(len(matriz) - 1):
        for j in range(len(matriz) - 1 - i):
            print(matriz[i][j], end=" ")
    print()

# Função para imprimir o triângulo inferior à diagonal secundária
def triangulo_inferior_secundario(matriz):
    for i in range(1, len(matriz)):
        for j in range(len(matriz) - i, len(matriz)):
            print(matriz[i][j], end=" ")
    print()

# Função para imprimir tudo exceto a diagonal secundária
def tudo_exceto_diagonal_secundaria(matriz):
    for i in range(len(matriz)):
        for j in range(len(matriz)):
            if j != len(matriz) - 1 - i:
                print(matriz[i][j], end=" ")
    print()

# Preenchendo a matriz 5x5
matriz = []
for i in range(5):
    linha = []
    for j in range(5):
        valor = int(input(f"Digite o valor para a posição [{i + 1}][{j + 1}]: "))
        linha.append(valor)
    matriz.append(linha)

# Chamando as funções para realizar as operações
print("\nMatriz:")
imprimir_matriz(matriz)
print()
diagonal_principal(matriz)
print()
print("Triângulo superior à diagonal principal:")
triangulo_superior(matriz)
print("Triângulo inferior à diagonal principal:")
triangulo_inferior(matriz)
print("Tudo exceto a diagonal principal:")
tudo_exceto_diagonal_principal(matriz)
print()
diagonal_secundaria(matriz)
print()
print("Triângulo superior à diagonal secundária:")
triangulo_superior_secundario(matriz)
print("Triângulo inferior à diagonal secundária:")
triangulo_inferior_secundario(matriz)
print("Tudo exceto a diagonal secundária:")
tudo_exceto_diagonal_secundaria(matriz)
