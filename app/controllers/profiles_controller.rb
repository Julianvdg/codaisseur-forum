class ProfilesController < ApplicationController

  helper_method :sort_column, :sort_direction

  def index
    @users = User.order("#{sort_column} #{sort_direction}")
       authorize! :read, @users
  end

  def show
    @profile = Profile.find(params[:id])
  end
        
    def approve_user
        user = User.find(params[:id])
        user.approved = true
        user.save
        redirect_to user_management_path
    end
    
    def disable_user
        user = User.find(params[:id])
        user.disabled = true
        user.save
        redirect_to user_management_path
    end

  private

  def sortable_columns
    ["email", "role", "created_at"]
  end

  def sort_column
    sortable_columns.include?(params[:column]) ? params[:column] : "created_at"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
    

end
