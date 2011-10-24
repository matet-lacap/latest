class CreateDeliveryLeadTimes < ActiveRecord::Migration
  def self.up
    create_table :delivery_lead_times do |t|
      t.integer :vendor_id
      t.integer :location_id
      t.integer :weekday
      t.time :time_from
      t.time :time_until
      t.integer :lead_minutes
      t.integer :version,   :default => 0
    end
  end

  def self.down
    drop_table :delivery_lead_times
  end
end
