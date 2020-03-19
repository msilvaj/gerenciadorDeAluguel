class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  load_and_authorize_resource :object, :find_by => :id
  before_action :authenticate_usuario!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def current_user
    @current_user ||= session[:current_usuario_id] && Usuario.find_by_id(session[:current_usuario_id])
  end

  alias_method :current_user, :current_usuario 

  def current_ability
    @current_ability ||= Ability.new(current_user)
  end
  helper_method :current_ability

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :nome, :peso, :pesoIdeal, :altura, :location])

    end
end
