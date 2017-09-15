#language: pt
@login @funcionalidade_basica
Funcionalidade: Entrar na aplicação
  Como um oficial de justiça
  Eu quero poder acessar a aplicação

  @login_valido @basico
  Cenário: Acessar aplicação com dados válidos
    Dado que o oficial de justiça esteja logado na aplicação
    Quando clicar em sair 
    Então deve ser redirecionado para a tela de login

  Cenário: Acessar aplicação com dados válidos
    Dado que o oficial de justiça esteja logado na aplicação
    Quando clicar em sair
    E finalizar a aplicação
    E abrir o app novamente 
    Então deve ser redirecionado para a tela de login