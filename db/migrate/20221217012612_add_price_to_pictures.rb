class AddPriceToPictures < ActiveRecord::Migration[7.0]
  def change
    remove_column :pictures, :price
    add_monetize :pictures, :price, currency: { present: false }
  end
end
