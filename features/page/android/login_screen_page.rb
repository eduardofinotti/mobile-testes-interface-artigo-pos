require './features/page/login_screen_page'
module Android
  class LoginScreenElement < LoginScreenPage
    
    attr_reader :driver
    
    def initialize(driver)
      @driver = driver
      
      login_user = @driver.id("UserField")
      login_password = @driver.id("PassField")
      login_button = @driver.id("LoginBtn")
      
      super(login_user, login_password, login_button)
    end
  
  end

end


