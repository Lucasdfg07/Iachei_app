class User < ApplicationRecord
	belongs_to :city
	has_many :establishments, dependent: :destroy

	enum role: [:client, :shopkeeper]

  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
