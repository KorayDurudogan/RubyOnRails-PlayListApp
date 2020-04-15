require 'rails_helper'

RSpec.describe UserProvider, type: :model do
  subject { UserProvider.new }

  describe 'initialize' do
    it 'base type must be a DataProvider' do
      expect(subject.class < DataProvider).to eq true
    end
  end

  describe 'getData functionality' do
    let(:users){subject.getData}

    it 'users must be array' do
      expect(users).to be_kind_of(Array)
    end

    it 'elements of users must be user type' do
      expect(users.first).to be_kind_of(User)
    end
  end
end
