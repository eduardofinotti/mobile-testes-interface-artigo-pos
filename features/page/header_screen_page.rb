class HeaderScreenPage
  
  attr_accessor :user_name, :botao_logout
  
  def initialize(user_name, botao_logout)
    @label_user_name = user_name
    @botao_logout = botao_logout
  end

  def getUserName
    @label_user_name.text
  end

  def clickLogout
    @botao_logout.click
  end  
  
end