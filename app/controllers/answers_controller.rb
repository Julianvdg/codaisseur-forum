class AnswersController < ApplicationController

  def index
    @answers = Answer.order(created_at: :desc)
  end

  def new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new(params.require(:answer).permit(:body, :user_id, :question_id))
    @answer.user_id = current_user.id

    if @answer.save
     flash[:notice] = "Thank you for your answer."
     redirect_to question_path(@question)
    else
     render :action => 'new'
    end
  end

  def update
  end


end
