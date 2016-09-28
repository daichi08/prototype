class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :user_questions
  has_many :questions, through: :user_questions
  
  belongs_to :point_gacha
  belongs_to :prize_gacha
end
