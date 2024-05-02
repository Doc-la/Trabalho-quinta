import statistics

# Função para calcular o desvio padrão
def calcular_desvio_padrao(alturas):
    return statistics.stdev(alturas)

# Função para calcular a moda
def calcular_moda(alturas):
    return statistics.mode(alturas)

# Função para calcular a mediana
def calcular_mediana(alturas):
    return statistics.median(alturas)

# Lista de alturas
alturas = []

# Lendo as alturas
print("Digite as alturas:")
for i in range(1, 51):
    altura = float(input(f"Altura {i}: "))
    alturas.append(altura)

# Calculando a média das alturas
media = sum(alturas) / len(alturas)

# Calculando o desvio padrão das alturas
desvio_padrao = calcular_desvio_padrao(alturas)

# Calculando a moda das alturas
moda = calcular_moda(alturas)

# Calculando a mediana das alturas
mediana = calcular_mediana(alturas)

# Exibindo os resultados
print("\nMédia das alturas:", media)
print("Desvio padrão das alturas:", desvio_padrao)
print("Moda das alturas:", moda)
print("Mediana das alturas:", mediana)
