#language: pt
@timeline @funcionalidade_basica
Funcionalidade: Listagem de mandados já finalizados
  Como Oficial de Justiça 
  Eu quero visualizar minha timeline de check-ins para confirmar que os endereços em que cumpri diligências foram corretamente informados para a central de mandados.

  Cenário: Visualizar timeline sem nenhum check-in realizado
    Dado que o oficial de justiça está logado
    E não possui nenhum check-in realizado
    Quando navegar para Timeline
    Então deve ser exibido a mensagem: "mensagem"

  Cenário: Visualizar timeline com check-in realizado sem acesso a internet
    Dado que o oficial de justiça está logado
    E realiza check-in sem acesso a internet
    Quando navegar para Timeline
    Então deve ser exibido a timeline com check-ins agrupados e ordenados por data
    E deve ser exibido a timeline com número do mandado do check-in
    E deve ser exibido a timeline com endereço do check-in
    E deve ser exibido a timeline com hora do check-in
    E deve ser exibido a timeline com status do mandado

  Cenário: Visualizar timeline com check-in realizado com acesso a internet
    Dado que o oficial de justiça está logado
    E realiza check-in com acesso a internet
    Quando navegar para Timeline
    Então deve ser exibido a timeline com check-ins agrupados e ordenados por data
    E deve ser exibido a timeline com número do mandado do check-in
    E deve ser exibido a timeline com endereço do check-in
    E deve ser exibido a timeline com hora do check-in
    E deve ser exibido a timeline com status do mandado