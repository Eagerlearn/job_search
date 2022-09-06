class Job < ApplicationRecord
  belongs_to :company
  has_many :job_applicants, dependent: :destroy
  has_many :applicants, through: :job_applicants
end