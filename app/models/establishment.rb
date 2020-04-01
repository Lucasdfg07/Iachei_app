class Establishment < ApplicationRecord
	belongs_to :user
	has_many :establishment_cities
	has_many :cities, through: :establishment_cities, dependent: :destroy
	has_many :addresses, through: :establishment_cities, dependent: :destroy
	
	belongs_to :category

	mount_uploader :photo, PhotoUploader

	validates :rating, presence: false
	
	validates_presence_of :name, :description, :additional_information


	def set_rating(rating)
		@rating_array = self.rating.push(rating)
		self.update(rating: @rating_array)
	end

	def get_rating
		return (self.rating.inject(0){|sum,x| sum + x.to_i } / self.rating.count) 
	end
end
