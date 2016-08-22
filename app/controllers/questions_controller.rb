class QuestionsController < ApplicationController

  def index
    @question = Questions.order( created_at: :desc )
    authorize! :read, @questions
  end

  def create
    question_params = params.require( :question ).permit( :content )

     @question = question.new( content: question_params[:content] )
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
