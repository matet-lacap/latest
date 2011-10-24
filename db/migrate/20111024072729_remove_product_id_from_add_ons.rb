class RemoveProductIdFromAddOns < ActiveRecord::Migration
  def up
    remove_column(:add_ons, :product_id)
  end

  def down
  end
end
