class Vat < ActiveRecord::Base
# Scopes

# Associations

  belongs_to :order_type
  belongs_to :vendor

  has_many :delivery_costs
  has_many :products


# Validations

  validates :name, :order_type_id, :percentage, :vendor_id, :presence => true
  validates :name, :length => { :in => 3..50 }
  validates :percentage, :numericality => true


# Active Record Triggers
  before_save :set_version


# Private Methods

  private

  def set_version
    self.version = self.version + 1
  end
end
