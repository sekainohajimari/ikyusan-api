require 'rails_helper'

describe 'Profile resource', type: :request, autodoc: true do
  describe "GET /api/v1/profile" do
    context_user_authenticated do
      it 'success' do
        is_expected.to eq 200
        body = response.body

        expect(body).to have_json_path('profile')
        expect(body).to be_json_eql(profile.display_id.to_json).at_path('profile/display_id')
        expect(body).to be_json_eql(profile.display_name.to_json).at_path('profile/display_name')
        expect(body).to be_json_eql(profile.icon_url.to_json).at_path('profile/icon_url')
      end
    end
  end
end
