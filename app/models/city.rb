class City < ApplicationRecord
	has_many :establishments, through: :establishment_city, dependent: :destroy

	validates_presence_of :name, :description

	mount_uploader :photo, PhotoUploader
end
