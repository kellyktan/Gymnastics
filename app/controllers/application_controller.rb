class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :authenticate_host!
  
  def after_sign_in_path_for(user)
    return landing_pages_home_url
  end
  
end
