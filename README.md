# README

need to run below command to make setup after cloning

bundle install
rake db:migate
rake db:seed

 to test in postman
to create user
 post http://localhost:3000/users?user_name=gtest&name=gaurav&email=gaurav@gmail.com&password=gaurav123

 to login 

post http://localhost:3000/auth/login?username=user1&password=gaurav123&email=user1@gmail.com

in header need to pass Authorization token for below API

to get json for all library
get http://localhost:3000/libraries



to get availabe book

get http://localhost:3000/libraries/available_books

to get checout books
get http://localhost:3000/libraries/checked_out_books





 
