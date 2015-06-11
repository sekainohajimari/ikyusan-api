require 'rails_helper'

describe 'Group resource', type: :request, autodoc: true do
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

  describe "POST /api/v1/g", type: :request, autodoc: true do
    let(:params) do
      { name: 'hoge' }
    end

    context_user_authenticated do
      it 'success' do
        is_expected.to eq 200
        body = response.body

        expect(body).to have_json_path('id')
        expect(body).to have_json_path('name')
        expect(body).to have_json_path('membar_max_num')
        expect(body).to have_json_path('topic_max_num')
        expect(body).to be_json_eql(params[:name].to_json).at_path('name')
      end
    end
  end

  describe "GET /api/v1/g/:id/edit", type: :request, autodoc: true do
    let(:group) { create(:group) }
    let(:group_member) { create(:group_member, :owner, group: group, user: current_user) }
    let(:id) { group.id }
    let(:params) do
      { name: 'foo' }
    end

    before do
      group_member
    end

    context_user_authenticated do
      it 'success' do
        is_expected.to eq 200
        body = response.body

        expect(body).to have_json_path('id')
        expect(body).to have_json_path('name')
        expect(body).to have_json_path('membar_max_num')
        expect(body).to have_json_path('topic_max_num')
        expect(body).to be_json_eql(group.id.to_json).at_path('id')
        expect(body).to be_json_eql(params[:name].to_json).at_path('name')
        expect(body).to be_json_eql(group.membar_max_num.to_json).at_path('membar_max_num')
        expect(body).to be_json_eql(group.topic_max_num.to_json).at_path('topic_max_num')
      end
    end
  end
end
