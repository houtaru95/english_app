class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :questions
  has_many :answers
  has_many :favorites

  validates :nickname, presence: true

  def already_favorited?(question)
    self.favorites.exists?(question_id: question.id)
  end
end
