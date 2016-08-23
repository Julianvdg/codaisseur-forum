class ProfilesController < ApplicationController

  helper_method :sort_column, :sort_direction

  def index
    @users = User.order("#{sort_column} #{sort_direction}")
  end

  def show
    @profile = Profile.find(params[:id])
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
