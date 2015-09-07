class LeadMailer < ApplicationMailer

	default from: 'do-not-reply@commersational.com'

	def lead_received_email(lead)
    @lead = lead
    mail(to: ["ekedem@gmail.com", "ilan.kasan@gmail.com "], subject: 'Commersational - Lead received')
  end

  def questionnaire_received_email(lead)
    @lead = lead
    mail(to: ["ekedem@gmail.com", "ilan.kasan@gmail.com "], subject: 'Commersational - Questionnaire received')
  end

  def lead_confirmation_email(lead)
  	@lead = lead
  	mail(from: "\"Commersational\" <contact@commersational.com>", to: @lead.email, bcc: ["ekedem@gmail.com"], subject: 'Commersational - signup confirmation')
  end
end
