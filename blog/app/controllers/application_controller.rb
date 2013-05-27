class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale, :set_user_language 
  def set_user_language
    I18n.locale = $locale#request.params["locale"] || "pl"
    
  end
  
  
  
  def set_locale
    $locale = request.params["locale"] if request.params["locale"]
  end
  protected
  $locale = "en"
  
end
