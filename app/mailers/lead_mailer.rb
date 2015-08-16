class LeadMailer < ApplicationMailer

	def lead_received_email(lead)
    @lead = lead
    mail(to: ["ekedem@gmail.com", "ilan.kasan@gmail.com "], subject: 'Commersational - Lead received')
  end

  def questionnaire_received_email(lead)
    @lead = lead
    mail(to: ["ekedem@gmail.com", "ilan.kasan@gmail.com "], subject: 'Commersational - Questionnaire received')
  end
end
