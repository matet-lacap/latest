class DeliveryAddress < ActiveRecord::Base
# Scopes

# Associations

  belongs_to :state


# Validations

  validates :shop_user_id, :presence => true, :numericality => { :only_integer => true }
  validates :name, :city, :zip_code, :street_address01, :state_id, :presence => true



# Active Record Triggers
  before_save :set_version


# Private Methods

  private

  def set_version
    self.version = self.version + 1
  end


end
