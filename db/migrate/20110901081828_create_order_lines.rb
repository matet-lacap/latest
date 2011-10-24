class CreateOrderLines < ActiveRecord::Migration
  def self.up
    create_table :order_lines do |t|
    t.integer "order_header_id",                                               :null => false
    t.integer "quantity",                                       :default => 1, :null => false
    t.integer "product_id",                                                    :null => false
    t.integer "add_on_id"
    t.decimal "price_item",      :precision => 10, :scale => 0, :default => 0
    t.decimal "price_line",      :precision => 10, :scale => 0, :default => 0, :null => false
    t.decimal "price_vat",       :precision => 10, :scale => 0, :default => 0, :null => false
    t.integer "version",                                        :default => 0, :null => false
    end
  end

  def self.down
    drop_table :order_lines
  end
end
