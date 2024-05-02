algoritmo triangulo_de_pascal
    var
        triangulo: vetor[1..20] de vetor[1..20] de inteiro
        n, i, j: inteiro

    // Lendo o número de linhas
    escreva("Digite o número de linhas do Triângulo de Pascal: ")
    leia(n)

    // Preenchendo o Triângulo de Pascal
    para i de 1 ate n faca
        para j de 1 ate i faca
            se j = 1 ou j = i entao
                triangulo[i][j] <- 1
            senao
                triangulo[i][j] <- triangulo[i-1][j-1] + triangulo[i-1][j]
            fimSe
        fimPara
    fimPara

    // Exibindo o Triângulo de Pascal
    para i de 1 ate n faca
        para j de 1 ate i faca
            escreva(triangulo[i][j], " ")
        escreval("")
    fimPara
fimAlgoritmo
