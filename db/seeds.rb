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

p "Created #{Campaign.count} campaigns, #{Dmaster.count} dungeon masters, and #{Character.count} characters."

#
# Campaign.find(1).characters
# Campaign.find(1).dmaster
