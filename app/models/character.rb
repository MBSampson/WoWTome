class Character < ApplicationRecord
  belongs_to :user
  belongs_to :character_class

  validates_presence_of :user_id, :health, :gold, :achievement_points
  validates_numericality_of :level, :stamina, :strength, :spirit, :agility, :intelligence, greater_than: 0
  validates :name, presence: true, uniqueness: true

  before_save :sanitize_fields, :calculate_stats

  # Wrapping the hash in an array to avoid errors is ugly, needs refactor
  SPECIALIZATIONS = [ balance:        1,
                      feral:          2,
                      restoration:    3,
                      beast_mastery:  4,
                      marksmanship:   5,
                      survival:       6,
                      fire:           7,
                      frost:          8,
                      arcane:         9,
                      holy:           10,
                      retribution:    11,
                      protection:     12,
                      holy:           13,
                      shadow:         14,
                      discipline:     15,
                      subtlety:       16,
                      assassination:  17,
                      combat:         18,
                      enhancement:    19,
                      elemental:      20,
                      restoration:    21,
                      destruction:    22,
                      demonology:     23,
                      affliction:     24,
                      arms:           25,
                      fury:           26,
                      defense:        27 ].freeze

  def sanitize_fields
    name.downcase!
    location.downcase!
  end

  def calculate_stats
    self.stamina = self.stamina + self.level
    self.strength = self.strength + self.level
    self.spirit = self.spirit + self.level
    self.agility = self.agility + self.level
    self.intelligence = self.intelligence + self.level
    self.health = self.stamina * 10
  end

  def show_spec
    SPECIALIZATIONS.first.key(spec_id).to_s
  end
end
