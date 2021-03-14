class QuestionDetail
  include ActiveModel::Model
  attr_accessor :title, :content, :choice_1, :choice_2, :choice_3, :choice_4, :answer_num, :user_id, :explanation

  with_options presence: true do
    validates :title
    validates :content
    validates :choice_1
    validates :choice_2
    validates :choice_3
    validates :choice_4
    validates :answer_num
    validates :user_id

    validates :explanation, presence: true
  end

  def save
    question = Question.create(title: title, content: content, choice_1: choice_1, choice_2: choice_2, choice_3: choice_3, choice_4: choice_4, answer_num: answer_num, user_id: user_id)
    Detail.create(explanation: explanation, question_id: question.id)
  end


end