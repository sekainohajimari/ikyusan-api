require 'rails_helper'

describe 'Group resource', type: :request, autodoc: true do
  describe "GET /api/v1/asks/rand" do
    let!(:asks) { create_list(:ask, 10) }

    before do
      asks
    end

    context_user_authenticated do
      context 'when success' do
        let!(:params) { { limit: 5 } }
        it 'return 200' do
          is_expected.to eq 200
          body = response.body

          expect(body).to have_json_path('asks')
          expect(body).to have_json_size(5).at_path('asks')
          expect(body).to have_json_path('asks/0/id')
          expect(body).to have_json_path('asks/0/category')
          expect(body).to have_json_path('asks/0/content')
        end
      end

      context 'when fail' do
        it 'return 400' do
          is_expected.to eq 400
        end
      end
    end
  end
end
