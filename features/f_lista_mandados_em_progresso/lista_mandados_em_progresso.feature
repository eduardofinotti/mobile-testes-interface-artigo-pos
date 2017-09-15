#language: pt
@localizacao @funcionalidade_basica
Funcionalidade: Listagem de mandadosem andamentos
  Como oficial de justiça, 
  Eu quero visualizar minha listab de mandados a serem cumpridos
  
  Cenário: Visualizar lista sem nenhum novo mandado (lista vazia)
    Dado que o oficial de justiça está logado
    E não possui nenhum novo mandado
    Quando navegar para a lista de mandados
    Então deve ser exibido a mensagem: "mensagem"

  Cenário: Visualizar lista de mandados em progresso
    Dado que o oficial de justiça está logado
    E possui um mandado com ao menos uma diligencia cumprida
    Quando navegar para a lista de mandados em progresso
    Então deve ser exibido a lista com número do mandado
    E exibe a quantidade de dias
    E deve ser exibido a timeline com status do mandado
    E deve ser exibido a timeline com status de sincronização do check-in
  
  Cenário: Visualizar lista com novos mandados com mandado perto do vencimento
    Dado que o oficial de justiça está logado
    E possui um mandado com ao menos uma diligencia cumprida
    E com vencimento menor igual a 5 dias
    Quando navegar para a lista de mandados em progresso
    Então deve ser exibido a lista com número do mandado
    E mostrar a quantidade de dias para vencer com ícone de alerta 
    E a quantidade de dias em vermelho
    E deve ser exibido a timeline com status do mandado
    E deve ser exibido a timeline com status de sincronização do check-in