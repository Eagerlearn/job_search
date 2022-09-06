FactoryBot.define do
  factory :job_applicant do
    association :job
    applicant

    # application_status: { Faker::Number.between(0..1) }
  end
end
