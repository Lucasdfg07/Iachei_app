class SubCategory < ApplicationRecord
	belongs_to :category
	
	validates_uniqueness_of :name

	mount_uploader :photo, PhotoUploader
end
