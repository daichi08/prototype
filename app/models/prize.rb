class Prize < ActiveRecord::Base
  has_many :user_prizes
  has_many :users, through: :user_prizes
  
  belongs_to :prize_gacha
end
