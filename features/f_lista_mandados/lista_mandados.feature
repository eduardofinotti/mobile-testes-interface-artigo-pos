#language: pt
@localizacao @funcionalidade_basica
Funcionalidade: Listagem de novos mandados
  Como oficial de justiça, 
  Eu quero visualizar minha lista de mandados a serem cumpridos
  
  Cenário: Visualizar lista sem nenhum novo mandado (lista vazia)
    Dado que o oficial de justiça está logado
    E não possui nenhum novo mandado
    Quando navegar para a lista de mandados
    Então deve ser exibido a mensagem: "mensagem"

  Cenário: Visualizar lista com novos mandados
    Dado que o oficial de justiça está logado
    E possui mandado perto do vencimento
    Quando navegar para a lista de mandados
    Então deve ser exibido a lista com número do mandado
    E exibe a quantidade de dias
  
  Cenário: Visualizar lista com novos mandados com mandado perto do vencimento
    Dado que o oficial de justiça está logado
    E possui mandado com vencimento menor igual a 5 dias
    Quando navegar para a lista de mandados
    Então deve ser exibido a lista com número do mandado
    E mostra a quantidade de dias para vencer com ícone de alerta e a quantidade de dias em vermelho