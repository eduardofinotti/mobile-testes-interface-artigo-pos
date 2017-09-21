#language: pt
@localizacao @funcionalidade_basica
Funcionalidade: Listagem de mandados em progresso
  Como oficial de justiça, 
  Eu quero visualizar minha lista de mandados que estão em progresso
  
  Cenário: Visualizar lista sem nenhum mandado em progresso
    Dado que o oficial de justiça está logado
    E não possui nenhum mandado em progresso
    Quando navegar para a lista de mandados em progresso
    Então deve ser exibido a mensagem: "mensagem"

  Cenário: Visualizar lista de mandados em progresso com dados nao sincronizados (diligencia cumprida sem internet)
    Dado que o oficial de justiça está logado
    E possui um mandado com ao menos uma diligencia cumprida
    Quando navegar para a lista de mandados em progresso
    Então deve ser exibido a lista com número do mandado
    E exibe a quantidade de dias
    E deve ser exibido a timeline com status do mandado
    E deve ser exibido a timeline com status de sincronização do check-in como não sincronizado

  Cenário: Visualizar lista de mandados em progresso com dados sincronizados (diligencia cumprida com internet)
    Dado que o oficial de justiça está logado
    E possui um mandado com ao menos uma diligencia cumprida
    Quando navegar para a lista de mandados em progresso
    Então deve ser exibido a lista com número do mandado
    E exibe a quantidade de dias
    E deve ser exibido a timeline com status do mandado
    E deve ser exibido a timeline com status de sincronização do check-in como sincronizado
  
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