#language: pt
@salvar_localizacao @funcionalidade_basica @salvar
Funcionalidade: Salvar localização para o OJO-Web
  Como oficial de justiça,
  Eu quero salvar minha localização no SAJ/OJO Mobile para o OJO-Web para poder comprovar que estive no endereço onde a diligência foi cumprida.
  
 Cenário: Salvar localização para o servidor sem conexão com a internet
    Dado que o oficial de justiça esteja logado no OJO com permissao a Localização 
    E que o dispositivo móvel esteja com o GPS ativo
    Quando o oficial de justiça pressionar o botão de 'Salvar localização' sem conexão com a internet
    Então deve ser salva a sua localização exibindo uma mensagem "A sua localização foi salva."

  Cenário: Salvar localização para o servidor com conexão com a internet
    Dado que o oficial de justiça esteja logado no OJO com permissao a Localização 
    E que o dispositivo móvel esteja com o GPS ativo
    Quando o oficial de justiça pressionar o botão de 'Salvar localização' com conexão com a internet
    Então deve ser salva a sua localização exibindo uma mensagem "A sua localização foi salva."