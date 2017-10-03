#language: pt
@logoff 
Funcionalidade: Sair da aplicação
  Como um oficial de justiça
  Eu quero poder fazer logoff na aplicação para garantir a segurança do acesso às minhas informações

  Cenário: Confirmar logoff na aplicação
    Dado que o oficial de justiça esteja logado na aplicação
    Quando clicar em sair 
    Então deve ser redirecionado para a tela de login

  Cenário: Cancelar logoff na aplicação 
    Dado que o oficial de justiça esteja logado na aplicação
    Quando clicar em sair 
    E o usuário cancelar o logout
    Então deve permanecer na tela atual

  Cenário: Acessar aplicação com dados válidos
    Dado que o oficial de justiça esteja logado na aplicação
    Quando clicar em sair
    E confirmar logout
    E finalizar a aplicação
    E abrir a aplicação novamente 
    Então deve ser redirecionado para a tela de login