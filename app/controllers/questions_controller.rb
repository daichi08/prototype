class QuestionsController < ApplicationController
  def index
  end

  def show
    @question = Question.find_by(id: params[:id])
  end

  def edit
  end

  def new
    @question = Question.new
    @points = Point.all
  end
  
  def create
    question_params = params.require(:question).permit(:title, :content, :have_point, :period)
    @question = Question.create(question_params)
  end
end
