#language: pt
@login @funcionalidade_basica
Funcionalidade: Entrar na aplicação
  Como um oficial de justiça 
  Eu quero me logar no SAJ/OJO Mobile para poder acessar o aplicativo e ter segurança de que, sem minhas informações de usuário e senha, outras pessoas não conseguem acessá-lo.

  Cenário: Acessar aplicação com usuário inválido 
    Dado que o oficial de justiça esteja na tela de login
    E preencho o campo 'Usuário SAJ' com usuário inválido
    Quando clicar no botão 'Entrar'
    Então mostrará a mensagem "Senha ou usuário inválido."

  Cenário: Acessar aplicação com senha inválida
    Dado que o oficial de justiça esteja na tela de login
    E preencho o campo 'Senha SAJ' com senha inválida
    Quando clicar no botão 'Entrar'
    Então mostrará a mensagem "Senha ou usuário inválido."

  Cenário: Acessar aplicação sem preencher campos de login
    Dado que o oficial de justiça esteja na tela de login
    Quando clicar no botão 'Entrar' sem preencher os dados de login
    Então mostrará a mensagem "Usuario e senha obrigatórios"

  Cenário: Acessar aplicação com GPS desativado
    Dado que o GPS do dispositivo está desabilitado
    Quando realizar o login na aplicação
    Então deve ser exibida a mensagem "Por favor, ative o gps e tente novamente."

  Cenário: Verificar alerta pedindo permissão de acesso a localização
    Dado que o usuário realizou o login na aplicação
    Então deve ser apresentada alerta pedindo autorização de acesso à localização do usuário

  Cenário: Acessar aplicação sem permissão de acesso á localização
    Dado que o usuário logado tenha recusado a autorização de acesso a localização no login
    Então deve ser apresentada uma tela com a mensagem "Por favor, de permissão para posseguir." 

  Cenário: Acessar aplicação com dados válidos
    Dado que o oficial de justiça esteja na tela de login
    E informa um usuário e senha do SAJ válidos 
    Quando clicar no botão 'Entrar' permitindo acesso a localização 
    Então mostra a tela principal do OJO e exibi o nome do usuário logado "Oficial O"

  Cenário: Acessar aplicação com dados válidos
    Dado que o oficial de justiça esteja logado na aplicação
    Quando finalizar a aplicação
    E abrir a aplicação novamente 
    Então deve abrir a aplicação já logado