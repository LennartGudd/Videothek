class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  #overwriting after_sing_in
  def after_sign_in_path_for(resource_or_scope)
      '/films' #Hier Index.html oder so
  end

  #overwriting after_sing_out
  def after_sign_out_path_for(resource_or_scope)
      request.referrer
  end
    
	#save additional devisefildes
	before_filter :configure_permitted_parameters, if: :devise_controller?

	def configure_permitted_parameters
		devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :name, :firstname, :birthday, :street, :city, :zipcode) }
	end

	protect_from_forgery with: :exception

end
