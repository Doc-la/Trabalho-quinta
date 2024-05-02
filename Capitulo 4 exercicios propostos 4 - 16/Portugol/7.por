algoritmo uniao_vetores
    var
        vetor1: vetor[1..20] de inteiro
        vetor2: vetor[1..20] de inteiro
        uniao: vetor[1..40] de inteiro
        tamanho_uniao: inteiro
        i, j: inteiro
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
    tamanho_uniao <- 0
    
    // Adicionando elementos do primeiro vetor à união
    para i de 1 ate 20 faca
        repetido <- falso
        para j de 1 ate tamanho_uniao faca
            se vetor1[i] = uniao[j] entao
                repetido <- verdadeiro
            fimSe
        fimPara
        
        se repetido = falso entao
            tamanho_uniao <- tamanho_uniao + 1
            uniao[tamanho_uniao] <- vetor1[i]
        fimSe
    fimPara
    
    // Adicionando elementos do segundo vetor à união
    para i de 1 ate 20 faca
        repetido <- falso
        para j de 1 ate tamanho_uniao faca
            se vetor2[i] = uniao[j] entao
                repetido <- verdadeiro
            fimSe
        fimPara
        
        se repetido = falso entao
            tamanho_uniao <- tamanho_uniao + 1
            uniao[tamanho_uniao] <- vetor2[i]
        fimSe
    fimPara
    
    // Exibindo a união
    escreva("A união dos vetores é: ")
    para i de 1 ate tamanho_uniao faca
        escreva(uniao[i], " ")
    fimPara
fimAlgoritmo
