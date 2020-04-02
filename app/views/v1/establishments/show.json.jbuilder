json.establishment do
	json.id @establishment.id
	json.name @establishment.name
	json.description @establishment.description
	json.additional_information @establishment.additional_information
	json.rating @establishment.rating
	json.photo @establishment.photo
	
	json.cities @establishment.cities do |city|
		json.id city.id
		json.name city.name

		json.addresses @establishment.addresses do |address|
			if address.establishment_city.city == city
				json.address address
			end
		end
	end
end
