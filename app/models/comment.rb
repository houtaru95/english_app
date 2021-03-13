class Comment < ApplicationRecord

  belongs_to :user
  belongs_to :speak
  has_many :responses, dependent: :destroy

  has_many :responses, class_name: "Comment", foreign_key: :response_comment, dependent: :destroy

  # belongs_to :response_comment, class_name: "Comment", optional: true
  # has_many :responses, class_name: "Comment", foreign_key: :response_comment_id, dependent: :destroy
end
