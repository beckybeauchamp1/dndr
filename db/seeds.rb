# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Character.destroy_all
Dmaster.destroy_all
Campaign.destroy_all

10.times do |index|
  Campaign.create!(name: Faker::Company.name,
                summary: Faker::Company.catch_phrase)
  Dmaster.create!(name: Faker::Name.name, campaign_id: index+1)
end

p "Created #{Campaign.count} campaigns and #{Dmaster.count} dungeon masters."
