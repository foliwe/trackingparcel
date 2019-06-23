class CreateShipments < ActiveRecord::Migration[5.2]
  def change
    create_table :shipments do |t|
      t.string :track_number
      t.text :shipper_address
      t.text :reciever_address
      t.string :carrier_reference_number
      t.text :product
      t.string :total_freight
      t.datetime :pick_up_time
      t.datetime :expected_delivery_date
      t.text :comments
      t.string :status
      t.string :weight
      t.string :quantity

      t.timestamps
    end
  end
end
