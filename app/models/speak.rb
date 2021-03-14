class Speak < ApplicationRecord

  acts_as_taggable_on :tags
  
  belongs_to :user
  has_many :comments
  
  validates :subject, presence: true
  validates :voice, presence: true
end
