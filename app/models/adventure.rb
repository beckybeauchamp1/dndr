class Adventure < ActiveRecord::Base
  belongs_to :campaign

  validates :name, presence: true
end
