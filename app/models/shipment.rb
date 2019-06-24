class Shipment < ApplicationRecord
	has_many :shipment_histories
end
