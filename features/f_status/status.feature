#language: pt
@status
Funcionalidade: Status do usuário
  Como um oficial de justiça
  Eu quero ver o status do meu usuário logado na aplicação para ver se estou online ou offline

  Cenário: Exibir status como Online
    Dado GPS do dispositivo móvel está habilitado
    E o dispositivo possui acesso a internet
    Quando realizar o login na aplicação permitindo acesso à localização do dispositivo móvel
    Então é exibido o status do usuário como "Online"

  Cenário: Exibir status como Offline
    Dado GPS do dispositivo móvel está habilitado
    E o dispositivo possui acesso a internet
    Quando realizar o login na aplicação permitindo acesso à localização do dispositivo móvel
    E desabilita o acesso do dispositivo a internet
    Então é exibido o status do usuário como "Offline"