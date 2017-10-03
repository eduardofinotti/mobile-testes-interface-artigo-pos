#language: pt
@localizacao @funcionalidade_basica
Funcionalidade: Listagem de novos mandados
  Como oficial de justiça, 
  Eu quero visualizar minha lista de mandados aguardando cumprimento para poder decidir quais irei cumprir naquele dia
  
  Cenário: Visualizar lista de mandados aguardando cumprimento sem nenhum novo mandado (lista vazia) 
    Dado que o oficial de justiça está logado
    E não possui nenhum novo mandado aguardando cumprimento
    Quando navegar para a lista de mandados
    Então deve ser exibida a mensagem: "Não há mandados aguardando cumprimento"

  Cenário: Visualizar lista de mandados aguardando cumprimento
    Dado que o oficial de justiça está logado
    E possui mandados aguardando cumprimento
    Quando navegar para a lista de mandados aguardando cumprimento
    Então deve ser exibido a lista com número do mandado
    E deve ser exibido o nome da parte
    E deve ser exibido o endereço da parte 
    E deve ser exibido a quantidade de dias faltando para o vencimento do mandado
  
  Cenário: Visualizar lista com novos mandados com mandado perto do vencimento 
    Dado que o oficial de justiça está logado
    E possui mandado com vencimento menor ou igual a 3 dias
    Quando navegar para a lista de mandados a aguardando cumprimento
    Então deve ser exibido a lista com número do mandado
    E mostra a quantidade de dias para vencer com ícone de alerta e a quantidade de dias com cor de fundo vermelha