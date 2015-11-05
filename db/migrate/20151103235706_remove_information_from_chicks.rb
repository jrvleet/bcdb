class RemoveInformationFromChicks < ActiveRecord::Migration
  def change
  	remove_column :chicks, :information
  end
end
