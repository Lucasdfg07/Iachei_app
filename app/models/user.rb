class User < ApplicationRecord
	has_one :city
	has_many :establishments, dependent: :destroy

	enum role: [:client, :shopkeeper]

  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
