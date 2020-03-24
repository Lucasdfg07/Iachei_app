class City < ApplicationRecord
	has_many :establishments, through: :establishment_cities, dependent: :destroy

	validates_presence_of :name, :description
end
