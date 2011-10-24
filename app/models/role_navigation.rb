class RoleNavigation < ActiveRecord::Base
# Scopes

# Associations

  belongs_to :navigation
  belongs_to :role


# Validations

  validates :navigation_id, :role_id, :presence => true


# Active Record Triggers
  before_save :set_version


# Private Methods

  private

  def set_version
    self.version = self.version + 1
  end

end
