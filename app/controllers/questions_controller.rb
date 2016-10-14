class QuestionsController < ApplicationController
  before_action :authenticate_admin! , only: [:new, :create, :edit]
  def index
    answer_params = params.require(:answer).permit(
      :content,
      :user_id,
      :question_id
    )
    @answer = Answer.new(answer_params)
    @question=Question.find_by(id: @answer.question_id)
    if Answer.find_by(question_id: @answer.question_id, user_id: @answer.user_id).blank?
      @answer.save
      answer_the_question
    else
      redirect_to users_index_path, notice: '回答済みです'
    end
  end

  def show
    @question = Question.find_by(id: params[:id])
    @answer = Answer.new(question_id: @question.id)
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
  
  private
  
  def answer_the_question
    result = User.find_by(id: @answer.user_id)
    result.have_point += Question.find_by(id: @answer.question_id).have_point
    result.save
  end
end
