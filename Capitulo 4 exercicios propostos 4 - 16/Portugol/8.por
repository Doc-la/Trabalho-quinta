algoritmo ranking_concurso
    var
        pontuacoes: vetor[1..200] de inteiro
        nomes: vetor[1..200] de caractere
        colocados: vetor[1..200] de caractere
        total_participantes, i, j, pontuacao_temp: inteiro
        nome_temp: caractere

    // Inicializando variáveis
    total_participantes <- 0

    // Lendo as pontuações e nomes dos participantes
    para i de 1 ate 200 faca
        escreva("Digite o nome do participante ", i, ": ")
        leia(nomes[i])
        escreva("Digite a pontuação final de ", nomes[i], ": ")
        leia(pontuacoes[i])
        se pontuacoes[i] > 70 entao
            total_participantes <- total_participantes + 1
        fimSe
    fimPara

    // Ordenando os participantes com mais de 70 pontos em ordem decrescente de pontuação
    para i de 1 ate total_participantes - 1 faca
        para j de 1 ate total_participantes - i faca
            se pontuacoes[j] < pontuacoes[j+1] entao
                // Troca de pontuação
                pontuacao_temp <- pontuacoes[j]
                pontuacoes[j] <- pontuacoes[j+1]
                pontuacoes[j+1] <- pontuacao_temp
                // Troca de nome
                nome_temp <- nomes[j]
                nomes[j] <- nomes[j+1]
                nomes[j+1] <- nome_temp
            fimSe
        fimPara
    fimPara

    // Exibindo o ranking dos participantes com mais de 70 pontos
    escreva("Ranking dos participantes com mais de 70 pontos:\n")
    para i de 1 ate total_participantes faca
        escreva(i, ". ", nomes[i], " - Pontuação: ", pontuacoes[i], "\n")
    fimPara
fimAlgoritmo
