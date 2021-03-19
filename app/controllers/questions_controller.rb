class QuestionsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_question, only: [:show, :edit, :update, :destroy]
  before_action :move_to_index, except: [:index, :search ]
  before_action :correct_user, only: [:edit, :update, :destroy]

  def index
    @questions = Question.includes(:user)
    @popular_questions = Question.includes(:favorited_users).sort {|a,b| b.favorited_users.count <=> a.favorited_users.count}
    @question = Question.new
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to(root_path)
    else
      render :new
    end
    @questions = Question.all
  end

  def show
    @answer = Answer.new
  end

  def edit
  end

  def update
    @question.update(question_params)
    if @question.save
      redirect_to user_path(@question.user.id)
    else
      render :edit
    end
  end

  def destroy
    @question.destroy
  end

  def search
    split_keyword = params[:keyword].split(/[[:blank:]]+/)  #スペースで分割する
    @questions = []
    split_keyword.each do |keyword|
      next if keyword == ""
      @questions += Question.where('title LIKE(?)', "%#{keyword}%")
    end
    @questions.uniq!
  end

  private

  def find_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:title, :content, :choice_1, :choice_2, :choice_3, :choice_4, :answer_num, :explanation).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to(root_path)
    end
  end

  def correct_user
    redirect_to(root_path) if current_user.id != @question.user_id
  end

end
