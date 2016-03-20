class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :player_name
      t.string :char_name
      t.string :class
      t.integer :level
      t.string :race
      t.string :background
      t.string :alignment
      t.string :archetype
      t.integer :xp
      t.integer :hp_max
      t.integer :hp_current
      t.integer :armor_class
      t.integer :initiative
      t.integer :speed
      t.integer :prof_bonus
      t.integer :inspiration
      t.text :languages
      t.text :features
      t.text :equipment
      t.text :personality
      t.text :ideals
      t.text :bonds
      t.text :flaws
      t.datetime :created_at
      t.datetime :updated_at
      t.belongs_to :campaign, index: true, foreign_key: true
    end
  end
end
