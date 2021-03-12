class Speak < ApplicationRecord
  
  belongs_to :user
  
  validates :subject, presence: true
  validates :voice, presence: true
end
