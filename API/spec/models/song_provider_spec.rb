require 'rails_helper'

RSpec.describe SongProvider, type: :model do
  subject { SongProvider.new }

  describe 'initialize' do
    it 'base type must be a DataProvider' do
      expect(subject.class < DataProvider).to eq true
    end
  end

  describe 'getData functionality' do
    let(:songs){subject.getData}

    it 'users must be array' do
      expect(songs).to be_kind_of(Array)
    end

    it 'elements of users must be user type' do
      expect(songs.first).to be_kind_of(Song)
    end
  end
end
