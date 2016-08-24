class QuestionsController < ApplicationController
helper_method :sort_column, :sort_direction


  def index
    if params[:search]
      @questions = Question.search(params[:search]).order(created_at: :desc).paginate(:page =>params[:page], :per_page => 5)
    else
      @questions = Question.order("#{sort_column} #{sort_direction}").paginate(:page =>params[:page], :per_page => 5)
    end
    authorize! :read, @questions
  end

  def show
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(params.require(:question).permit(:title, :body, :topic_id))
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

  private
  def sortable_columns
    ["topic_id", "created_at", "title"]
  end

  def sort_column
    sortable_columns.include?(params[:column]) ? params[:column] : "title"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
