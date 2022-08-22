require 'rails_helper'

RSpec.describe Job do
  describe '#relationships' do
    it { should belong_to :company }
    it { should have_many :job_applicants }
    it { should have_many(:applicants).through(:job_applicants) }
  end
end