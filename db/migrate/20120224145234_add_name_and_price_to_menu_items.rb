class AddNameAndPriceToMenuItems < ActiveRecord::Migration
  def change
    add_column :menu_items, :name, :string
    add_column :menu_items, :price, :float
  end
end
