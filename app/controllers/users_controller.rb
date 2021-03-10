class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def favorites
    @user = User.find_by(params[:id])
    @favorites = Favorite.where(user_id: @user.id)
  end
end
