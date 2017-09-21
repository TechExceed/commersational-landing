class LeadsController < ApplicationController

	def create
		@lead = Lead.new(lead_params)
  end

  def update
  	@lead = Lead.find(params[:id])
    @lead.update_attributes(lead_params)
    @lead.notify_lead_owner if @lead.valid?
  end

  def lead_params
  	params.require(:lead).permit(:email)
  end
end
