class ProfilesController < ApplicationController

  helper_method :sort_column, :sort_direction

  def index
    @users = User.order("#{sort_column} #{sort_direction}")
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

  def new
    @user = current_user
    if !@user.profile.nil?
      redirect_to root_path
    end
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user
    authorize! :create, @profile
    @profile.save
    redirect_to @profile
  end

  def edit
    @profile = Profile.find(params[:id])
    @user = @profile.user
  end

  def update
    @profile = profile.update( content: profile_params[:avatar, :first_name, :last_name, :student_class, :bio, :github, :twitter, :website] )
    authorize! :update, @profile
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

  def profile_params
    params.require(:profile).permit(:avatar, :first_name, :last_name, :student_class, :bio, :github, :twitter, :website).tap do |person_params|
      person_params.require([:first_name, :last_name])
    end
  end
end
