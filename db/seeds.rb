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

5.times do
  campaign = Campaign.create!(name: Faker::Company.name,
                  summary: Faker::Company.catch_phrase)
  Dmaster.create!(name: Faker::Name.name,
                  campaign_id: campaign)
  5.times do
    campaign.characters.create!(
    player_name: Faker::Name.name,
    char_name: Faker::Superhero.name,
    klass: ['Barbarian', 'Bard', 'Cleric', 'Druid', 'Fighter', 'Wizard', 'Monk', 'Paladin', 'Ranger', 'Sorcerer', 'Rogue', 'Warlock'].sample,
    level: 1,
    race: ['Elf', 'Dwarf', 'Halfling', 'Human'].sample,
    background: ['Noble', 'Soldier', 'Acolyte', 'Criminal', 'Sage', 'Folk Hero', 'Spy'].sample,
    alignment: ['Lawful Good', 'Neutral Good', 'Chaotic Good', 'Lawful Neutral', 'Neutral', 'Chaotic Neutral', 'Lawful Evil', 'Neutral Evil', 'Chaotic Evil'].sample,
    archetype: nil,
    xp: 0,
    hp_max: 12,
    hp_current: Faker::Number.between(1, 12),
    armor_class: Faker::Number.between(10, 16),
    initiative: 2,
    speed: Faker::Number.between(25, 35),
    prof_bonus: 2,
    inspiration: 0,
    languages: nil,
    features: nil,
    equipment: nil,
    personality: nil,
    ideals: nil,
    bonds: nil,
    flaws: nil,
    )
  end
end
#
# 5.times do |index|
#   camp = Campaign.create
#   dm = DM.create
#   5.times do
#     camp.characters.create
#   end
#   camp.dm = dm
# end
#
# 32.times do |index|
#   char = Caharcter.create
#   char.camp = Campaign.sample
# end


# 4.times do |index|
#   Campaign.find(1).characters.create!(
#     player_name: Faker::Name.name,
#     char_name: Faker::Superhero.name,
#     klass: Faker::Company.profession,
#     level: 1,
#     race: Faker::StarWars.specie,
#     background: Faker::StarWars.planet,
#     alignment: "Chaotic Good",
#     archetype: nil,
#     xp: 0,
#     hp_max: 12,
#     hp_current: Faker::Number.between(1, 12),
#     armor_class: Faker::Number.between(10, 16),
#     initiative: 2,
#     speed: Faker::Number.between(25, 35),
#     prof_bonus: 2,
#     inspiration: 0,
#     languages: nil,
#     features: nil,
#     equipment: nil,
#     personality: nil,
#     ideals: nil,
#     bonds: nil,
#     flaws: nil,
#     campaign_id: 1
#   )
# end
#
# 4.times do |index|
#   Campaign.find(2).characters.create!(
#     player_name: Faker::Name.name,
#     char_name: Faker::Superhero.name,
#     klass: Faker::Company.profession,
#     level: 1,
#     race: Faker::StarWars.specie,
#     background: Faker::StarWars.planet,
#     alignment: "Chaotic Good",
#     archetype: nil,
#     xp: 0,
#     hp_max: 12,
#     hp_current: Faker::Number.between(1, 12),
#     armor_class: Faker::Number.between(10, 16),
#     initiative: 2,
#     speed: Faker::Number.between(25, 35),
#     prof_bonus: 2,
#     inspiration: 0,
#     languages: nil,
#     features: nil,
#     equipment: nil,
#     personality: nil,
#     ideals: nil,
#     bonds: nil,
#     flaws: nil,
#     campaign_id: 2
#   )
# end
#
# 4.times do |index|
#   Campaign.find(3).characters.create!(
#     player_name: Faker::Name.name,
#     char_name: Faker::Superhero.name,
#     klass: Faker::Company.profession,
#     level: 1,
#     race: Faker::StarWars.specie,
#     background: Faker::StarWars.planet,
#     alignment: "Chaotic Good",
#     archetype: nil,
#     xp: 0,
#     hp_max: 12,
#     hp_current: Faker::Number.between(1, 12),
#     armor_class: Faker::Number.between(10, 16),
#     initiative: 2,
#     speed: Faker::Number.between(25, 35),
#     prof_bonus: 2,
#     inspiration: 0,
#     languages: nil,
#     features: nil,
#     equipment: nil,
#     personality: nil,
#     ideals: nil,
#     bonds: nil,
#     flaws: nil,
#     campaign_id: 3
#   )
# end
#
# 4.times do |index|
#   Campaign.find(4).characters.create!(
#     player_name: Faker::Name.name,
#     char_name: Faker::Superhero.name,
#     klass: Faker::Company.profession,
#     level: 1,
#     race: Faker::StarWars.specie,
#     background: Faker::StarWars.planet,
#     alignment: "Chaotic Good",
#     archetype: nil,
#     xp: 0,
#     hp_max: 12,
#     hp_current: Faker::Number.between(1, 12),
#     armor_class: Faker::Number.between(10, 16),
#     initiative: 2,
#     speed: Faker::Number.between(25, 35),
#     prof_bonus: 2,
#     inspiration: 0,
#     languages: nil,
#     features: nil,
#     equipment: nil,
#     personality: nil,
#     ideals: nil,
#     bonds: nil,
#     flaws: nil,
#     campaign_id: 4
#   )
# end
#
# 4.times do |index|
#   Campaign.find(5).characters.create!(
#     player_name: Faker::Name.name,
#     char_name: Faker::Superhero.name,
#     klass: Faker::Company.profession,
#     level: 1,
#     race: Faker::StarWars.specie,
#     background: Faker::StarWars.planet,
#     alignment: "Chaotic Good",
#     archetype: nil,
#     xp: 0,
#     hp_max: 12,
#     hp_current: Faker::Number.between(1, 12),
#     armor_class: Faker::Number.between(10, 16),
#     initiative: 2,
#     speed: Faker::Number.between(25, 35),
#     prof_bonus: 2,
#     inspiration: 0,
#     languages: nil,
#     features: nil,
#     equipment: nil,
#     personality: nil,
#     ideals: nil,
#     bonds: nil,
#     flaws: nil,
#     campaign_id: 5
#   )
# end

p "Created #{Campaign.count} campaigns, #{Dmaster.count} dungeon masters, and #{Character.count} characters."

#
# Campaign.find(1).characters
# Campaign.find(1).dmaster
