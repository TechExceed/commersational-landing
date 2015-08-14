class LeadsController < ApplicationController

	def create
		@lead = Lead.new(lead_params)
  end

  def lead_params
  	params.require(:lead).permit(:email)
  end
end
