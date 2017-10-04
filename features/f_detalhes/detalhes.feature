#language: pt

Funcionalidade: Visualizar detalhes do mandado
  Como um oficial de justiça 
  Eu quero ver os detalhes do mandado para poder verificar mais informações deste

  Cenário: Visualizar detalhes do mandado com somente um destinatario
    Dado que o oficial de justiça esteja logado no OJO com permissao a Localização 
    Quando entrar em um mandado com somente um destinatário 
    Então mostra detalhes do mandado com data de vencimento
    E mostra número do processo
    E mostra forma de pagamento
    E mostra destinatário
    E mostra endereço
    E mostra botão de enviar localizaçao habilitado
    E mostra os atos
    E mostra as diligencia realizadas
    E mostra botão de gerar certidão habilitado
