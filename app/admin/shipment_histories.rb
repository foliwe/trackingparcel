ActiveAdmin.register ShipmentHistory do
  permit_params :shipment_id,:location,:status,:remarks

  form do |f|
    f.inputs "ShipmentHistory" do
    	f.input :shipment_id, collection: Shipment.all.map { |m| [m.track_number, m.id] },as: :select
      f.input :location
      f.input :status, collection: ["On Hold","Approve","Dispatch"],as: :select
      f.input :remarks
    end
    f.actions
  end
end
