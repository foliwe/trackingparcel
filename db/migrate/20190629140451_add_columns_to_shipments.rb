class AddColumnsToShipments < ActiveRecord::Migration[5.2]
  def change
    add_column :shipments, :origin, :string
    add_column :shipments, :carrier, :string
    add_column :shipments, :type_of_shipment, :string
    add_column :shipments, :departure_time, :datetime
    add_column :shipments, :destination, :string
  end
end
