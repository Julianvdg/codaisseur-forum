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
      format.html { redirect_to question_path(@question) }
      format.js
    else
      format.html {render action: 'new'}
      format.js
    end
  end



   def update
     @answer = Answer.find(params[:answer_id])

      if @answer.update(params.permit(:body, :user_id, :question_id))
        render json: @answer
      else
        render json: {error: "could not update answer"}
      end
  end



  def destroy
    @answer = Answer.find(params[:id])
      @question = Question.find(params[:article_id])
      @answer.destroy
      redirect_to question_path(@question)
  end
end
