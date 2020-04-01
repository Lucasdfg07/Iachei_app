# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.create([
			{name: 'Campos dos Goytacazes', description: 'lorem ipsum'},
			{name: 'Farol de São Thomé', description: 'lorem ipsum'},
			{name: 'Rio das Ostras', description: 'lorem ipsum'},
			{name: 'Búzios', description: 'lorem ipsum'},
			{name: 'Guarapari', description: 'lorem ipsum'},
			{name: 'Distrito de Taki', description: 'lorem ipsum'},
			{name: 'Madagascar', description: 'lorem ipsum'}
			])

User.create(name: 'admin', email: 'admin@admin.com', city: City.first, password: 'admin123', role: 2)