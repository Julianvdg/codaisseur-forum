class ProfilesController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @profile = Profile.find(params[:id])
  end
end
