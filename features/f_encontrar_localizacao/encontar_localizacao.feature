#language: pt
@localizacao @funcionalidade_basica
Funcionalidade: Encontrar localização
  Como oficial de justiça, 
  Eu quero identificar minha localização para poder verificá-la antes que seja informada à central de mandados
  
  Cenário: Encontrar localização com o GPS desabilitado
    Dado que o GPS do dispositivo está habilitado
    Quando realizar o login na aplicação permitindo acesso à localização do dispositivo móvel
    E o oficial de justiça desabilitar o GPS
    Então deve ser exibida a mensagem "Por favor, ative o gps e tente novamente."

  Cenário: Acessar aplicação sem permissão de acesso á localização
    Dado que o usuário logado tenha recusado a autorização de acesso a localização no login
    Então deve ser apresentada uma tela com a mensagem "Por favor, de permissão para posseguir." 

  Cenário: Oficial de justiça realiza localização para enviar
    Dado GPS do dispositivo móvel está habilitado 
    Quando realizar o login na aplicação permitindo acesso à localização do dispositivo móvel
    E o oficial de justiça pressionar o botão Estou aqui
    Então deve ser apresentada a tela com o endereço onde Oficial de justiça se encontra 
    E deve apresentar o botão Enviar localização habilitado