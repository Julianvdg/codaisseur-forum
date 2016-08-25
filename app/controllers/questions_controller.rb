class QuestionsController < ApplicationController
helper_method :sort_column, :sort_direction


  def index

    if user_signed_in?
        if current_user.disabled == true
            sign_out_and_redirect(current_user)
        end
    end

    if params[:search]
      @questions = Question.search(params[:search]).order(created_at: :desc).paginate(:page =>params[:page], :per_page => 5)
    else
      @questions = Question.order("#{sort_column} #{sort_direction}").paginate(:page =>params[:page], :per_page => 5)
    end
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

  def edit
     @question = Question.find(params[:post_id])

  end

  def update
    question_params = params.require( :question ).permit( :content )

    @question = question.update( content: question_params[:content] )
    @question.user = current_user

  end

  def user
    @user = User.find( params[:user_id] )
    authorize! :read, @user

    @question = Question.where( user: @user ).order( created_at: :desc )
    authorize! :read, @user
  end

  private
  def sortable_columns
    [ "created_at", "title", "topic_id"]
  end

  def sort_column
    sortable_columns.include?(params[:column]) ? params[:column] : "created_at"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "desc"
  end
end
