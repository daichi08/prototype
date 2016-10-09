class AdminsController < ApplicationController
  before_action :authenticate_admin!
  def index
    @questions = Question.all
  end

  def show
  end
end
