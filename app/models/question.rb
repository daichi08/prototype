class Question < ActiveRecord::Base
  belongs_to :point
  
  has_many :answers
  
  belongs_to :answer_style
  
  has_many :selects
  accepts_nested_attributes_for :selects
end
