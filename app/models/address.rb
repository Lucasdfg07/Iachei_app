class Address < ApplicationRecord
	validates_presence_of :street, :neighborhood, :number
end
