class LoginController < ActionController::Base
  
  protect_from_forgery with: :null_session, only: [:create]	

  def index
  end

  #create action for logging in with facebook and google
end
