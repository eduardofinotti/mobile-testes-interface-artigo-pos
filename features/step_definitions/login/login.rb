

Então("mostra a tela principal com o nome do usuário logado {string}") do |string|
  sleep 3
  
  @header_screen_object = $ENV::HeaderScreenElement.new($driver)

  if @header_screen_object.getUserName != nome
    fail("Erro de validaçao")
  end
end

Dado(/^que o usuário esteja na tela de login$/) do
  LoginActions.new.verificaSeTelaLogin(false)
  @login_screen_object = $ENV::LoginScreenElement.new($driver) 

end

Quando(/^informa um usuário e senha válidos$/) do
  @login_screen_object = $ENV::LoginScreenElement.new($driver) 
  LoginActions.new.preencheCamposLogin(@login_screen_object)
end

Dado(/^informa um usuário e senha inválidos$/) do
  @login_screen_object.send_login_user('xxx')
  @login_screen_object.send_login_password('xxx')
end

Quando(/^clicar no botão 'Entrar'$/) do
  #LoginActions.new.clickBotaoEntrar(@login_screen_object)
  LoginActions.new.entrarPermitindoLocalizacao(@login_screen_object)
end

Então("mostra mensagem {string}") do |mensagem|

  @login_errado = $ENV::NotificacaoScreenElement.new($driver)

  @mensagem = @login_errado.getMensagem

  if @mensagem != mensagem
    fail("Erro! O teste falhou!")
  end 
  
  $driver.find_element(:accessibility_id, 'ModalErrorBtn').click

end

#====================#

# Dado(/^que o usuário realizou o login na aplicação$/) do
#   LoginActions.new.verificaSeTelaLogin(true)

# end

# Quando(/^clicar no botão 'Entrar' permitindo acesso a localização$/) do
#   LoginActions.new.entrarPermitindoLocalizacao(@login_screen_object)
# end