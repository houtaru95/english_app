class SpeaksController < ApplicationController

  def index
    @speaks = Speak.all
  end

  def new
    @speak = Speak.new 
  end

  def create
    @speak = Speak.new(speak_params)
    if @speak.save
      redirect_to speaks_path
    else
      render :new
    end
  end

  def show
    @speak = Speak.find(params[:id])
    @comment = Comment.new
    @comments = @speak.comments.includes(:user)
  end

  private

  def speak_params
    params.require(:speak).permit(:subject, :voice).merge(user_id: current_user.id)
  end

end
