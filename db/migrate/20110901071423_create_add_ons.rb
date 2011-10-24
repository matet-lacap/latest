class CreateAddOns < ActiveRecord::Migration
  def self.up
    create_table :add_ons do |t|
      t.integer :catalog_id,    :null => false
      t.integer :product_id
      t.integer :sort_order,    :null => false
      t.string :name,   :limit => 50
      t.text :description,    :default => nil
      t.boolean :is_active,   :default => true,    :null => false
      t.integer :version,   :default => 0,    :null => false

      #add_index(:add_ons, [:id], :unique => true)
      #add_index(:add_ons, :product_id)

    end
  end

  def self.down
    drop_table :add_ons
  end
end
