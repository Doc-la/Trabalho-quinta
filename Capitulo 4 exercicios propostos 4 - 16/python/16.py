class Contato:
    def __init__(self, nome_usual, nome_completo, telefone_fixo, telefone_celular):
        self.nome_usual = nome_usual
        self.nome_completo = nome_completo
        self.telefone_fixo = telefone_fixo
        self.telefone_celular = telefone_celular

    def __str__(self):
        return f"Nome Usual: {self.nome_usual}\nNome Completo: {self.nome_completo}\nTelefone Fixo: {self.telefone_fixo}\nTelefone Celular: {self.telefone_celular}\n"


def incluir_contato(contatos, novo_contato):
    for i in range(len(contatos)):
        if contatos[i] is None:
            contatos[i] = novo_contato
            return True
    print("Limite de contatos atingido. Impossível adicionar novo contato.")
    return False


def consultar_contato(contatos, nome):
    for contato in contatos:
        if contato and contato.nome_usual == nome:
            return contato
    return None


def exibir_contatos_ordenados(contatos):
    contatos_ordenados = sorted(contatos, key=lambda x: x.nome_usual if x else "")
    print("Listagem de contatos:")
    for contato in contatos_ordenados:
        if contato:
            print(contato)


# Inicializando a lista de contatos
contatos = [None] * 20

# Menu de opções
while True:
    print("\nMenu de Opções:")
    print("0) Sair")
    print("1) Incluir um novo contato")
    print("2) Consultar um contato pelo nome usual")
    print("3) Exibir listagem de todos os contatos em ordem alfabética")

    opcao = int(input("Escolha uma opção: "))

    if opcao == 0:
        # Sair
        print("Encerrando o programa...")
        break
    elif opcao == 1:
        # Incluir um novo contato
        nome_usual = input("Nome Usual: ")
        nome_completo = input("Nome Completo: ")
        telefone_fixo = input("Telefone Fixo: ")
        telefone_celular = input("Telefone Celular: ")
        novo_contato = Contato(nome_usual, nome_completo, telefone_fixo, telefone_celular)
        if incluir_contato(contatos, novo_contato):
            print("Contato adicionado com sucesso.")
    elif opcao == 2:
        # Consultar um contato pelo nome usual
        nome_busca = input("Digite o nome usual do contato a ser consultado: ")
        encontrado = consultar_contato(contatos, nome_busca)
        if encontrado:
            print("Contato encontrado:")
            print(encontrado)
        else:
            print("Contato não encontrado.")
    elif opcao == 3:
        # Exibir listagem de todos os contatos em ordem alfabética
        exibir_contatos_ordenados(contatos)
    else:
        # Opção inválida
        print("Opção inválida. Tente novamente.")
