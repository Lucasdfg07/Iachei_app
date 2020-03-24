class EstablishmentCity < ApplicationRecord
	belongs_to :city
	belongs_to :establishment
end
