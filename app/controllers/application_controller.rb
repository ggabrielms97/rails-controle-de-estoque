class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token
  # before_action :store_user_location!, if: :storable_location?
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!, :set_current_user 

  	def set_current_user
    	User.current = current_user
  	end

	def after_sign_out_path_for(resource_or_scope)	
  		new_user_session_path 
  	end

  def after_resetting_password_path_for(resource_or_scope)
    root_path
  end

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

    protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:accept_invitation, keys: [:username])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username])

    end
end
