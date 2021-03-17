class AnswersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_question, only: [:create]

  def create
    @answer = Answer.create(answer_params)
  end

  private

  def answer_params
    params.require(:answer).permit(:user_answer).merge(user_id: current_user.id, question_id: params[:question_id])
  end

  def set_question
    @question = Question.find(params[:question_id])
  end

end
