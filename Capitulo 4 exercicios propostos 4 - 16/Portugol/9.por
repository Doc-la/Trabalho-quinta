algoritmo estatisticas_alturas
    var
        alturas: vetor[1..50] de real
        soma_alturas, media, desvio_padrao, soma_quadrados, moda, frequencia_moda, cont_frequencia, mediana: real
        i, j: inteiro

    // Lendo as alturas
    para i de 1 ate 50 faca
        escreva("Digite a altura ", i, ": ")
        leia(alturas[i])
    fimPara

    // Calculando a média das alturas
    soma_alturas <- 0
    para i de 1 ate 50 faca
        soma_alturas <- soma_alturas + alturas[i]
    fimPara
    media <- soma_alturas / 50

    // Calculando o desvio padrão das alturas
    soma_quadrados <- 0
    para i de 1 ate 50 faca
        soma_quadrados <- soma_quadrados + ((alturas[i] - media) * (alturas[i] - media))
    fimPara
    desvio_padrao <- sqrt(soma_quadrados / 50)

    // Calculando a moda das alturas
    moda <- 0
    frequencia_moda <- 0
    para i de 1 ate 50 faca
        cont_frequencia <- 0
        para j de 1 ate 50 faca
            se alturas[i] = alturas[j] entao
                cont_frequencia <- cont_frequencia + 1
            fimSe
        fimPara
        se cont_frequencia > frequencia_moda entao
            moda <- alturas[i]
            frequencia_moda <- cont_frequencia
        fimSe
    fimPara

    // Calculando a mediana das alturas
    ordenar(alturas) // Função para ordenar o vetor de alturas
    se resto(50, 2) = 0 entao // Se o número de alturas for par
        mediana <- (alturas[25] + alturas[26]) / 2
    senao // Se o número de alturas for ímpar
        mediana <- alturas[26]
    fimSe

    // Exibindo os resultados
    escreva("Média das alturas: ", media, "\n")
    escreva("Desvio padrão das alturas: ", desvio_padrao, "\n")
    escreva("Moda das alturas: ", moda, "\n")
    escreva("Mediana das alturas: ", mediana)
fimAlgoritmo
