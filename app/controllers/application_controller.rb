class ApplicationController < ActionController::Base
  load_and_authorize_resource :object, :find_by => :id
  before_action :authenticate_usuario!


  def current_user
    @current_user ||= session[:current_usuario_id] && Usuario.find_by_id(session[:current_usuario_id])
  end
  helper_method :current_user
end
