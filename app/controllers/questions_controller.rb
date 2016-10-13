class QuestionsController < ApplicationController
  before_action :authenticate_admin! , only: [:new, :create, :edit]
  def index
    @answer = Answer.create(
      content: params[:content],
      user_id: current_user.id,
      question_id: params[:name]
    )
    result = User.find_by(id: current_user.id)
    result.have_point += 1
    result.save
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
    answer_params = params.require(:answer).permit(
      :content,
      :user_id,
      :question_id
    )
    Answer.create(answer_params)
    result = User.find_by(id: current_user.id)
    result.have_point += Question.find_by(id: @answer.question_id).have_point
    result.save
  end
end
