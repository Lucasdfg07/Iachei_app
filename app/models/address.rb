class Address < ApplicationRecord
	belongs_to :establishment_city
	validates_presence_of :street, :neighborhood, :number
end
