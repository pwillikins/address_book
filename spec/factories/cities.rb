# Read about factories at https://github.com/thoughtbot/factory_girl

require 'faker'

FactoryGirl.define do
  factory :city do
    name { Faker::Address.city }
    population { Faker::Number.number(2) }
    elevation { Faker::Number.number(5) }
    state { Faker::Address.state }
  end
end
