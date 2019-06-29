class NotificationMailer < ApplicationMailer
	def shipment_updates(shipment)
		@shipment = shipment
    contact_email = shipment.contact_email
    mail(to: contact_email, subject: "Updates regarding shipment #{shipment.track_number}")
  end
end
