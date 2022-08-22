require 'rails_helper'

RSpec.describe Company do
  describe '#relationships' do
    it { should have_many :jobs }
    it { should have_many(:job_applicants).through(:jobs) }
    it { should have_many(:applicants).through(:job_applicants) }
  end
end