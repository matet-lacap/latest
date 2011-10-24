class SpecialOfferType < ActiveRecord::Base
# Scopes

# Associations

  belongs_to :vendor

  has_many :product_prices, :foreign_key => "special_offer_type_id"


# Validations

  validates :name, :presence => true, :length => { :in => 3..50 }
  validates :vendor_id, :presence => true

# Active Record Triggers
  before_save :set_version


# Private Methods

  private

  def set_version
    self.version = self.version + 1
  end

end
