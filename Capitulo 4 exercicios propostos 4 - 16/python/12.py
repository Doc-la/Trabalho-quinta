# Função para preencher a matriz 10x10
def preencher_matriz():
    matriz = []
    for i in range(10):
        linha = []
        for j in range(10):
            valor = int(input(f"Digite o valor para a posição [{i + 1}][{j + 1}]: "))
            linha.append(valor)
        matriz.append(linha)
    return matriz

# Função para encontrar os maiores elementos de cada linha
def encontrar_maiores_linha(matriz):
    maiores_linha = []
    for linha in matriz:
        maiores_linha.append(max(linha))
    return maiores_linha

# Função para encontrar os menores elementos de cada coluna
def encontrar_menores_coluna(matriz):
    menores_coluna = []
    for j in range(10):
        menor = matriz[0][j]
        for i in range(1, 10):
            if matriz[i][j] < menor:
                menor = matriz[i][j]
        menores_coluna.append(menor)
    return menores_coluna

# Preenchendo a matriz
matriz = preencher_matriz()

# Encontrando os maiores elementos de cada linha
maiores_linha = encontrar_maiores_linha(matriz)

# Encontrando os menores elementos de cada coluna
menores_coluna = encontrar_menores_coluna(matriz)

# Exibindo os resultados
print("Maiores elementos de cada linha:")
print(maiores_linha)
print("Menores elementos de cada coluna:")
print(menores_coluna)
