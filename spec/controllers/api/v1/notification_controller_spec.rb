require 'rails_helper'

describe 'Notifications resource', type: :request, autodoc: true do

  describe "GET /api/v1/notifications" do
    let!(:notification_messages) { 10.times { create(:notification_message, user: current_user) }}

    before do
      notification_messages
    end

    context_user_authenticated do
      it 'success' do
        is_expected.to eq 200
        body = response.body

        expect(body).to have_json_path('notification_messages')
        expect(body).to have_json_size(10).at_path("notification_messages")
        expect(body).to have_json_path('notification_messages/0/id')
        expect(body).to have_json_path('notification_messages/0/open')
        expect(body).to have_json_path('notification_messages/0/message')
      end
    end
  end
end
