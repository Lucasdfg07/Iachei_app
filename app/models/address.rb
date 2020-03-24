class Address < ApplicationRecord
	belongs_to :establishment

	validates_presence_of :street, :neighborhood, :number
end
