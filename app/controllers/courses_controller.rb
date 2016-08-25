class CoursesController < ApplicationController
  def index
    @courses = Course.order(:starting_at)
  end

  def new
    @course = Course.new
  end
end
