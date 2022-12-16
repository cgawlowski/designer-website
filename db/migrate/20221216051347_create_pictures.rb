class CreatePictures < ActiveRecord::Migration[7.0]
  def change
    create_table :pictures do |t|
      t.string :name
      t.string :description
      t.string :category
      t.decimal :price
      t.boolean :is_home_item
      t.boolean :is_portfolio_item
      t.boolean :is_sketchbook_item
      t.boolean :is_shopping_item

      t.timestamps
    end
  end
end
