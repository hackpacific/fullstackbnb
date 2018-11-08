require 'rails_helper'

RSpec.describe Booking, type: :model do
  context 'a booking record' do
    it 'should belong to a user' do
      user = FactoryBot.create(:user)
      listing = FactoryBot.create(:listing, user: user)
      booking = FactoryBot.create(:booking, user: user, listing: listing)
      expect(booking.user).to eq(user)
    end

    it 'should belong to a listing' do
      user = FactoryBot.create(:user)
      listing = FactoryBot.create(:listing, user: user)
      booking = FactoryBot.create(:booking, user: user, listing: listing)
      expect(booking.listing).to eq(listing)
    end
  end
end
