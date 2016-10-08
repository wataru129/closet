class ItemsController < ApplicationController
  before_action :move_to_index ,except: :index
  def index
    @items=Item.all.order("id DESC").page(params[:page])
  end
  def new
  end
  def create
    @item=Item.create(item_params)
  end
  def edit
    @item = Item.find(params[:id]) 
  end
  def update
    item=Item.find(params[:id])
    if item.user_id == current_user.id
        item.update(item_params)
    end
  end
  def show
      @item=  Item.find(params[:id])
      comment=@item.comments.includes(:user)
  end
  def destroy
    item=Item.find(params[:id])
    if item.user_id = current_user.id
      item.destroy 
    end 
  end


private
def item_params
  params.permit(:image,:description)
end
def move_to_index
    redirect_to action: :index unless user_signed_in? 
  end
end
