class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @questions = Question.all
  end

  def show
    @prizes = Prize.where(user_id: current_user.id)
  end
end
