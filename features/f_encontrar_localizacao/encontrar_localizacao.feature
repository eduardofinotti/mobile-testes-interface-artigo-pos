#language: pt
@localizacao 
Funcionalidade: Encontrar localização
  Como oficial de justiça, 
  Eu quero identificar minha localização para poder verificá-la antes que seja informada à central de mandados
  
  Cenário: Desabilitar GPS antes de encontar localização
    Dado que o GPS do dispositivo está habilitado
    Quando realizar o login na aplicação permitindo acesso à localização do dispositivo móvel
    E o ofical de justiça está na tela com o botão de encontrar localização 
    E o oficial de justiça desabilitar o GPS
    Então deve ser exibida a mensagem "Por favor, ative o gps e tente novamente."

  Cenário: Encontrar localização sem acesso a internet
    Dado que o GPS do dispositivo está habilitado
    Quando realizar o login na aplicação permitindo acesso à localização do dispositivo móvel
    E o oficial de justiça está sem acesso a internet
    E o ofical de justiça acessa a tela de encontrar localização 
    Então deve ser apresentada a tela com o endereço onde Oficial de justiça se encontra 
    E deve apresentar o botão Enviar localização habilitado

  Cenário: Oficial de justiça encontra localização para enviar
    Dado GPS do dispositivo móvel está habilitado
    E o dispositivo possui acesso a internet
    Quando realizar o login na aplicação permitindo acesso à localização do dispositivo móvel
    E o oficial de justiça pressionar o botão de econtrar localização
    Então deve ser apresentada a tela com o endereço onde Oficial de justiça se encontra 
    E deve apresentar o botão Enviar localização habilitado