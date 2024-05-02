# Função para criar o ranking dos participantes com mais de 70 pontos
def criar_ranking(nomes, pontuacoes):
    participantes = [(nome, pontuacao) for nome, pontuacao in zip(nomes, pontuacoes) if pontuacao > 70]
    ranking = sorted(participantes, key=lambda x: x[1], reverse=True)
    return ranking

# Listas para armazenar os nomes e pontuações
nomes = []
pontuacoes = []

# Lendo os nomes e pontuações dos participantes
for i in range(1, 201):
    nome = input("Digite o nome do participante {}: ".format(i))
    pontuacao = int(input("Digite a pontuação final de {}: ".format(nome)))
    nomes.append(nome)
    pontuacoes.append(pontuacao)

# Criando o ranking dos participantes com mais de 70 pontos
ranking = criar_ranking(nomes, pontuacoes)

# Exibindo o ranking
print("\nRanking dos participantes com mais de 70 pontos:")
for i, (nome, pontuacao) in enumerate(ranking, start=1):
    print(f"{i}. {nome} - Pontuação: {pontuacao}")
