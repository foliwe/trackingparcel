class AddContactEmailToShipment < ActiveRecord::Migration[5.2]
  def change
    add_column :shipments, :contact_email, :string
    add_column :shipments, :contact_number, :string
  end
end
