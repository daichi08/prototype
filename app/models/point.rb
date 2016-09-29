class Point < ActiveRecord::Base
    has_many :questions
    
    belongs_to :point_gacha
end
