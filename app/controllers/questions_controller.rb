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
      @questions = Question.order("#{sort_column} #{sort_direction}").filter(params.slice(:topic)).paginate(:page =>params[:page], :per_page => 5)
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


 def update
    @question = Question.find(params[:question_id])

     if @question.update(params.permit(:body, :title, :topic_id, :user_id))
       render json: @question
     else
       render json: {error: "could not update question"}
     end
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
