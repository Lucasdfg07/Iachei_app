class Establishment < ApplicationRecord
	belongs_to :user
	has_many :cities, through: :establishment_cities, dependent: :destroy
	has_many :addresses, dependent: :destroy
	belongs_to :category


	validates_presence_of :name, :description, :additional_information
end
