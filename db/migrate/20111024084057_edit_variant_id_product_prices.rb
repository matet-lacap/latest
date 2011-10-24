class EditVariantIdProductPrices < ActiveRecord::Migration
  def up
      change_column :product_prices, :variant_id, :null => true
  end

  def down
  end
end
