class DmastersController < ApplicationController
  def show
    @campaign = Campaign.find(params[:campaign_id])
    @dmaster = @campaign.dmaster
  end

  def new
    @campaign = Campaign.find(params[:campaign_id])
    @dmaster = Dmaster.create!
    @campaign.dmaster = @dmaster
  end

  def create
    @campaign = Campaign.find(params[:campaign_id])
    @dmaster = @campaign.dmaster.create! dmaster_params

    redirect_to campaign_path(@campaign)
  end

  def edit
    @campaign = Campaign.find(params[:campaign_id])
    @dmaster = @campaign.dmaster
  end

  def update
    @campaign = Campaign.find(params[:campaign_id])
    @dmaster = @campaign.dmaster
    @dmaster.update dmaster_params

    redirect_to campaign_path(@campaign)
  end

  def destroy
    @campaign = Campaign.find(params[:campaign_id])
    @dmaster = @campaign.dmaster
    @dmaster.destroy

    redirect_to campaign_path(@campaign)
  end

  private
  def dmaster_params
    params.require(:dmaster).permit(:name)
  end

end
