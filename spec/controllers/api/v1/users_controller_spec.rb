require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :controller do
  render_views

  context 'POST #create' do
    it 'renders create jbuilder and 201 status code' do
      user = FactoryBot.create(:user)

      get :create, params: { user:
        {
          email: user.email
        }
      }

      expected_response = {
        success: true
      }

      expect(response.code).to eq('201')
      expect(response.body).to eq(expected_response.to_json)
    end
  end
end
