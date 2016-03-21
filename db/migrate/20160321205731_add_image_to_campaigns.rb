class AddImageToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :img_url, :string
    add_column :characters, :img_url, :string
  end
end
