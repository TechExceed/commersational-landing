class LeadsController < ApplicationController

	def create
		@lead = Lead.new(lead_params)
		@lead.save
  end

  def update
  	
  end

  def lead_params
  	params.require(:lead).permit(:email)
  end
end
