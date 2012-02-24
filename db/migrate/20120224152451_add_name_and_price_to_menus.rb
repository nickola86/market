class AddNameAndPriceToMenus < ActiveRecord::Migration
  def change
    add_column :menus, :name, :string
    add_column :menus, :price, :float
  end
end
