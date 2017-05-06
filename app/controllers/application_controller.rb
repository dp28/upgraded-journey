class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

  helper_method def gmaps_src
    "https://maps.googleapis.com/maps/api/js?key=#{gmaps_api_key}&callback=initMap"
  end

  def gmaps_api_key
    ENV['GMAPS_API_KEY']
  end

end
