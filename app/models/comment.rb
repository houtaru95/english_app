class Comment < ApplicationRecord

  belongs_to :user
  belongs_to :speak
  # has_many :responses, dependent: :destroy
  has_many :responses, class_name: "Comment", foreign_key: :response_comment, dependent: :destroy

  validates :text, format: { with: /\A[^ぁ-んァ-ヶ一-龥々ーｧ-ﾝﾞﾟ]+\z/ }
end
