# Função para encontrar a união de dois vetores
def encontrar_uniao(vetor1, vetor2):
    uniao = []
    
    # Adicionando elementos do primeiro vetor à união
    for elemento in vetor1:
        if elemento not in uniao:
            uniao.append(elemento)
    
    # Adicionando elementos do segundo vetor à união
    for elemento in vetor2:
        if elemento not in uniao:
            uniao.append(elemento)
    
    return uniao

# Criando os vetores
vetor1 = []
vetor2 = []

# Preenchendo o primeiro vetor
print("Preencha o primeiro vetor:")
for i in range(1, 21):
    elemento = int(input("Digite o elemento {}: ".format(i)))
    vetor1.append(elemento)

# Preenchendo o segundo vetor
print("\nPreencha o segundo vetor:")
for i in range(1, 21):
    elemento = int(input("Digite o elemento {}: ".format(i)))
    vetor2.append(elemento)

# Encontrando a união
uniao = encontrar_uniao(vetor1, vetor2)

# Exibindo a união
print("\nA união dos vetores é:", uniao)
