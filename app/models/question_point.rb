class QuestionPoint < ActiveRecord::Base
  belongs_to :question
  belongs_to :point
end
