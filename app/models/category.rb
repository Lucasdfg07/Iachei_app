class Category < ApplicationRecord
	paginates_per 9
	validates_uniqueness_of :name

	mount_uploader :photo, PhotoUploader
end
