class SpellsController < ApplicationController
  def index
    @campaign = Campaign.find(params[:campaign_id])
    @character = @campaign.characters.find(params[:character_id])
    @spells = @character.spells.all
  end

  def show
    @campaign = Campaign.find(params[:campaign_id])
    @character = @campaign.characters.find(params[:character_id])
    @spell = @character.spells.find(params[:id])
  end

  def new
    @campaign = Campaign.find(params[:campaign_id])
    @character = @campaign.characters.find(params[:character_id])
    @spell = @character.spells.new
  end

  def create
    @campaign = Campaign.find(params[:campaign_id])
    @character = @campaign.characters.find(params[:character_id])
    @spell = @character.spells.create! spell_params

    redirect_to campaign_character_path(@campaign, @character)
  end

  def edit
    @campaign = Campaign.find(params[:campaign_id])
    @character = @campaign.characters.find(params[:character_id])
    @spell = @character.spells.find(params[:id])
  end

  def update
    @campaign = Campaign.find(params[:campaign_id])
    @character = @campaign.characters.find(params[:character_id])
    @spell = @character.spells.find(params[:id])
    @spell.update spell_params

    redirect_to campaign_character_path(@campaign, @character)
  end

  def destroy
    @campaign = Campaign.find(params[:campaign_id])
    @character = @campaign.characters.find(params[:character_id])
    @spell = @character.spells.find(params[:id])
    @spell.destroy

    redirect_to campaign_character_path(@campaign, @character)
  end

  private
  def spell_params
    params.require(:spell).permit(:name, :level, :casting, :range, :components, :duration, :description, :notes)
  end

end
