Dado(/^que o oficial de justiça esteja na tela de login$/) do
  LoginActions.new.verificaSeTelaLogin(false)
  @login_screen_object = $ENV::LoginScreenElement.new($driver) 

end

Quando(/^realizar o login na aplicação$/) do
  @login_screen_object = $ENV::LoginScreenElement.new($driver) 
  LoginActions.new.preencheCamposLogin(@login_screen_object)
  LoginActions.new.entrarPermitindoLocalizacao(@login_screen_object)
end

Dado(/^que o usuário realizou o login na aplicação$/) do
  LoginActions.new.verificaSeTelaLogin(true)

end

Dado(/^preencho o campo 'Usuário SAJ' com usuário inválido$/) do
  @login_screen_object.send_login_user('xxx')
  @login_screen_object.send_login_password('132')
end

Dado(/^preencho o campo 'Senha SAJ' com senha inválida$/) do
  @login_screen_object.send_login_user('oficial')
  @login_screen_object.send_login_password('zzz')
end

Dado(/^informa um usuário e senha do SAJ válidos$/) do
  LoginActions.new.preencheCamposLogin(@login_screen_object)
end

Quando(/^clicar no botão 'Entrar'$/) do
  LoginActions.new.clickBotaoEntrar(@login_screen_object)
end

Quando(/^clicar no botão 'Entrar' permitindo acesso a localização$/) do
  LoginActions.new.entrarPermitindoLocalizacao(@login_screen_object)
end

Então(/^mostrará a mensagem "([^"]*)"$/) do |mensagem|

  @login_errado = $ENV::NotificacaoScreenElement.new($driver)

  @mensagem = @login_errado.getMensagem

  if @mensagem != mensagem
    fail("Erro! O teste falhou!")
  end 
  
  $driver.find_element(:accessibility_id, 'ModalErrorBtn').click

end

Então(/^mostra a tela principal do OJO e exibi o nome do usuário logado "([^"]*)"$/) do |nome|

  sleep 3
  
  @header_screen_object = $ENV::HeaderScreenElement.new($driver)

  if @header_screen_object.getUserName != nome
    fail("Erro de validaçao")
  end

end

Dado(/^que o GPS do dispositivo está desabilitado$/) do

  LoginActions.new.verificaSeTelaLogin(false)

  system("adb shell settings put secure location_providers_allowed -network")
  system("adb shell settings put secure location_providers_allowed -gps")

end

Quando(/^finalizar a aplicação e abre novamente$/) do
  $driver.restart
end

Dado(/^que o usuário logado tenha recusado a autorização de acesso a localização no login$/) do
  @login_screen_object = $ENV::LoginScreenElement.new($driver) 
  LoginActions.new.verificaSeTelaLogin(false)
  LoginActions.new.preencheCamposLogin(@login_screen_object)
  LoginActions.new.entrarNaoPermitindoLocalizacao(@login_screen_object)
end

Então(/^deve ser apresentada alerta pedindo autorização de acesso à localização do usuário$/) do
  $action.waitElement("com.android.packageinstaller:id/permission_message")      
end