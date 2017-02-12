# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Gerando os tipos de contatos(Kinds)..."
	Kind.create!([{descricption: "Contatos"},{descricption: "Amigos"},{descricption: "Profissional"}])
puts "Gerando os tipos de contatos(Kinds)... [OK]"


puts "Gerando os contatos(Contacts)..."
	10.times do |i|
		Contact.create!(
				nome: Faker::Name.name,
				email: Faker::Internet.email,
				kind: Kind.all.sample,
				rmk: Faker::Lorem.paragraph([1,2,3,4,5].sample)
			)
	end
puts "Gerando os contatos(Contacts)... [OK]"