class LoginActions

  def verificaSeTelaLogin(entra)

    begin
      
      elemento = $driver.find_element(:accessibility_id, 'NameLabel').displayed?
  
      if elemento == true
        @header_screen_object = $ENV::HeaderScreenElement.new($driver)
        @header_screen_object.clickLogout  
        $action.waitElementAndClick("android:id/button1")
      end
  
    rescue  
    end

    if entra == true
      LoginActions.new.loga
    end

  end

  def loga
    @login_screen_object = $ENV::LoginScreenElement.new($driver) 
    LoginActions.new.preencheCamposLogin(@login_screen_object)
    LoginActions.new.clickBotaoEntrar(@login_screen_object)
    
    p "logou"
    @header_screen_object = $ENV::HeaderScreenElement.new($driver)
    
    if @header_screen_object.getUserName != "Oficial O"
      fail("Erro de validaçao")
    end
    
  end


  def preencheCamposLogin(login_screen_object)
    #@login_screen_object = $ENV::LoginScreenElement.new($driver) 
    login_screen_object.send_login_user('oficial')
    login_screen_object.send_login_password('132')
  end  

  def entrarPermitindoLocalizacao(login_screen_object)
    login_screen_object.click_login_button
    elemento = $driver.find_element(:id, 'com.android.packageinstaller:id/permission_allow_button').displayed?
    $action.waitElementAndClick("com.android.packageinstaller:id/permission_allow_button")
  end

  # def entrarPermitindoLocalizacao(login_screen_object)
  #   login_screen_object.click_login_button

  #   begin  
  #     elemento = $driver.find_element(:id, 'com.android.packageinstaller:id/permission_allow_button').displayed?

  #     if elemento == true
  #       $action.waitElementAndClick("com.android.packageinstaller:id/permission_allow_button")
  #     end

  #   rescue
  #     p "Não pediu permissão!"
  #   end  

  # end 

   def entrarNaoPermitindoLocalizacao(login_screen_object)
    login_screen_object.click_login_button    
    $action.waitElementAndClick("com.android.packageinstaller:id/permission_deny_button")
  end 

  def clickBotaoEntrar(login_screen_object)
    login_screen_object.click_login_button    
  end

end
