class Question < ActiveRecord::Base
  belongs_to :point
  
  has_many :answers
end
