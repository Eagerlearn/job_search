class Company < ApplicationRecord
  has_many :jobs, dependent: :destroy
  has_many :job_applicants, through: :jobs
  has_many :applicants, through: :job_applicants
end