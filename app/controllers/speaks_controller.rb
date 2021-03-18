class SpeaksController < ApplicationController
  before_action :authenticate_user!
  before_action :move_to_index, except: [:index]
  before_action :set_speak, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  
  def index
    if params[:tag]
      @speaks = Speak.tagged_with(params[:tag])
    else
      @speaks = Speak.includes(:user)
    end
    @speak = Speak.new 
    @tags = Speak.tag_counts_on(:tags).order('count DESC')
  end

  def new
    @speak = Speak.new 
  end

  def create
    @speak = Speak.new(speak_params)
    if @speak.save
      redirect_to(speaks_path)
    else
      render :new
    end
  end

  def show
    @comments = @speak.comments.includes(:user)
    @comment = Comment.new
    @response_comments = Comment.new   #特定のcommentに対するresponseをするために生成
  end

  def edit
    @comments = @speak.comments.includes(:user)
    @comment = Comment.new
    @response_comments = Comment.new   #特定のcommentに対するresponseをするために生成
  end

  def update
    @speak.update(speak_params)
    if @speak.save
      redirect_to(speaks_path)
    else
      render :edit
    end
  end

  def destroy
    @speak.destroy
    redirect_to(speaks_path)
  end

  private

  def speak_params
    params.require(:speak).permit(:subject, :voice, :tag_list).merge(user_id: current_user.id)
  end

  def set_speak
    @speak = Speak.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to(root_path)
    end
  end

  def correct_user
    redirect_to(root_path) if current_user.id != @speak.user.id
  end


end
