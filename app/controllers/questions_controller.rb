class QuestionsController < ApplicationController
  before_action :authenticate_admin! , only: [:new, :create, :edit]
  def index
    @answers = Answer.create(content: params[:content], user_id: current_user.id, question_id: params[:question_id])
  end

  def show
    @question = Question.find_by(id: params[:id])
    @answer = Answer.new
    @selects = Select.where(question_id: @question.id)
  end

  def edit
  end

  def new
    @question = Question.new
    @question.selects.build
    @points = Point.all
    @styles = AnswerStyle.all
  end
  
  def create
    question_params = params.require(:question).permit(
      :title,
      :content,
      :have_point,
      :period,
      :style_id,
      selects_attributes: [:id, :question_id, :choices]
      )
    @question = Question.create(question_params)
  end
end
