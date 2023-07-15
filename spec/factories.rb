FactoryBot.define do
  
  factory :user do
  	name { "gaurav seth"}
    user_name { "gaurav" }
    email { "gaurav@gmail.com" }
    password {"gaurav@123" }
  end 

  factory :library do
  	name { "L1"}
  end 

  factory :book do
  	name { "B1" }
  	association :library    
  end

end