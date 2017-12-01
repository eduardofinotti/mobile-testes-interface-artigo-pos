Dado(/^que é informado um usuário e senha válidos$/) do
  @login_screen_object = $ENV::LoginScreenElement.new($driver) 
  @login_screen_object.send_login_user('oficial')
  @login_screen_object.send_login_password('132')
end

Quando(/^clicar no botão 'Entrar'$/) do
  @login_screen_object.click_login_button

  begin  
    elemento = $driver.find_element(:id, 'com.android.packageinstaller:id/permission_allow_button').displayed?
    
    if elemento == true
      $action.waitElementAndClick("com.android.packageinstaller:id/permission_allow_button")
    end
  
  rescue
      p "Não pediu permissão!"
  end 
end

Então("mostra a tela principal com o nome do usuário logado {string}") do |nome|
  sleep 5
  
  @header_screen_object = $ENV::HeaderScreenElement.new($driver)

  if @header_screen_object.getUserName != nome
    fail("Erro de validaçao")
  end
end 

Dado(/^que é informado um usuário e senha inválidos$/) do
  @login_screen_object = $ENV::LoginScreenElement.new($driver) 
  @login_screen_object.send_login_user('xxx')
  @login_screen_object.send_login_password('xxx')
end

Então("mostra mensagem {string}") do |mensagem|

  @login_errado = $ENV::NotificacaoScreenElement.new($driver)
  @mensagem = @login_errado.getMensagem

  if @mensagem != mensagem
    fail("Erro! O teste falhou!")
  end 
  
end

