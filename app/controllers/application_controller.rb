class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  
  before_filter :set_locale
 
      
  def current_user ; end

  def set_language
    session[:locale] = params[:locale]
    redirect_to :root
  end


private

  def set_locale
    I18n.locale = session[:locale] || locale_from_browser_info || I18n.default_locale
  end


  def locale_from_browser_info
    loc =request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/)
    return loc if ["de","en","nl"].include?(loc)
    nil
  end
  
end
