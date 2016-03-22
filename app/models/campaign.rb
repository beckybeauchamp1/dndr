class Campaign < ActiveRecord::Base
  has_many :characters, dependent: :destroy
  has_one :dmaster, dependent: :destroy
  has_many :adventures, dependent: :destroy

  validates :name, presence: true
end
