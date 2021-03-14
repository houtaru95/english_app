class AnswersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_question_detail, only: [:create]

  def create
    @answer = Answer.create(answer_params)
  end

  def destroy
  end

  private

  def answer_params
    params.require(:answer).permit(:user_answer).merge(user_id: current_user.id, question_id: params[:question_id])
  end

  def set_question_detail
    @question = Question.find(params[:question_id])
    @detail = @question.detail
  end

end
