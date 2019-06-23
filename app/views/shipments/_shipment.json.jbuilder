json.extract! shipment, :id, :track_number, :shipper_address, :reciever_address, :carrier_reference_number, :product, :total_freight, :pick_up_time, :expected_delivery_date, :comments, :status, :weight, :quantity, :created_at, :updated_at
json.url shipment_url(shipment, format: :json)
