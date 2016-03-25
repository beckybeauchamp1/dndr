Character.destroy_all
Dmaster.destroy_all
Campaign.destroy_all
Adventure.destroy_all
Ability.destroy_all

5.times do |index|
  campaign = Campaign.create!(name: Faker::Book.title,
                  summary: Faker::Company.bs,
                  img_url: ["http://media.wizards.com/2015/images/dnd/resources/Sword-Coast-Map_LowRes.jpg", "http://media.wizards.com/legacy/dnd/images/bld_farmhouse-ground-floor.jpg", "http://media.wizards.com/legacy/dnd/images/dmxp_060_map_maiden.jpg"].sample)
  Dmaster.create!(name: Faker::Name.name, campaign_id: index + 1)
  3.times do
    campaign.adventures.create!(
    name: Faker::Book.title,
    summary: Faker::Hipster.paragraph,
    img_url: ["https://s-media-cache-ak0.pinimg.com/564x/7a/ce/ca/7aceca5b40a2e46726a987f0b94107c3.jpg", "https://s-media-cache-ak0.pinimg.com/474x/5a/f9/5c/5af95c80cd0e8b0c669f2240622ad4e0.jpg", "http://www.wizards.com/dnd/images/wol_maps/WoL_map36.jpg", "https://s-media-cache-ak0.pinimg.com/474x/c9/01/57/c901574583fbe696e31d9753028c0fd8.jpg"].sample
    )
  end
  4.times do
    character = campaign.characters.create!(
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
    languages: Faker::Hipster.paragraph,
    features: nil,
    equipment: nil,
    personality: Faker::Hipster.paragraph,
    ideals: Faker::Hipster.paragraph,
    bonds: Faker::Hipster.paragraph,
    flaws: Faker::Hipster.paragraph,
    img_url: ["http://media.wizards.com/2015/images/dnd/resources/HalfElf_Bard3.jpg", "http://dnd.wizards.com/sites/default/files/media/styles/mosaic_thumbnail/public/images/mosaic/NEW_TO_DD_Classes_Fighter_T_140626.jpg?itok=CBMNp7LF", "http://media.wizards.com/images/dnd/articles/ll_20140623.jpg", "http://dnd.wizards.com/sites/default/files/media/styles/news_banner/public/images/news/20150911_SeptemberSurvey_thumb.jpg?itok=52XfYyku", "http://dnd.wizards.com/sites/default/files/media/styles/mosaic_thumbnail/public/images/mosaic/NEW_TO_DD_Classes_Ranger_T_140723.jpg?itok=iZxh0ijJ", "http://dnd.wizards.com/sites/default/files/media/styles/mosaic_thumbnail/public/images/mosaic/NEW_TO_DD_Classes_Rogue_T_140626.jpg?itok=1FiJJxV1", "http://media.wizards.com/2015/images/dnd/resources/Wood%20Elf_Ranger.jpg", "http://media.wizards.com/legacy/dnd/images/dmxp_088%20illo.jpg", "http://dnd.wizards.com/sites/default/files/media/styles/news_banner/public/images/news/FireBlood_TH2.jpg?itok=1pEE2OXA", "https://s-media-cache-ak0.pinimg.com/236x/29/48/72/294872ebe808f3d7db609b2b061f1d19.jpg", "http://2.bp.blogspot.com/-pfXiAcE0SgQ/Tc9XZNxG2II/AAAAAAAAAgU/6uan3xSN2lY/s1600/halforcfighter.jpg", "https://s-media-cache-ak0.pinimg.com/236x/6e/d2/1e/6ed21efeb6fb4644628e1859dd8b51af.jpg", "http://i2.wp.com/www.tor.com/wp-content/uploads/2014/12/ember.jpg?fit=400%2C%209999&crop=0%2C0%2C100%2C589px", "http://www.eva-widermann.de/i/213.jpg", "https://s-media-cache-ak0.pinimg.com/736x/c3/b2/28/c3b228cc95c9a3fe790026ef6b27115c.jpg"].sample
    )
  end
end

p "Created #{Campaign.count} campaigns, #{Dmaster.count} dungeon masters, #{Adventure.count} adventures, and #{Character.count} characters."

#
# Campaign.find(1).characters
# Campaign.find(1).dmaster
