class Lead < ActiveRecord::Base

	enum ecommerce_platform: [:shopify, :amazon, :bigcommerce, :magento, :other]

	after_create :send_lead_email

  def send_lead_email
    LeadMailer.lead_received_email(self).deliver_now
  end

end
