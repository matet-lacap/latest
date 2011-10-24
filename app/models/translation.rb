class Translation < ActiveRecord::Base
# Scopes

# Associations


# Validations

  validates :shortcut, :language_code, :translation, :presence => true
  validates :shortcut, :length => { :maximum => 100 }
  validates :language_code, :length => { :maximum => 2 }

# Active Record Triggers
  before_save :set_version


# Private Methods

  private

  def set_version
    self.version = self.version + 1
  end

end
