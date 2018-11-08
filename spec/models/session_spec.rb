require 'rails_helper'

RSpec.describe Session, type: :model do
  context 'a session record' do
    it 'should have many sessions' do
      user = FactoryBot.create(:user)
      session = FactoryBot.create(:session, user: user)
      expect(session.user).to eq(user)
    end
  end
end
