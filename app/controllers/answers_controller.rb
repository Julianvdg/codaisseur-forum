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
    @question = Questions.find(params[:question_id])
    @answer = @question.answers.find(params[:id])

    if @answer.user_id = current_iser.id
      if @answer.update(answers_params)
        respond_to do |format|
          format.html { redirect_to question_path(@question)}
          format.js
        end
      else
        flash[:alert] = "Something wrong, try again"
        render root_path
      end
    end
  end



  def destroy
    @answer = Answer.find(params[:id])
      @question = Question.find(params[:article_id])
      @answer.destroy
      redirect_to question_path(@question)
  end
end
