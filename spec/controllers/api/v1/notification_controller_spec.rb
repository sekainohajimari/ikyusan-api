require 'rails_helper'

describe 'Notifications resource', type: :request, autodoc: true do

  describe "GET /api/v1/notifications" do
    let!(:notifications) do
      [].tap do |notifications|
        25.times { notifications << create(:notification, :like, notifiy_user: current_user) }
        25.times { notifications << create(:notification, :invite, notifiy_user: current_user) }
      end
    end

    before do
      notifications
    end

    context_user_authenticated do
      it 'success for page unspecified' do
        is_expected.to eq 200
        body = response.body

        expect(body).to have_json_path('notifications')
        expect(body).to have_json_size(Kaminari.config.default_per_page).at_path("notifications")
        Kaminari.config.default_per_page.times do |i|
          notification = notifications[i]
          expect(body).to be_json_eql(notification.id.to_json).at_path("notifications/#{i}/id")
          expect(body).to be_json_eql(notification.notifiable_type.to_json).at_path("notifications/#{i}/notifiable_type")
          expect(body).to be_json_eql(notification.title.to_json).at_path("notifications/#{i}/title")
          expect(body).to be_json_eql(notification.body.to_json).at_path("notifications/#{i}/body")
          expect(body).to be_json_eql(notification.opened.to_json).at_path("notifications/#{i}/opened")
        end

        expect(body).to have_json_path('meta/pagination')
        expect(body).to be_json_eql(1.to_json).at_path('meta/pagination/current_page')
        expect(body).to be_json_eql(2.to_json).at_path('meta/pagination/next_page')
        expect(body).to be_json_eql(nil.to_json).at_path('meta/pagination/prev_page')
        expect(body).to be_json_eql((notifications.length / Kaminari.config.default_per_page).floor).at_path('meta/pagination/total_pages')
        expect(body).to be_json_eql(Notification.where(notifiy_user: current_user).count.to_json).at_path('meta/pagination/total_count')
      end
    end

    context_user_authenticated do
      let!(:params) { { page: 2 } }

      it 'success for page specified' do
        is_expected.to eq 200
        body = response.body

        expect(body).to have_json_path('notifications')
        expect(body).to have_json_size(Kaminari.config.default_per_page).at_path("notifications")
        Kaminari.config.default_per_page.times do |i|
          notification = notifications[i + Kaminari.config.default_per_page]
          expect(body).to be_json_eql(notification.id.to_json).at_path("notifications/#{i}/id")
          expect(body).to be_json_eql(notification.notifiable_type.to_json).at_path("notifications/#{i}/notifiable_type")
          expect(body).to be_json_eql(notification.title.to_json).at_path("notifications/#{i}/title")
          expect(body).to be_json_eql(notification.body.to_json).at_path("notifications/#{i}/body")
          expect(body).to be_json_eql(notification.opened.to_json).at_path("notifications/#{i}/opened")
        end

        expect(body).to have_json_path('meta/pagination')
        expect(body).to be_json_eql(2.to_json).at_path('meta/pagination/current_page')
        expect(body).to be_json_eql(nil.to_json).at_path('meta/pagination/next_page')
        expect(body).to be_json_eql(1.to_json).at_path('meta/pagination/prev_page')
        expect(body).to be_json_eql((notifications.length / Kaminari.config.default_per_page).floor).at_path('meta/pagination/total_pages')
        expect(body).to be_json_eql(Notification.where(notifiy_user: current_user).count.to_json).at_path('meta/pagination/total_count')
      end
    end
  end
end
