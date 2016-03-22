class CreateAdventures < ActiveRecord::Migration
  def change
    create_table :adventures do |t|
      t.string :name
      t.text :summary
      t.string :img_url
      t.belongs_to :campaign, index: true, foreign_key: true
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
