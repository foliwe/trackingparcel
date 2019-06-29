class Shipment < ApplicationRecord
	has_many :shipment_histories
	before_create :create_track_number

	def create_track_number
		self.track_number = rand.to_s[2..11] 
	end

	after_save :send_email

	def send_email
	   NotificationMailer.shipment_updates(self).deliver
	end
end
