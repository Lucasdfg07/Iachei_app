class Establishment < ApplicationRecord
	belongs_to :user
	has_many :establishment_cities
	has_many :cities, through: :establishment_cities, dependent: :destroy
	has_many :addresses, through: :establishment_cities, dependent: :destroy
	
	belongs_to :category

	mount_uploader :photo, PhotoUploader
	
	validates_presence_of :name, :description, :additional_information
end
