#language: pt

@login
Funcionalidade: Entrar na aplicação
  Como um usuário 
  Eu quero me logar na aplicação
  Para poder acessar o aplicativo

  Cenário: Acessar aplicação com dados válidos
    Dado que é informado um usuário e senha válidos 
    Quando clicar no botão 'Entrar'  
    Então mostra a tela principal com o nome do usuário logado "Oficial O"

  Cenário: Acessar aplicação com dados inválidos
    Dado que é informado um usuário e senha inválidos
    Quando clicar no botão 'Entrar'  
    Então mostra mensagem "Senha ou usuário inválido."  

    