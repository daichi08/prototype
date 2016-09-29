class PrizeGachasController < ApplicationController
  def index
  end

  def show
    if current_user.have_point >= 10
      roll_prize_gacha
      randam_num = Random.rand(1 ..10)
      if randam_num == 1
        @prizes = Prize.create(name: "引換券" , user_id: current_user.id)
      else
        @prizes = Prize.find(1)
      end
    else
      redirect_to users_index_path , notice: 'ポイントが足りません'
    end
  end

  def new
  end

  def update
  end
  
  private
  def roll_prize_gacha
    result = User.find_by(id: current_user.id)
    result.have_point -= 10
    result.save
  end
  
end
