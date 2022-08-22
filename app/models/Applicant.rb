class Applicant < ApplicationRecord
  has_many :job_applicants
  has_many :jobs, through: :job_applicants
  has_many :companies, through: :jobs
end