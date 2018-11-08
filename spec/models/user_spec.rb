require 'rails_helper'

RSpec.describe User, type: :model do
  context 'a user record' do
    it 'should have many sessions' do
      user = FactoryBot.create(:user)
      expect(user.sessions).to eq([])
    end

    it 'should have many bookings' do
      user = FactoryBot.create(:user)
      expect(user.bookings).to eq([])
    end

    it 'should have many listings' do
      user = FactoryBot.create(:user)
      expect(user.listings).to eq([])
    end

    it 'should have an email address' do
      user = FactoryBot.create(:user)
      expect(user.email).not_to be_nil
    end
  end
end
