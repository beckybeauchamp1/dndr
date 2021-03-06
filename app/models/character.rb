class Character < ActiveRecord::Base
  belongs_to :campaign
  has_one :ability, dependent: :destroy
  has_many :spells, dependent: :destroy

  validates :char_name, presence: true
  validates :klass, presence: true
  validates :level, presence: true
  validates :race, presence: true
  validates :xp, presence: true
  validates :hp_max, presence: true
  validates :hp_current, presence: true
end
