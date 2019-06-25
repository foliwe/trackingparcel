class Shipment < ApplicationRecord
	has_many :shipment_histories
	before_create :create_track_number

	def create_track_number
		self.track_number = rand.to_s[2..11] 
	end
end
