class AddColumnToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :genre_id, :integer
    add_column :items, :introduction, :text
    add_column :items, :item_image_id, :string
  end
end
