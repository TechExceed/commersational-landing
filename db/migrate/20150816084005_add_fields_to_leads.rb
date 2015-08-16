class AddFieldsToLeads < ActiveRecord::Migration
  def change
    add_column :leads, :sell_online, :boolean
    add_column :leads, :has_facebook_page, :boolean
    add_column :leads, :ecommerce_platform, :integer
    add_column :leads, :other_platform, :string
  end
end
