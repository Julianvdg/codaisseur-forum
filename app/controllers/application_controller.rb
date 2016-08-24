class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
    
    rescue_from CanCan::AccessDenied do |exception|  
        flash[:notice] = "Access denied!"  
    redirect_to root_path  
    end
    
end
