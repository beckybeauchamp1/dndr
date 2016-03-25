class CreateAbilities < ActiveRecord::Migration
  def change
    create_table :abilities do |t|
      t.integer :strength
      t.string :strength_mod
      t.integer :dexterity
      t.string :dexterity_mod
      t.integer :constitution
      t.string :constitution_mod
      t.integer :intelligence
      t.string :intelligence_mod
      t.integer :wisdom
      t.string :wisdom_mod
      t.integer :charisma
      t.string :charisma_mod
      t.string :acrobatics
      t.string :animal_handling
      t.string :arcana
      t.string :athletics
      t.string :deception
      t.string :history
      t.string :insight
      t.string :intimidation
      t.string :investigation
      t.string :medicine
      t.string :nature
      t.string :perception
      t.string :performance
      t.string :persuasion
      t.string :religion
      t.string :sleight_hand
      t.string :stealth
      t.string :survival
      t.belongs_to :character, index: true, foreign_key: true
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
