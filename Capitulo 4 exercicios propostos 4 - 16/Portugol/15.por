algoritmo girar_matriz_90_graus
    var
        matriz: matriz[1..10, 1..10] de inteiro
        matriz_girada: matriz[1..10, 1..10] de inteiro
        i, j: inteiro

    // Preenchendo a matriz
    para i de 1 ate 10 faca
        para j de 1 ate 10 faca
            escreva("Digite o valor para a posição [", i, "][", j, "]: ")
            leia(matriz[i][j])
        fimPara
    fimPara

    // Girando a matriz 90 graus no sentido horário
    para i de 1 ate 10 faca
        para j de 1 ate 10 faca
            matriz_girada[j][10 - i + 1] <- matriz[i][j]
        fimPara
    fimPara

    // Exibindo a matriz girada
    para i de 1 ate 10 faca
        para j de 1 ate 10 faca
            escreva(matriz_girada[i][j], " ")
        escreval("")
    fimPara
fimAlgoritmo
