class QuestionsController < ApplicationController

  def index
    @questions = Question.order(created_at: :desc).paginate(:page =>params[:page], :per_page => 10)
    authorize! :read, @questions
  end

  def create

    @question = question.new( content: question_params[:content] )
    question_params = params.require( :question ).permit( :content )
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
