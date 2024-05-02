def calcular_lucro(custo, preco):
    lucro = (preco - custo) / custo * 100
    return lucro

produtos = []

# Lendo os dados dos produtos
for i in range(1, 51):
    nome = input("Digite o nome do produto {}: ".format(i))
    custo = float(input("Digite o custo do produto {}: ".format(i)))
    preco = float(input("Digite o preço de venda do produto {}: ".format(i)))
    produtos.append((nome, custo, preco))

# Separando os produtos de acordo com o lucro
lucro_menor_10 = []
lucro_entre_10_e_30 = []
lucro_maior_30 = []

for produto in produtos:
    nome, custo, preco = produto
    lucro = calcular_lucro(custo, preco)
    if lucro < 10:
        lucro_menor_10.append(produto)
    elif 10 <= lucro <= 30:
        lucro_entre_10_e_30.append(produto)
    else:
        lucro_maior_30.append(produto)

# Exibindo os resultados
print("Produtos com lucro menor que 10%:")
for produto in lucro_menor_10:
    print(produto)

print("\nProdutos com lucro entre 10% e 30%:")
for produto in lucro_entre_10_e_30:
    print(produto)

print("\nProdutos com lucro maior que 30%:")
for produto in lucro_maior_30:
    print(produto)
