class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :questions
  has_many :answers
  has_many :speaks
  has_many :comments
  has_many :favorites
  has_many :favorite_questions, through: :favorites, source: :question

  validates :nickname, presence: true, format: { with: /\A[^ぁ-んァ-ヶ一-龥々ーｧ-ﾝﾞﾟ]+\z/ }

  def already_favorited?(question)
    self.favorites.exists?(question_id: question.id)
  end
end
