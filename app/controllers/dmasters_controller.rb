class DmastersController < ApplicationController
  def show
    @dmaster = Dmaster.find(params[:id])
  end

  def new
    @campaign = Campaign.find(params[:campaign_id])
    @dmaster = Dmaster.new
  end

  def create
    @campaign = Campaign.find(params[:campaign_id])
    @dmaster = @campaign.dmaster.create! dmaster_params

    redirect_to campaign_path(@campaign)
  end

  def edit
    @campaign = Campaign.find(params[:campaign_id])
    @dmaster = Dmaster.find(params[:id])
  end

  def update
    @campaign = Campaign.find(params[:campaign_id])
    @dmaster = Dmaster.find(params[:id])
    @dmaster.update dmaster_params

    redirect_to campaign_path(@campaign)
  end

  def destroy
    @campaign = Campaign.find(params[:campaign_id])
    @dmaster = Dmaster.find(params[:id])
    @dmaster.destroy

    redirect_to campaign_path(@campaign)
  end

  private
  def dmaster_params
    params.require(:dmaster).permit(:name)
  end

end
