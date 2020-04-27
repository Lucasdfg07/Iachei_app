class Category < ApplicationRecord
	has_many :sub_categories, dependent: :destroy
	
	paginates_per 9
	validates_uniqueness_of :name

	mount_uploader :photo, PhotoUploader
end
