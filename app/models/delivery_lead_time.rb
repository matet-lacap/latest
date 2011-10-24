class DeliveryLeadTime < ActiveRecord::Base

# Scopes

# Associations

  belongs_to  :vendor
  belongs_to :location

# Validations

  validates :weekday, :time_from, :time_until, :vendor_id, :location_id, :presence => true

# Active Record Triggers
  before_save :set_version


# Private Methods

  private

  def set_version
    self.version = self.version + 1
  end

end
