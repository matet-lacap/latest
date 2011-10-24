class DeliveryCost < ActiveRecord::Base

# Scopes

# Associations

  belongs_to :vat
  belongs_to :vendor
  belongs_to :order_type
  belongs_to :customer_group
  belongs_to :service_region


# Validations

  validates :price, :vat_id, :vendor_id, :order_type_id, :presence => true
  validates :price, :numericality => true

# Active Record Triggers
  before_save :set_version


# Private Methods

  private

  def set_version
    self.version = self.version + 1
  end

end