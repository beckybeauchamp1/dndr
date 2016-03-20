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
  Dmaster.create!(name: Faker::Name.name,
                  campaign_id: index+1)
  Character.create!(
    player_name: Faker::Name.name,
    char_name: Faker::Superhero.name,
    klass: Faker::Company.profession,
    level: 1,
    race: Faker::StarWars.specie,
    background: Faker::StarWars.planet,
    alignment: "Chaotic Good",
    archetype: nil,
    xp: 0,
    hp_max: Faker::Number.between(1, 12),
    hp_current: 12,
    armor_class: 16,
    initiative: 2,
    speed: 30,
    prof_bonus: 2,
    inspiration: 0,
    languages: nil,
    features: nil,
    equipment: nil,
    personality: nil,
    ideals: nil,
    bonds: nil,
    flaws: nil,
    campaign_id: index+1
  )
end

p "Created #{Campaign.count} campaigns, #{Dmaster.count} dungeon masters, and #{Character.count} characters."
