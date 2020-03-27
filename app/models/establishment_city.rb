class EstablishmentCity < ApplicationRecord
	before_create :set_new_establishment
	belongs_to :city
	belongs_to :establishment

	has_many :addresses, dependent: :destroy



	def set_new_establishment(city, establishment)
		self.city = city
		self.establishment = establishment
	end
end
