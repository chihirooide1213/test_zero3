class SitesController < ApplicationController
  def index
  	@items = Item.all
  end

  def create
  	@item = Item.new(item_params)
  	@item.save
  	redirect_to sites_path
  end

  def new
  	@item = Item.new
  end

  private

    def item_params
        params.require(:product).permit(:name, :item_image, :introduction, :genre_id, :price, :is_active)
    end
end
