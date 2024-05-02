algoritmo operacoes_matriz
    var
        matriz: matriz[1..5, 1..5] de inteiro
        i, j: inteiro

    // Preenchendo a matriz
    para i de 1 ate 5 faca
        para j de 1 ate 5 faca
            escreva("Digite o valor para a posição [", i, "][", j, "]: ")
            leia(matriz[i][j])
        fimPara
    fimPara

    // Exibindo a diagonal principal
    escreva("Diagonal principal:\n")
    para i de 1 ate 5 faca
        escreva(matriz[i][i], " ")
    fimPara
    escreval("")

    // Exibindo o triângulo superior à diagonal principal
    escreva("Triângulo superior à diagonal principal:\n")
    para i de 1 ate 5 faca
        para j de i + 1 ate 5 faca
            escreva(matriz[i][j], " ")
        fimPara
    fimPara
    escreval("")

    // Exibindo o triângulo inferior à diagonal principal
    escreva("Triângulo inferior à diagonal principal:\n")
    para i de 1 ate 5 faca
        para j de 1 ate i - 1 faca
            escreva(matriz[i][j], " ")
        fimPara
    fimPara
    escreval("")

    // Exibindo tudo exceto a diagonal principal
    escreva("Tudo exceto a diagonal principal:\n")
    para i de 1 ate 5 faca
        para j de 1 ate 5 faca
            se i <> j entao
                escreva(matriz[i][j], " ")
            fimSe
        fimPara
    fimPara
    escreval("")

    // Exibindo a diagonal secundária
    escreva("Diagonal secundária:\n")
    para i de 1 ate 5 faca
        escreva(matriz[i][6 - i], " ")
    fimPara
    escreval("")

    // Exibindo o triângulo superior à diagonal secundária
    escreva("Triângulo superior à diagonal secundária:\n")
    para i de 1 ate 4 faca
        para j de 1 ate 5 - i faca
            escreva(matriz[i][j], " ")
        fimPara
    fimPara
    escreval("")

    // Exibindo o triângulo inferior à diagonal secundária
    escreva("Triângulo inferior à diagonal secundária:\n")
    para i de 2 ate 5 faca
        para j de 6 - i ate 5 faca
            escreva(matriz[i][j], " ")
        fimPara
    fimPara
    escreval("")

    // Exibindo tudo exceto a diagonal secundária
    escreva("Tudo exceto a diagonal secundária:\n")
    para i de 1 ate 5 faca
        para j de 1 ate 5 faca
            se j <> 6 - i entao
                escreva(matriz[i][j], " ")
            fimSe
        fimPara
    fimPara
fimAlgoritmo
