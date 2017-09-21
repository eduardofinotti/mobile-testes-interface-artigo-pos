#language: pt
@salvar_localizacao @funcionalidade_basica @salvar
Funcionalidade: Salvar localização do Oficial de Justiça
  Como oficial de justiça,
  Eu quero salvar minha localização no dispositivo para enviar para o OJO-Web para poder comprovar que estive no endereço onde a diligência foi cumprida.
  
  Cenário: Salvar localização no dispositivo sem conexão com a internet
    Dado que o oficial de justiça esteja logado no OJO com permissao a Localização 
    E que o dispositivo móvel esteja com o GPS ativo
    Quando o oficial de justiça pressionar o botão de 'Salvar localização' sem conexão com a internet
    Então deve ser salva a sua localização exibindo uma mensagem "A sua localização foi salva."

  Cenário: Salvar localização com o GPS desabilitado
    Dado que o GPS do dispositivo está habilitado
    Quando realizar o login na aplicação permitindo acesso à localização do dispositivo móvel
    E o ofical de justiça está na tela de enviar localização 
    E o oficial de justiça desabilitar o GPS
    Então deve ser exibida a mensagem "Por favor, ative o gps e tente novamente."

  Cenário: Salvar localização para o servidor com conexão com a internet
    Dado que o oficial de justiça esteja logado no OJO com permissao a Localização 
    E que o dispositivo móvel esteja com o GPS ativo
    Quando o oficial de justiça pressionar o botão de 'Salvar localização' com conexão com a internet
    Então deve ser salva a sua localização exibindo uma mensagem "A sua localização foi salva."