class CreateSpells < ActiveRecord::Migration
  def change
    create_table :spells do |t|
      t.string :name
      t.string :level
      t.string :casting_time
      t.string :range
      t.string :components
      t.string :string
      t.string :duration
      t.string :description
      t.string :notes
      t.references :character, index: true, foreign_key: true
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
