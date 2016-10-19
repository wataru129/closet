class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @items = user.items.order("created_at DESC").page(params[:page]).per(5)
  end
end
