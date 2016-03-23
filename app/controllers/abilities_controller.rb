class AbilitiesController < ApplicationController
  def show
    @campaign = Campaign.find(params[:campaign_id])
    @character = @campaign.characters.find(params[:character_id])
    @ability = @character.ability
  end

  def new
    @campaign = Campaign.find(params[:campaign_id])
    @character = @campaign.characters.find(params[:character_id])
    @ability = Ability.create!
    @character.ability = @ability
  end

  def create
    @campaign = Campaign.find(params[:campaign_id])
    @character = @campaign.characters.find(params[:character_id])
    @ability = @character.ability.create! ability_params

    redirect_to campaign_character_ability_path(@campaign, @character, @ability)
  end

  def edit
    @campaign = Campaign.find(params[:campaign_id])
    @character = @campaign.characters.find(params[:character_id])
    @ability = @character.ability
  end

  def update
    @campaign = Campaign.find(params[:campaign_id])
    @character = @campaign.characters.find(params[:character_id])
    @ability = @character.ability
    @ability.update ability_params

    redirect_to campaign_character_ability_path(@campaign, @character, @ability)
  end

  def destroy
    @campaign = Campaign.find(params[:campaign_id])
    @character = @campaign.characters.find(params[:character_id])
    @ability = @character.ability
    @ability.destroy

    redirect_to campaign_path(@character)
  end

  private
  def ability_params
    params.require(:ability).permit(:strength, :strength_mod, :dexterity, :dexterity_mod, :constitution, :constitution_mod, :intelligence, :intelligence_mod, :wisdom, :wisdom_mod, :charisma, :charisma_mod)
  end

end
