class Question < ActiveRecord::Base
  has_many :user_questions
  has_many :users, through: :user_questions
  
  has_many :question_points
  has_many :points, through: :question_points
end
