class Lead < ActiveRecord::Base

	enum ecommerce_platform: [:shopify, :amazon, :bigcommerce, :magento, :other]

	after_create :send_lead_email


  def send_lead_email
    LeadMailer.lead_received_email(self).deliver_now
  end

  def notify_lead_owner
  	unless self.notified == true
  		LeadMailer.lead_confirmation_email(self).deliver_now
  		self.notified = true
  		self.save
  	end
  end

end
