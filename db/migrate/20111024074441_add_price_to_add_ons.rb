class AddPriceToAddOns < ActiveRecord::Migration
  def change

   change_table :add_ons do |t|
      t.decimal  "add_on_price",                  :precision => 10, :scale => 2, :default => 0
    end
    
  end
end
