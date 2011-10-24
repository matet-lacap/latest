class CreateSpecialOfferTypes < ActiveRecord::Migration
  def self.up
    create_table :special_offer_types do |t|
    t.integer "vendor_id",                                :null => false
    t.string  "name",        :limit => 50,                :null => false
    t.text    "description"
    t.boolean "is_active",                 :default => true, :null => false
    t.integer "version",                   :default => 0, :null => false
    end
  end

  def self.down
    drop_table :special_offer_types
  end
end
