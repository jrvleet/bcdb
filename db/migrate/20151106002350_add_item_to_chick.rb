class AddItemToChick < ActiveRecord::Migration
  def change
  	add_column :chicks, :likes, :integer, default: 0
  end
end
