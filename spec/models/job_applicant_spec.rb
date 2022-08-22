require 'rails_helper'

RSpec.describe JobApplicant do
  describe '#relationships' do
    it { should belong_to :job }
    it { should belong_to :applicant }
  end
end