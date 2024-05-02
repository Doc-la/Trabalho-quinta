algoritmo somas_matriz
    var
        matriz: matriz[1..5, 1..5] de inteiro
        soma_impares, soma_colunas, soma_linhas: vetor[1..5] de inteiro
        i, j: inteiro

    // Preenchendo a matriz
    para i de 1 ate 5 faca
        para j de 1 ate 5 faca
            escreva("Digite o valor para a posição [", i, "][", j, "]: ")
            leia(matriz[i][j])
        fimPara
    fimPara

    // Inicializando variáveis para armazenar as somas
    soma_impares <- 0
    para i de 1 ate 5 faca
        soma_colunas[i] <- 0
        soma_linhas[i] <- 0
    fimPara

    // Calculando a soma dos números ímpares, das colunas e das linhas
    para i de 1 ate 5 faca
        para j de 1 ate 5 faca
            se matriz[i][j] % 2 <> 0 entao
                soma_impares <- soma_impares + matriz[i][j]
            fimSe
            soma_colunas[j] <- soma_colunas[j] + matriz[i][j]
            soma_linhas[i] <- soma_linhas[i] + matriz[i][j]
        fimPara
    fimPara

    // Exibindo os resultados
    escreva("Soma dos números ímpares: ", soma_impares, "\n")
    escreva("Soma de cada coluna:\n")
    para i de 1 ate 5 faca
        escreva("Coluna ", i, ": ", soma_colunas[i], "\n")
    fimPara
    escreva("Soma de cada linha:\n")
    para i de 1 ate 5 faca
        escreva("Linha ", i, ": ", soma_linhas[i], "\n")
    fimPara
fimAlgoritmo
