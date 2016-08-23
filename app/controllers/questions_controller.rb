class QuestionsController < ApplicationController

  def index
    @questions = Question.order(created_at: :desc).paginate(:page =>params[:page], :per_page => 2)
    authorize! :read, @questions
  end

  def show
    @question = Question.find(params[:id])
  end

  def create
     @question = Question.new(params.require(:question).permit(:title, :body))
     @question.user = current_user
     authorize! :create, @question
     @question.save
     redirect_to @question
   end

  def update
    question_params = params.require( :question ).permit( :content )

    @question = question.update( content: question_params[:content] )
    @question.user = current_user
    authorize! :update, @question
  end

  def user
    @user = User.find( params[:user_id] )
    authorize! :read, @user

    @question = Question.where( user: @user ).order( created_at: :desc )
    authorize! :read, @user
  end

end
