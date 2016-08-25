class CoursesController < ApplicationController
  def index
    @courses = Course.order(:starting_at)
  end
end
