class QuestionsController < ApplicationController

  def index
    @questions = Question.order(created_at: :desc).paginate(:page =>params[:page], :per_page => 2)
    authorize! :read, @questions
  end

  def show
    @question = Question.find(params[:id])
  end

  def create
    question_params = params.require( :question ).permit( :content )

     @question = Question.new( content: question_params[:content] )
     @question.user = current_user
     authorize! :create, @question
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
