class QuestionsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_question, only: [:show]
  before_action :move_to_index, except: [:index, :search ]

  def index
    if params[:tag]
      @questions = Question.tagged_with(params[:tag])
    else
      @questions = Question.all
    end
    @tags = Question.tag_counts_on(:tags).order('count DESC')
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

  def search
    split_keyword = params[:keyword].split(/[[:blank:]]+/)  #スペースで分割する
    @questions = []
    split_keyword.each do |keyword|
      next if keyword == ""
      @questions += Question.where('title LIKE(?)', "%#{keyword}%")
    end
    @questions.uniq!
    @tags = Question.tag_counts_on(:tags).order('count DESC')
  end

  private

  def find_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:title, :content, :choice_1, :choice_2, :choice_3, :choice_4, :answer_num, :tag_list).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to(root_path)
    end
  end

end
