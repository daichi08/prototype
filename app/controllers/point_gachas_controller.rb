class PointGachasController < ApplicationController
  def index
  end

  def show
    if current_user.gacha_count == 0
      randam_num = Random.rand(1 .. 100)
      if randam_num == 1
        @points = Point.find_by(id: 5)
      elsif randam_num >= 2 && randam_num <= 10
        @points = Point.find_by(id: 3)
      else
        @points = Point.find_by(id: 1)
      end
      roll_point_gacha
    else
      redirect_to users_index_path, notice: '既に回しています'
    end
  end

  def new
  end

  def update
  end
  
  private
  def roll_point_gacha
    result = User.find_by(id: current_user.id)
    result.have_point += @points.point
    result.gacha_count += 1
    result.save
  end
end
