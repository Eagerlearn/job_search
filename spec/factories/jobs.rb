FactoryBot.define do
  factory :job do
    title { Faker::Job.title }
    salary { Faker::Lorem.characters(number: 6) }
    location { Faker::Address.state }
  end
end
