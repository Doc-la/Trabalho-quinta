algoritmo calcularLucroProdutos
    var
        nomeProduto: vetor[1..50] de caractere
        custoProduto, precoProduto, lucro: vetor[1..50] de real
        contador: inteiro
    
    // Lendo os dados dos produtos
    para contador de 1 ate 50 faca
        escreva("Digite o nome do produto ", contador, ": ")
        leia(nomeProduto[contador])
        escreva("Digite o custo do produto ", contador, ": ")
        leia(custoProduto[contador])
        escreva("Digite o preço do produto ", contador, ": ")
        leia(precoProduto[contador])
        
        // Calculando o lucro do produto
        lucro[contador] <- precoProduto[contador] - custoProduto[contador]
    fimPara
    
    // Exibindo produtos com lucro menor que 10%
    escreva("Produtos com lucro menor que 10%:")
    para contador de 1 ate 50 faca
        se lucro[contador] / custoProduto[contador] < 0.1 entao
            escreva(nomeProduto[contador])
        fimSe
    fimPara
    
    // Exibindo produtos com lucro entre 10% e 30%
    escreva("Produtos com lucro entre 10% e 30%:")
    para contador de 1 ate 50 faca
        se lucro[contador] / custoProduto[contador] >= 0.1 e lucro[contador] / custoProduto[contador] <= 0.3 entao
            escreva(nomeProduto[contador])
        fimSe
    fimPara
    
    // Exibindo produtos com lucro maior que 30%
    escreva("Produtos com lucro maior que 30%:")
    para contador de 1 ate 50 faca
        se lucro[contador] / custoProduto[contador] > 0.3 entao
            escreva(nomeProduto[contador])
        fimSe
    fimPara
fimAlgoritmo
