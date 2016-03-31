class AdventuresController < ApplicationController
  before_action :set_campaign
  before_action :set_adventure, only: [:show, :new, :edit, :update, :destroy]
  def index
    @adventures = @campaign.adventures.all.order(:id)
  end

  def show
  end

  def new
    @adventure = Adventure.new
  end

  def create
    @adventure = @campaign.adventures.create! adventure_params

    redirect_to campaign_adventure_path(@campaign, @adventure)
  end

  def edit
  end

  def update
    @adventure.update adventure_params
    redirect_to campaign_adventure_path(@campaign, @adventure)
  end

  def destroy
    @adventure.destroy
    redirect_to campaign_path(@campaign)
  end

  private
  def adventure_params
    params.require(:adventure).permit(:name, :summary, :img_url)
  end
  # because you use the following two lines throughout your enitre controller
  # you could write the following:
  def set_campaign
    @campaign = Campaign.find(params[:campaign_id])
  end
  def set_adventure
    @adventure = Adventure.find(params[:id])
  end
  # then look at the before_action up top
end
