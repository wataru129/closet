class ItemsController < ApplicationController
  def index
    @items=Item.all.order("id DESC").page(params[:page])
  end
  def new
  end
  def create
    @item=Item.create(item_params)
  end

private
def item_params
  params.permit(:image,:description)
end
end
