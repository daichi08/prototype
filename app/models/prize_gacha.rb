class PrizeGacha < ActiveRecord::Base
  has_many :users
  has_many :prizes
end
