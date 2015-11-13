require 'rails_helper'

describe 'signin', type: :request, autodoc: true do
  describe "POST /api/v1/signin" do

    context 'when success' do
      let!(:params) do
        uuid = SecureRandom.uuid
        {
          uuid: uuid,
          hv:   Digest::MD5.hexdigest(uuid + Global.application.uuid_hash_salt)
        }
      end

      it 'return 200' do
        is_expected.to eq 200
        body = response.body

        expect(body).to have_json_path('token')
        expect(body).to have_json_path('profile')
        expect(body).to have_json_path('profile/display_id')
        expect(body).to have_json_path('profile/display_name')
        expect(body).to have_json_path('profile/icon_url')
        expect(body).to have_json_path('profile/in_use_default_icon')
      end
    end
  end
end
