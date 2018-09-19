class Character < ApplicationRecord
  belongs_to :user

  validates_presence_of :user_id
  validates_numericality_of :level, :health, :stamina, :strength, :spirit, :agility, :intelligence, :gold, :achievement_points, greater_than: 0
  validates :name, presence: true, uniqueness: true

  before_save :sanitize_fields

  def sanitize_fields
    self.name.downcase
    self.location.downcase
  end
end
