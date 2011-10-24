class CreateServiceRegions < ActiveRecord::Migration
  def self.up
    create_table :service_regions do |t|

      t.integer "vendor_id",   :null => false
      t.integer "location_id"
    end
  end

  def self.down
    drop_table :service_regions
  end
end
