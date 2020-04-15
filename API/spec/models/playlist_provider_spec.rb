require 'rails_helper'

RSpec.describe PlaylistProvider, type: :model do
  subject { PlaylistProvider.new }

  describe 'initialize' do
    it 'base type must be a DataProvider' do
      expect(subject.class < DataProvider).to eq true
    end
  end

  describe 'getData functionality' do
    let(:playlists){subject.getData}

    it 'users must be array' do
      expect(playlists).to be_kind_of(Array)
    end

    it 'elements of users must be user type' do
      expect(playlists.first).to be_kind_of(PlayList)
    end
  end
end
