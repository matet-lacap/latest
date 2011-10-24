class AddNameToProductPrice < ActiveRecord::Migration
  def change
    change_table :product_prices do |t|
      t.string :name,   :limit => 50
    end
  
  end
end
