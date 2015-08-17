class LeadsController < ApplicationController

	def create
		@lead = Lead.new(lead_params)
		@lead.save
  end

  def update
  	@lead = Lead.find(params[:id])
    @lead.update_attributes(lead_params)
  end

  def lead_params
  	params.require(:lead).permit(:email, :sell_online, :has_facebook_page, :ecommerce_platform, :other_platform)
  end
end
