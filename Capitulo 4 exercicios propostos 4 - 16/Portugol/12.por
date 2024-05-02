algoritmo maiores_menores_matriz
    var
        matriz: matriz[1..10, 1..10] de inteiro
        maiores_linha: vetor[1..10] de inteiro
        menores_coluna: vetor[1..10] de inteiro
        i, j: inteiro

    // Preenchendo a matriz
    para i de 1 ate 10 faca
        para j de 1 ate 10 faca
            escreva("Digite o valor para a posição [", i, "][", j, "]: ")
            leia(matriz[i][j])
        fimPara
    fimPara

    // Inicializando os vetores de maiores e menores
    para i de 1 ate 10 faca
        maiores_linha[i] <- matriz[i][1]
    fimPara
    para j de 1 ate 10 faca
        menores_coluna[j] <- matriz[1][j]
    fimPara

    // Encontrando os maiores elementos de cada linha e menores de cada coluna
    para i de 1 ate 10 faca
        para j de 1 ate 10 faca
            se matriz[i][j] > maiores_linha[i] entao
                maiores_linha[i] <- matriz[i][j]
            fimSe
            se matriz[i][j] < menores_coluna[j] entao
                menores_coluna[j] <- matriz[i][j]
            fimSe
        fimPara
    fimPara

    // Exibindo os resultados
    escreva("Maiores elementos de cada linha:\n")
    para i de 1 ate 10 faca
        escreva(maiores_linha[i], " ")
    fimPara
    escreva("\nMenores elementos de cada coluna:\n")
    para j de 1 ate 10 faca
        escreva(menores_coluna[j], " ")
    fimPara
fimAlgoritmo
