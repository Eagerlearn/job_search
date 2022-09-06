FactoryBot.define do
  factory :company do
    name { Name::Company.name }
  end
end
