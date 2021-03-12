class Speak < ApplicationRecord
  
  belongs_to :user
  has_many :comments
  
  validates :subject, presence: true
  validates :voice, presence: true
end
