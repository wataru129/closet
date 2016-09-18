class ItemsController < ApplicationController
  before_action :move_to_index ,except: :index
  def index
    @items=Item.all.order("id DESC")
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
