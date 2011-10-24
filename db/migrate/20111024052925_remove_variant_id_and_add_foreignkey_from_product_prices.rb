class RemoveVariantIdAndAddForeignkeyFromProductPrices < ActiveRecord::Migration
  def up
      #10/24 -- changed the name of the foreign_key from :product_variant_id to variant_id
      #Encountered error: system is looking for variant_id instead of :product_variant_id
      remove_column(:product_prices, :product_variant_id)
      add_foreign_key(:product_prices,:variants,  :dependent => :delete)
  end

  def down
  end
end
