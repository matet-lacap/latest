class OrderType < ActiveRecord::Base
# Scopes

# Associations

  belongs_to :vendor

  has_many :delivery_costs
  has_many :order_headers


# Validations

  validates :name, :length => { :in => 3..50 }, :presence => true
  validates :vendor_id, :presence => true

# Active Record Triggers
  before_save :set_version


# Private Methods

  private

  def set_version
    self.version = self.version + 1
  end
end
