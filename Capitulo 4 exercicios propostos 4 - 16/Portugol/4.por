algoritmo calcularNotas
    var
        notas: vetor[1..50] de real
        somaNotas, media, acimaMedia, abaixoMedia: real
        contador: inteiro
    
    // Inicializando as variáveis
    somaNotas <- 0
    acimaMedia <- 0
    abaixoMedia <- 0
    
    // Lendo as notas
    para contador de 1 ate 50 faca
        escreva("Digite a nota ", contador, ": ")
        leia(notas[contador])
        somaNotas <- somaNotas + notas[contador]
    fimPara
    
    // Calculando a média
    media <- somaNotas / 50
    
    // Contando notas acima e abaixo de 10% da média
    para contador de 1 ate 50 faca
        se notas[contador] > media * 1.1 entao
            acimaMedia <- acimaMedia + 1
        senao
            se notas[contador] < media * 0.9 entao
                abaixoMedia <- abaixoMedia + 1
            fimSe
        fimSe
    fimPara
    
    // Exibindo resultados
    escreva("Média: ", media)
    escreva("Notas acima de 10% da média: ", acimaMedia)
    escreva("Notas abaixo de 10% da média: ", abaixoMedia)
fimAlgoritmo
