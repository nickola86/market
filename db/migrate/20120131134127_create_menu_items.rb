class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|

      t.timestamps
    end
  end
end
