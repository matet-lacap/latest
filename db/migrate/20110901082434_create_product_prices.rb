class CreateProductPrices < ActiveRecord::Migration
  def self.up
    create_table :product_prices do |t|
    t.integer  "location_id"
    t.integer  "customer_group_id",                                     :null => false
    t.integer  "product_variant_id",                                    :null => false
    t.decimal  "price",                  :precision => 10, :scale => 0, :null => false
    t.integer  "special_offer_type_id"
    t.datetime "special_offer_from"
    t.datetime "special_offer_until"
    end
  end

  def self.down
    drop_table :product_prices
  end
end
