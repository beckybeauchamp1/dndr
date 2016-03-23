class CreateAbilities < ActiveRecord::Migration
  def change
    create_table :abilities do |t|
      t.integer :strength
      t.integer :strength_mod
      t.integer :dexterity
      t.integer :dexterity_mod
      t.integer :constitution
      t.integer :constitution_mod
      t.integer :intelligence
      t.integer :intelligence_mod
      t.integer :wisdom
      t.integer :wisdom_mod
      t.integer :charisma
      t.integer :charisma_mod
      t.belongs_to :character, index: true, foreign_key: true
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
