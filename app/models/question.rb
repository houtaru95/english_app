class Question < ApplicationRecord

  has_many :answers, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_one :detail, dependent: :destroy
  belongs_to :user

end
