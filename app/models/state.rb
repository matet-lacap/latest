class State < ActiveRecord::Base
# Scopes

# Associations

  has_many :delivery_addresses
  has_many :locations


# Validations

  validates :name, :presence => true, :length => { :in => 3..50 }

# Active Record Triggers
  before_save :set_version


# Private Methods

  private

  def set_version
    self.version = self.version + 1
  end

end
