require 'rails_helper'

RSpec.describe Listing, type: :model do
  context 'a listing record' do
    it 'should have many bookings' do
      user = FactoryBot.create(:user)
      listing = FactoryBot.create(:listing, user: user)
      expect(listing.bookings).to eq([])
    end

    it 'should belong to a user' do
      user = FactoryBot.create(:user)
      listing = FactoryBot.create(:listing, user: user)
      expect(listing.user).to eq(user)
    end
  end
end
