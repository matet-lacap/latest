class OrderLine < ActiveRecord::Base
# Scopes

# Associations


  belongs_to :add_on
  belongs_to :order_header
  #belongs_to :variant


# Validations

  validates :order_header_id, :quantity, :price_line, :price_vat, :product_id, :presence => true, :numericality => true

# Active Record Triggers
  before_save :set_version


# Private Methods

  private

  def set_version
    self.version = self.version + 1
  end

end
