class AdventuresController < ApplicationController
  def index
    @campaign = Campaign.find(params[:campaign_id])
    @adventures = @campaign.adventures.all.order(:id)
  end

  def show
    @campaign = Campaign.find(params[:campaign_id])
    @adventure = Adventure.find(params[:id])
  end

  def new
    @campaign = Campaign.find(params[:campaign_id])
    @adventure = Adventure.new
  end

  def create
    @campaign = Campaign.find(params[:campaign_id])
    @adventure = @campaign.adventures.create! adventure_params

    redirect_to campaign_path(@campaign)
  end

  def edit
    @campaign = Campaign.find(params[:campaign_id])
    @adventure = Adventure.find(params[:id])
  end

  def update
    @campaign = Campaign.find(params[:campaign_id])
    @adventure = Adventure.find(params[:id])
    @adventure.update adventure_params

    redirect_to campaign_path(@campaign)
  end

  def destroy
    @campaign = Campaign.find(params[:campaign_id])
    @adventure = Adventure.find(params[:id])
    @adventure.destroy

    redirect_to campaign_path(@campaign)
  end

  private
  def adventure_params
    params.require(:adventure).permit(:name, :summary, :img_url)
  end

end
