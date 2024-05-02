# Função para preencher a matriz 5x5
def preencher_matriz():
    matriz = []
    for i in range(5):
        linha = []
        for j in range(5):
            valor = int(input(f"Digite o valor para a posição [{i + 1}][{j + 1}]: "))
            linha.append(valor)
        matriz.append(linha)
    return matriz

# Função para calcular a soma dos números ímpares, das colunas e das linhas
def calcular_somas(matriz):
    soma_impares = 0
    soma_colunas = [0] * 5
    soma_linhas = [0] * 5

    for i in range(5):
        for j in range(5):
            if matriz[i][j] % 2 != 0:
                soma_impares += matriz[i][j]
            soma_colunas[j] += matriz[i][j]
            soma_linhas[i] += matriz[i][j]

    return soma_impares, soma_colunas, soma_linhas

# Função para exibir os resultados
def exibir_resultados(soma_impares, soma_colunas, soma_linhas):
    print("Soma dos números ímpares:", soma_impares)
    print("Soma de cada coluna:")
    for i, soma in enumerate(soma_colunas, start=1):
        print(f"Coluna {i}: {soma}")
    print("Soma de cada linha:")
    for i, soma in enumerate(soma_linhas, start=1):
        print(f"Linha {i}: {soma}")

# Preenchendo a matriz
matriz = preencher_matriz()

# Calculando as somas
soma_impares, soma_colunas, soma_linhas = calcular_somas(matriz)

# Exibindo os resultados
exibir_resultados(soma_impares, soma_colunas, soma_linhas)
