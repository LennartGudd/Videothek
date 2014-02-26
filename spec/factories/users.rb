
FactoryGirl.define do
  factory :user do
   email 'testy@test.de'
   password 'testtest'
   password_confirmation 'testtest'
   birthday '21.07.1991'
   firstname 'testiment'
   name 'user'
   zipcode '48149'
   city 'muenster'
   street 'johannkraneweg 25'
 end
end
