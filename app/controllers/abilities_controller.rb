class AbilitiesController < ApplicationController
  def show
    @campaign = Campaign.find(params[:campaign_id])
    @character = @campaign.characters.find(params[:character_id])
    # do you need this instance variable if you are already defining @character?
    # I think you could just do @character.ability in your views
    @ability = @character.ability
  end

  def new
    @campaign = Campaign.find(params[:campaign_id])
    @character = @campaign.characters.find(params[:character_id])
    # what are the params for ability?
    @ability = Ability.create!
    @character.ability = @ability
  end

  def create
    @campaign = Campaign.find(params[:campaign_id])
    @character = @campaign.characters.find(params[:character_id])
    @ability = @character.ability.create! ability_params

    redirect_to campaign_character_path(@campaign, @character)
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

    redirect_to campaign_character_path(@campaign, @character)
  end

  def destroy
    @campaign = Campaign.find(params[:campaign_id])
    @character = @campaign.characters.find(params[:character_id])
    @ability = @character.ability
    @ability.destroy

    redirect_to campaign_path(@character)
  end

  private
  # nice job adding strong params
  def ability_params
    params.require(:ability).permit(:strength, :strength_mod, :dexterity, :dexterity_mod, :constitution, :constitution_mod, :intelligence, :intelligence_mod, :wisdom, :wisdom_mod, :charisma, :charisma_mod, :acrobatics, :animal_handling, :arcana, :athletics, :deception, :history, :insight, :intimidation, :investigation, :medicine, :nature, :perception, :performance, :persuasion, :religion, :sleight_hand, :stealth, :survival)
  end

end
