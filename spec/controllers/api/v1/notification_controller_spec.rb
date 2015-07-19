require 'rails_helper'

describe 'Notifications resource', type: :request, autodoc: true do

  describe "GET /api/v1/notifications" do
    let!(:notifications) {
      5.times { create(:notification, :like, notifiy_user: current_user) }
      5.times { create(:notification, :invite, notifiy_user: current_user) }
    }

    before do
      notifications
    end

    context_user_authenticated do
      it 'success' do
        is_expected.to eq 200
        body = response.body

        expect(body).to have_json_path('notifications')
        expect(body).to have_json_size(10).at_path("notifications")
        expect(body).to have_json_path('notifications/0/id')
        expect(body).to have_json_path('notifications/0/title')
        expect(body).to have_json_path('notifications/0/body')
        expect(body).to have_json_path('notifications/0/opened')
      end
    end
  end
end
