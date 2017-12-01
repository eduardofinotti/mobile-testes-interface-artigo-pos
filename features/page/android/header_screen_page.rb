require './features/page/header_screen_page'
module Android

# PO da header do APP
  class HeaderScreenElement < HeaderScreenPage
    
    attr_reader :driver
    
    def initialize(driver)
      @driver = driver 
      
      user_name = @driver.id('NameLabel')
    
      super(user_name)
    end
    
  end 

end

