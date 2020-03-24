class EstablishmentCity < ApplicationRecord
	belongs_to :city
	belongs_to :establishment

	has_many :addresses, dependent: :destroy
end
