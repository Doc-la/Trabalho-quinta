algoritmo gerenciador_contatos
    registro Contato
        nome_usual: caractere[30]
        nome_completo: caractere[100]
        telefone_fixo: caractere[15]
        telefone_celular: caractere[15]
    fimRegistro

    var
        contatos: vetor[1..20] de Contato
        opcao: inteiro
        novo_contato: Contato
        nome_busca: caractere[30]
        encontrado: logico

    // Função para incluir um novo contato
    funcao incluir_contato(var contatos: vetor[1..20] de Contato, novo_contato: Contato) -> logico
        var
            i: inteiro
        inicio
            // Verificando se há espaço disponível na lista
            para i de 1 ate 20 faca
                se contatos[i].nome_usual = "" entao
                    contatos[i] <- novo_contato
                    retorne verdadeiro
                fimSe
            fimPara
            escreva("Limite de contatos atingido. Impossível adicionar novo contato.")
            retorne falso
        fimFuncao

    // Função para consultar um contato pelo nome usual
    funcao consultar_contato(var contatos: vetor[1..20] de Contato, nome: caractere[30]) -> Contato
        var
            i: inteiro
        inicio
            para i de 1 ate 20 faca
                se contatos[i].nome_usual = nome entao
                    retorne contatos[i]
                fimSe
            fimPara
            retorne null
        fimFuncao

    // Função para exibir todos os contatos em ordem alfabética de nome usual
    procedimento exibir_contatos_ordenados(var contatos: vetor[1..20] de Contato)
        var
            i, j: inteiro
            temp: Contato
        inicio
            // Ordenando os contatos em ordem alfabética de nome usual
            para i de 1 ate 19 faca
                para j de i + 1 ate 20 faca
                    se contatos[i].nome_usual > contatos[j].nome_usual entao
                        temp <- contatos[i]
                        contatos[i] <- contatos[j]
                        contatos[j] <- temp
                    fimSe
                fimPara
            fimPara

            // Exibindo os contatos ordenados
            escreval("Listagem de contatos:")
            para i de 1 ate 20 faca
                se contatos[i].nome_usual <> "" entao
                    escreval("Nome Usual:", contatos[i].nome_usual)
                    escreval("Nome Completo:", contatos[i].nome_completo)
                    escreval("Telefone Fixo:", contatos[i].telefone_fixo)
                    escreval("Telefone Celular:", contatos[i].telefone_celular)
                    escreval("")
                fimSe
            fimPara
        fimProcedimento

    // Inicializando a lista de contatos
    para i de 1 ate 20 faca
        contatos[i].nome_usual <- ""
    fimPara

    // Menu de opções
    repita
        escreval("Menu de Opções:")
        escreval("0) Sair")
        escreval("1) Incluir um novo contato")
        escreval("2) Consultar um contato pelo nome usual")
        escreval("3) Exibir listagem de todos os contatos em ordem alfabética")
        escreva("Escolha uma opção: ")
        leia(opcao)

        // Realizando as operações conforme a escolha do usuário
        escolha opcao
            caso 0:
                // Sair
                escreval("Encerrando o programa...")
            caso 1:
                // Incluir um novo contato
                escreva("Nome Usual: ")
                leia(novo_contato.nome_usual)
                escreva("Nome Completo: ")
                leia(novo_contato.nome_completo)
                escreva("Telefone Fixo: ")
                leia(novo_contato.telefone_fixo)
                escreva("Telefone Celular: ")
                leia(novo_contato.telefone_celular)
                se incluir_contato(contatos, novo_contato) entao
                    escreval("Contato adicionado com sucesso.")
                fimSe
            caso 2:
                // Consultar um contato pelo nome usual
                escreva("Digite o nome usual do contato a ser consultado: ")
                leia(nome_busca)
                encontrado <- consultar_contato(contatos, nome_busca)
                se encontrado <> null entao
                    escreval("Contato encontrado:")
                    escreval("Nome Usual:", encontrado.nome_usual)
                    escreval("Nome Completo:", encontrado.nome_completo)
                    escreval("Telefone Fixo:", encontrado.telefone_fixo)
                    escreval("Telefone Celular:", encontrado.telefone_celular)
                senao
                    escreval("Contato não encontrado.")
                fimSe
            caso 3:
                // Exibir listagem de todos os contatos em ordem alfabética
                exibir_contatos_ordenados(contatos)
            caso contrario:
                // Opção inválida
                escreval("Opção inválida. Tente novamente.")
        fimEscolha
    ate opcao = 0
fimAlgoritmo
