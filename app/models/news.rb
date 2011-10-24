class News < ActiveRecord::Base
# Scopes

# Associations

  belongs_to :vendor
  belongs_to :customer_group


# Validations

  validates :customer_group_id, :headline, :newstext, :date_from, :date_until, :vendor_id, :presence => true
  validates :customer_group_id, :numericality => { :only_integer => true }

# Active Record Triggers
  before_save :set_version


# Rails Admin


# Private Methods

  private

  def set_version
    self.version = self.version + 1
  end

end
