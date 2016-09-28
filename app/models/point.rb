class Point < ActiveRecord::Base
    has_many :question_points
    has_many :questions, through: :question_points
    
    belongs_to :point_gacha
end
