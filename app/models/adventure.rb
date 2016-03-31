class Adventure < ActiveRecord::Base
  belongs_to :campaign

  # awesome job using AR validations!
  validates :name, presence: true
end
