class Character < ApplicationRecord
  belongs_to :user

  validates_presence_of :user_id, :health, :gold, :achievement_points
  validates_numericality_of :level, :stamina, :strength, :spirit, :agility, :intelligence, greater_than: 0
  validates :name, presence: true, uniqueness: true

  before_save :sanitize_fields, :calculate_stats

  def sanitize_fields
    name.downcase!
    location.downcase!
  end

  def calculate_stats
    self.stamina = self.stamina * self.level
    self.strength = self.strength * self.level
    self.spirit = self.spirit * self.level
    self.agility = self.agility * self.level
    self.intelligence = self.intelligence * self.level
    self.health = self.stamina * 10
  end
end
