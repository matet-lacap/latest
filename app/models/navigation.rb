class Navigation < ActiveRecord::Base
# Scopes

  # Associations

  has_many :navigations, :foreign_key => 'parent_id'
  has_many :role_navigations
  belongs_to :navigation, :foreign_key => 'parent_id'

  # Validations

  validates :pane_id, :width, :height, :pos_x, :pos_y, :presence => true, :numericality => { :only_integer => true }
  validates :name_menu, :name_header, :name_control, :presence =>  true


# Active Record Triggers
  before_save :set_version


# Private Methods

  private

  def set_version
    self.version = self.version + 1
  end

end
