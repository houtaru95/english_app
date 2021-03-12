class CommentsController < ApplicationController
  
  def create
    @comment = Comment.create(comment_params)
    if @comment.save
      redirect_to speak_comments_path(@comment.speak.id)
    else
      render root_path
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, speak_id: params[:speak_id])
  end

end
