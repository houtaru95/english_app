class Speak < ApplicationRecord

  acts_as_taggable_on :tags
  
  belongs_to :user
  has_many :comments
  
  validates :subject, presence: true, format: { with: /\A[^ぁ-んァ-ヶ一-龥々ーｧ-ﾝﾞﾟ]+\z/ }
  validates :voice, presence: true, format: { with: /\A[^ぁ-んァ-ヶ一-龥々ーｧ-ﾝﾞﾟ]+\z/ }

end


