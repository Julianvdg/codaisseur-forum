class AnswersController < ApplicationController

  def index
    @answers = Answer.order(created_at: :desc)
  end

  def new
  end

  def create
    @answer = Answer.new(:body params[:body], :question_id => params[:answer][:question_id])
    @answer.user = current_user
    if @answer.save
      flash[:notice] = "Thank you for your answer."
      redirect_to "/questions/#{@answer.question_id}"
    else
      render :action => 'new'
    end
  end

  def update
  end

end
