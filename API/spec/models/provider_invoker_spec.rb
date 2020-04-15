require 'rails_helper'

RSpec.describe ProviderInvoker, type: :model do
  subject { ProviderInvoker.new(UserProvider.new) }

  describe 'getData functionality' do
    let(:users){subject.getData}

    it 'users must be array' do
      expect(users).to be_kind_of(Array)
    end
  end
end
