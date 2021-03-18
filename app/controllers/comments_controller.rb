class CommentsController < ApplicationController
  
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to speak_path(@comment.speak.id)
    else
      redirect_to root_path
    end
  end

  def destroy
    comment = Comment.find_by(id: params[:id], speak_id: params[:speak_id]).destroy
    redirect_to speak_path
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :response_comment).merge(user_id: current_user.id, speak_id: params[:speak_id])
  end

end
