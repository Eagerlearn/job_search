class Job < ApplicationRecord
  belongs_to :company
  has_many :job_applicants
  has_many :applicants, through: :job_applicants
end