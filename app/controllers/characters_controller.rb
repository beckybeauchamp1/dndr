class CharactersController < ApplicationController
  def index
    @campaign = Campaign.find(params[:campaign_id])
    @characters = @campaign.characters.all.order(:id)
  end

  def show
    @campaign = Campaign.find(params[:campaign_id])
    @character = Character.find(params[:id])
  end

  def new
    @campaign = Campaign.find(params[:campaign_id])
    @character = Character.new
  end

  def create
    @campaign = Campaign.find(params[:campaign_id])
    @character = @campaign.characters.create! character_params

    redirect_to campaign_path(@campaign)
  end

  def edit
    @campaign = Campaign.find(params[:campaign_id])
    @character = Character.find(params[:id])
  end

  def update
    @campaign = Campaign.find(params[:campaign_id])
    @character = Character.find(params[:id])
    @character.update character_params

    redirect_to campaign_path(@campaign)
  end

  def destroy
    @campaign = Campaign.find(params[:campaign_id])
    @character = Character.find(params[:id])
    @character.destroy

    redirect_to campaign_path(@campaign)
  end

  private
  def character_params
    params.require(:character).permit(:player_name, :char_name, :klass, :level, :race, :background, :alignment, :archetype, :xp, :hp_max, :hp_current, :armor_class, :initiative, :speed, :prof_bonus, :inspiration, :languages, :features, :equipment, :personality, :ideals, :bonds, :flaws)
  end

end
