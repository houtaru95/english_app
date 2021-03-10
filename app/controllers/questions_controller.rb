class QuestionsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_question, only: [:show]

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.create(question_params)
    if @question.save
      redirect_to(root_path)
    else
      render :new
    end
  end

  def show
    @answer = Answer.new
  end

  def destroy
    question = Question.find(params[:id])
    question.destroy
  end

  private

  def find_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:title, :content, :choice_1, :choice_2, :choice_3, :choice_4, :answer_num, :tag_list).merge(user_id: current_user.id)
  end

end
