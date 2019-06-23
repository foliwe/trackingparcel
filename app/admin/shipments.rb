ActiveAdmin.register Shipment do
  permit_params :track_number, :shipper_address, :reciever_address, :carrier_reference_number, :product, :total_freight, :pick_up_time, :expected_delivery_date, :comments, :status, :weight, :quantity
end
