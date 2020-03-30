class Category < ApplicationRecord
	validates_uniqueness_of :name

	mount_uploader :photo, PhotoUploader
end
