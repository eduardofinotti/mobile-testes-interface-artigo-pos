#language: pt
@localizacao
Funcionalidade: Listagem de mandados em progresso
  Como oficial de justiça, 
  Eu quero visualizar minha lista de mandados que estão em progresso para poder decidir quando irei cumpri-los
  
  Cenário: Visualizar lista sem nenhum mandado em progresso
    Dado que o oficial de justiça está logado
    E não possui nenhum mandado em progresso
    Quando navegar para a lista de mandados em progresso
    Então deve ser exibido a mensagem: "mensagem"

Cenário: Visualizar lista de mandados em progresso com dados não sincronizados (diligencia cumprida sem internet)
    Dado que o oficial de justiça está logado
    E possui um mandado com ao menos uma diligencia cumprida
    Quando navegar para a lista de mandados em progresso
    Então deve ser exibido a lista com número do mandado
    E mostrar o nome da parte
    E mostrar o endereço da parte
    E mostrar a quantidade de dias faltando para o vencimento do mandado com ícone de alerta 
    E deve ser exibido a timeline com status do mandado
    E deve ser exibido a timeline com status de sincronização do check-in como não sincronizado


  Cenário: Visualizar lista de mandados em progresso com dados sincronizados (diligencia cumprida com internet)
    Dado que o oficial de justiça está logado
    E possui um mandado com ao menos uma diligencia cumprida
    Quando navegar para a lista de mandados em progresso
    Então deve ser exibido a lista com número do mandado
    E mostrar o nome da parte
    E mostrar o endereço da parte
    E mostrar a quantidade de dias faltando para o vencimento do mandado
    E deve ser exibido a timeline com status do mandado
    E deve ser exibido a timeline com status de sincronização do check-in como sincronizado


  Cenário: Visualizar lista com novos mandados com mandado perto do vencimento 
    Dado que o oficial de justiça está logado
    E possui um mandado com ao menos uma diligencia cumprida
    E com vencimento menor ou igual a 1 dia
    Quando navegar para a lista de mandados em progresso
    Então deve ser exibido a lista com número do mandado
    E mostrar o nome da parte
    E mostrar o endereço da parte
    E mostrar a quantidade de dias faltando para o vencimento do mandado com ícone de alerta 
    E deve ser exibido a timeline com status do mandado
    E deve ser exibido a timeline com status de sincronização do check-in