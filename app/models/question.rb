class Question < ApplicationRecord

  has_many :answers, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorited_users, through: :favorites, source: :user
  belongs_to :user

  with_options presence: true do
    validates :title, format: { with: /\A[^ぁ-んァ-ヶ一-龥々ーｧ-ﾝﾞﾟ]+\z/ }
    validates :content, format: { with: /\A[^ぁ-んァ-ヶ一-龥々ーｧ-ﾝﾞﾟ]+\z/ }
    validates :choice_1, format: { with: /\A[^ぁ-んァ-ヶ一-龥々ーｧ-ﾝﾞﾟ]+\z/ }
    validates :choice_2, format: { with: /\A[^ぁ-んァ-ヶ一-龥々ーｧ-ﾝﾞﾟ]+\z/ }
    validates :choice_3, format: { with: /\A[^ぁ-んァ-ヶ一-龥々ーｧ-ﾝﾞﾟ]+\z/ }
    validates :choice_4, format: { with: /\A[^ぁ-んァ-ヶ一-龥々ーｧ-ﾝﾞﾟ]+\z/ }
    validates :answer_num
    validates :explanation
  end
  
end
