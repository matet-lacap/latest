class OrderHeader < ActiveRecord::Base
# Scopes

# Associations

  #belongs_to :admin
  belongs_to :vendor
  belongs_to :location
  belongs_to :order_type
  belongs_to :order_state

  has_many :order_lines



# Validations

  validates :shop_user_id, :order_datetime, :vendor_id, :location_id, :order_type_id, :order_state_id, :presence => true
  validates :shop_user_id, :numericality => { :only_integer => true }


# Active Record Triggers
  before_save :set_version


# Private Methods

  private

  def set_version
    self.version = self.version + 1
  end

end
