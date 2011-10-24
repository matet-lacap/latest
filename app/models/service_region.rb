class ServiceRegion < ActiveRecord::Base
# Scopes

# Associations

  belongs_to :location
  belongs_to :vendor

  has_many :delivery_costs


# Validations

  validates :vendor_id, :presence => true

# Active Record Triggers

# Private Methods

end
