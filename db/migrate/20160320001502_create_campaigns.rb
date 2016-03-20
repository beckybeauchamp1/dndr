class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :name
      t.text :summary
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :dmasters do |t|
      t.string :name
      t.belongs_to :campaign, index: true, foreign_key: true
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
