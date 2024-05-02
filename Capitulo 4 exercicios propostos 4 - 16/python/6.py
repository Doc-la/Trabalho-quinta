def encontrar_interseccao(vetor1, vetor2):
    interseccao = []
    
    for elemento in vetor1:
        if elemento in vetor2 and elemento not in interseccao:
            interseccao.append(elemento)
    
    return interseccao

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

# Encontrando a interseção
interseccao = encontrar_interseccao(vetor1, vetor2)

# Exibindo a interseção
print("\nA interseção dos vetores é:", interseccao)
