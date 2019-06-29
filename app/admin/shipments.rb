ActiveAdmin.register Shipment do
  permit_params :track_number, :shipper_address, :reciever_address, :carrier_reference_number, :product, :total_freight, :pick_up_time, :expected_delivery_date, :comments, :status, :weight, :quantity,:contact_email,:contact_number,:type_of_shipment,:origin,:destination,:departure_time,:carrier

  form do |f|
    f.inputs "Shipment" do
      f.input :shipper_address
      f.input :reciever_address
      f.input :carrier
      f.input :carrier_reference_number
      f.input :origin
      f.input :destination
      f.input :product
      f.input :type_of_shipment
      f.input :pick_up_time, :as => :date_picker
      f.input :expected_delivery_date, :as => :date_picker
      f.input :departure_time, :as => :date_picker
      f.input :status, collection: ["On Hold","Approve","Dispatch"],as: :select
      f.input :weight
      f.input :quantity
      f.input :total_freight
      f.input :contact_email
      f.input :contact_number
    end
    f.actions
  end
end
