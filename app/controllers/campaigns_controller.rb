class CampaignsController < ApplicationController
  def index
    @campaigns = Campaign.all.order(:id)
  end

  def show
    @campaign = Campaign.find(params[:id])
  end

  def new
    @campaign = Campaign.new
  end

  def create
    @campaign = Campaign.create! campaign_params

    redirect_to campaign_path(@campaign)
  end

  def edit
    @campaign = Campaign.find(params[:id])
  end

  def update
    @campaign = Campaign.find(params[:id])
    @campaign.update campaign_params

    redirect_to campaign_path(@campaign)
  end

  def destroy
    @campaign = Campaign.find(params[:id])
    @campaign.destroy

    redirect_to campaigns_path
  end

  private
  def campaign_params
    params.require(:campaign).permit(:name, :img_url, :summary)
  end

end
