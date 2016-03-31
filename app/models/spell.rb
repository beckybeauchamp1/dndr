class Spell < ActiveRecord::Base
  # Nice!
  belongs_to :character

  validates :name, presence: true
end
