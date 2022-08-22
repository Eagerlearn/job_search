require 'rails_helper'

RSpec.describe Applicant do
  describe '#relationships' do
    it { should have_many :job_applicants }
    it { should have_many(:jobs).through(:job_applicants) }
    it { should have_many(:companies).through(:jobs) }
  end
end