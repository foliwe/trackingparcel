class Shipment < ApplicationRecord
	has_many :shipment_histories
	before_create :create_track_number

	def create_track_number
		time = Time.new
		self.track_number ||= 'TKCD' + time.strftime("%m%d%S").to_s + rand(1000..3000).to_s #rand.to_s[2..11] 
	end

	after_save :send_email

	def send_email
	   NotificationMailer.shipment_updates(self).deliver
	end
end
