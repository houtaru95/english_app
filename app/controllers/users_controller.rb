class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @questions = @user.questions
    @speaks = @user.speaks

    @favorites_count = 0
    @questions.each do |question|
      @favorites_count += question.favorites.count
    end

  end

  def favorites
    @user = User.find_by(params[:id])
    @favorites = Favorite.where(user_id: @user.id)
  end

end
