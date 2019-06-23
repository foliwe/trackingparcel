ActiveAdmin.register ShipmentHistory do
  permit_params :shipment_id,:location,:status,:remarks
end
