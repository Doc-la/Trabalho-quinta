algoritmo interseccao_vetores
    var
        vetor1: vetor[1..20] de inteiro
        vetor2: vetor[1..20] de inteiro
        interseccao: vetor[1..20] de inteiro
        tamanho_interseccao: inteiro
        i, j, k: inteiro
        repetido: logico
    
    // Preenchendo o primeiro vetor
    para i de 1 ate 20 faca
        escreva("Digite o elemento ", i, " do primeiro vetor: ")
        leia(vetor1[i])
    fimPara
    
    // Preenchendo o segundo vetor
    para i de 1 ate 20 faca
        escreva("Digite o elemento ", i, " do segundo vetor: ")
        leia(vetor2[i])
    fimPara
    
    // Inicializando variáveis
    tamanho_interseccao <- 0
    
    // Encontrando a interseção
    para i de 1 ate 20 faca
        repetido <- falso
        para j de 1 ate tamanho_interseccao faca
            se vetor1[i] = interseccao[j] entao
                repetido <- verdadeiro
            fimSe
        fimPara
        
        se repetido = falso entao
            para k de 1 ate 20 faca
                se vetor1[i] = vetor2[k] entao
                    tamanho_interseccao <- tamanho_interseccao + 1
                    interseccao[tamanho_interseccao] <- vetor1[i]
                fimSe
            fimPara
        fimSe
    fimPara
    
    // Exibindo a interseção
    escreva("A interseção dos vetores é: ")
    para i de 1 ate tamanho_interseccao faca
        escreva(interseccao[i], " ")
    fimPara
fimAlgoritmo
