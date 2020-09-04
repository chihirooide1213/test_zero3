class Clients::ItemsController < ApplicationController

  def index
  	@items = Item.all
  end

  def show
  	@item = Item.find(params[:id])
  end

  def create
  	@item = Item.new(item_params)
  	@item.save
  	redirect_to clients_items_index_path
  end

  def new
  	@item = Item.new
  end

  private

    def item_params
        params.require(:item).permit(:name, :item_image, :introduction, :genre_id, :price, :is_active)
    end
end