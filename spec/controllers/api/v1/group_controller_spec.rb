require 'rails_helper'

describe 'Group resource', type: :request do
  describe "GET /api/v1/g" do
    let!(:groups) { create_list(:group, 10) }
    let!(:group_members) do
      groups.each do |group|
        create(:group_member, :owner, group: group, user: current_user)
      end
    end

    before do
      group_members
    end

    context_user_authenticated do
      it 'success' do
        is_expected.to eq 200
        body = response.body

        expect(body).to have_json_path('groups')
        expect(body).to have_json_size(10).at_path("groups")
        expect(body).to have_json_path('groups/0/id')
        expect(body).to have_json_path('groups/0/name')
        expect(body).to have_json_path('groups/0/membar_max_num')
        expect(body).to have_json_path('groups/0/topic_max_num')
      end
    end
  end
end
