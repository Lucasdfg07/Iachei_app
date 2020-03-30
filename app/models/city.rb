class City < ApplicationRecord
	has_many :establishment_cities
	has_many :establishments, through: :establishment_cities, dependent: :destroy

	validates_presence_of :name, :description

	mount_uploader :photo, PhotoUploader
end
