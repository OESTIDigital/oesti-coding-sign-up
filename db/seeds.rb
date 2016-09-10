# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create :name => 'Felippe Rodrigo Puhle', :email => 'felippe@dblinks.com.br', :password => '123456', :password_confirmation => '123456'
Config.create :start_time => '2016-09-17 10:30:00', :end_time => ' 2016-09-17 12:30:00'
Category.create :name => 'PHP'
Category.create :name => 'Java'
Category.create :name => 'Outros'
