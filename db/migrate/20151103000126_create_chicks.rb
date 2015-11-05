class CreateChicks < ActiveRecord::Migration
  def change
    create_table :chicks do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.string :image_uri
      t.string :category
      t.string :information
      t.string :text

      t.timestamps null: false
    end
  end
end
