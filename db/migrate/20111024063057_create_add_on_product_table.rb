class CreateAddOnProductTable < ActiveRecord::Migration
  def up
    #many to many relationship of product and add-ons
    create_table :add_ons_products, :id => false do |t|
      t.integer :add_on_id
      t.integer :product_id
    end
  end

  def down
  end
end
