class ProductPrice < ActiveRecord::Base
# Scopes

# Associations

  belongs_to :special_offer_type
  belongs_to :location
  belongs_to :customer_group
  #10/24 -- changed the name of the foreign_key to variant_id
  belongs_to :variant#, :foreign_key => "product_variant_id"


# Validations

  #validates :price, :customer_group_id, :product_variant_id, :presence => true

  #10/24 -- changed the name of the foreign_key to variant_id
  validates :price, :customer_group_id, :variant_id, :presence => true
  
# Active Record Triggers

# Private Methods

end
