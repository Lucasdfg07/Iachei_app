class Establishment < ApplicationRecord
	belongs_to :user
	has_many :cities, through: :establishment_city, dependent: :destroy
	belongs_to :category


	validates_presence_of :name, :description, :additional_information
end
