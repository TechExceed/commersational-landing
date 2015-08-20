class AddNotificationStatusToLead < ActiveRecord::Migration
  def change
    add_column :leads, :notified, :boolean
  end
end
