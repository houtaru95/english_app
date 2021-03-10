class Question < ApplicationRecord

  acts_as_taggable

  has_many :answers, dependent: :destroy
  has_many :favorites, dependent: :destroy
  belongs_to :user

  with_options presence: true do
    validates :title
    validates :content
    validates :choice_1
    validates :choice_2
    validates :choice_3
    validates :choice_4
    validates :answer_num
  end

end
