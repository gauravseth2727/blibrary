# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_1 = User.create(name: 'user1', user_name: 'user1', email: 'user1@gmail.com',
	                 password: 'gaurav123')
user_2 = User.create(name: 'user2', user_name: 'user2', email: 'user2@gmail.com',
	                 password: 'gaurav123')
user_3 = User.create(name: 'user3', user_name: 'user3', email: 'user3@gmail.com',
	                 password: 'gaurav123')

lib_1 = Library.find_or_create_by(name: "L1")
lib_2 = Library.find_or_create_by(name: "L2")
lib_3 = Library.find_or_create_by(name: "L3")

user_1 = User.find_by_user_name('user1')

Book.find_or_create_by(name: 'a1', library: lib_1, user: user_1)
Book.find_or_create_by(name: 'a2', library: lib_1)
Book.find_or_create_by(name: 'a3', library: lib_1)
Book.find_or_create_by(name: 'a4', library: lib_1)
Book.find_or_create_by(name: 'a5', library: lib_1)

user_2 = User.find_by_user_name('user2')
Book.find_or_create_by(name: 'b1', library: lib_2, user: user_2)
Book.find_or_create_by(name: 'b2', library: lib_2)
Book.find_or_create_by(name: 'b3', library: lib_2)
Book.find_or_create_by(name: 'b4', library: lib_2)
Book.find_or_create_by(name: 'b5', library: lib_2)

user_3 = User.find_by_user_name('user2')
Book.find_or_create_by(name: 'c1', library: lib_3, user: user_3)
Book.find_or_create_by(name: 'c2', library: lib_3)
Book.find_or_create_by(name: 'c3', library: lib_3)
Book.find_or_create_by(name: 'c4', library: lib_3)
Book.find_or_create_by(name: 'c5', library: lib_3)
