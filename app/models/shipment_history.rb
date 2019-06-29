class ShipmentHistory < ApplicationRecord
  belongs_to :shipment

  after_save :send_email

	def send_email
	   NotificationMailer.shipment_updates(self.shipment).deliver
	end
end
