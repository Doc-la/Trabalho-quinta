# Função para gerar o Triângulo de Pascal
def triangulo_de_pascal(n):
    triangulo = []
    for i in range(n):
        linha = [1] * (i + 1)
        for j in range(1, i):
            linha[j] = triangulo[i - 1][j - 1] + triangulo[i - 1][j]
        triangulo.append(linha)
    return triangulo

# Função para exibir o Triângulo de Pascal
def exibir_triangulo(triangulo):
    for linha in triangulo:
        print(" ".join(map(str, linha)))

# Lendo o número de linhas
n = int(input("Digite o número de linhas do Triângulo de Pascal: "))

# Gerando e exibindo o Triângulo de Pascal
triangulo = triangulo_de_pascal(n)
exibir_triangulo(triangulo)
