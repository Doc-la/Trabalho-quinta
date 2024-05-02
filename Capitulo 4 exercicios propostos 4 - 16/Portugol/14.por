algoritmo trocas_matriz
    var
        matriz: matriz[1..5, 1..5] de inteiro
        temp: inteiro
        i, j: inteiro

    // Preenchendo a matriz
    para i de 1 ate 5 faca
        para j de 1 ate 5 faca
            escreva("Digite o valor para a posição [", i, "][", j, "]: ")
            leia(matriz[i][j])
        fimPara
    fimPara

    // Trocando a segunda e a quinta linha
    para j de 1 ate 5 faca
        temp <- matriz[2][j]
        matriz[2][j] <- matriz[5][j]
        matriz[5][j] <- temp
    fimPara

    // Trocando a primeira e a quarta coluna
    para i de 1 ate 5 faca
        temp <- matriz[i][1]
        matriz[i][1] <- matriz[i][4]
        matriz[i][4] <- temp
    fimPara

    // Trocando a diagonal principal e secundária
    para i de 1 ate 5 faca
        temp <- matriz[i][i]
        matriz[i][i] <- matriz[i][6 - i]
        matriz[i][6 - i] <- temp
    fimPara

    // Exibindo a matriz modificada
    para i de 1 ate 5 faca
        para j de 1 ate 5 faca
            escreva(matriz[i][j], " ")
        escreval("")
    fimPara
fimAlgoritmo
