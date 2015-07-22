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
        expect(body).to be_json_eql(false.to_json).at_path('profile/in_use_default_icon')
      end
    end
  end

  describe "PATCH /api/v1/profile" do
    context_user_authenticated do
      context 'when params display_name only' do
        let!(:params) { { display_name: 'ほげ' } }

        it 'success' do
          is_expected.to eq 200
          body = response.body

          expect(body).to have_json_path('profile')
          expect(body).to be_json_eql(profile.display_id.to_json).at_path('profile/display_id')
          expect(body).to be_json_eql(params[:display_name].to_json).at_path('profile/display_name')
          expect(body).to be_json_eql(profile.icon_url.to_json).at_path('profile/icon_url')
          expect(body).to be_json_eql(false.to_json).at_path('profile/in_use_default_icon')
        end
      end

      context 'when params display_name and display_id' do
        let!(:params) { { display_name: 'ほげ', display_id: 'hoge' } }

        it 'success' do
          is_expected.to eq 200
          body = response.body

          expect(body).to have_json_path('profile')
          expect(body).to be_json_eql(params[:display_id].to_json).at_path('profile/display_id')
          expect(body).to be_json_eql(params[:display_name].to_json).at_path('profile/display_name')
          expect(body).to be_json_eql(profile.icon_url.to_json).at_path('profile/icon_url')
          expect(body).to be_json_eql(false.to_json).at_path('profile/in_use_default_icon')
        end
      end
    end
  end

  describe "GET /api/v1/profile/enabled" do
    context_user_authenticated do
      context 'not exists display_id' do
        let!(:params) { { display_id: "#{profile.display_id}-dummy" } }

        it 'success' do
          is_expected.to eq 200
          body = response.body

          expect(body).to be_json_eql(true.to_json).at_path('enabled')
        end
      end

      context 'not exists display_id' do
        let!(:params) { { display_id: "#{profile.display_id}" } }

        it 'success' do
          is_expected.to eq 200
          body = response.body

          expect(body).to be_json_eql(false.to_json).at_path('enabled')
        end
      end
    end
  end

  describe "PUT /api/v1/profile/default_icon" do
    context_user_authenticated do
      it 'success' do
        is_expected.to eq 200
        body = response.body

        expect(body).to have_json_path('profile')
        expect(body).to be_json_eql(true.to_json).at_path('profile/in_use_default_icon')
      end
    end
  end
end
