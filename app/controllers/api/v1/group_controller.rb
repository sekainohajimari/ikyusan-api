class Api::V1::GroupController < ApplicationController
  before_action :require_login, only: [:index, :create, :edit]

  def index
    groups = GroupMember.includes(:group).where(user_id: current_user.id)

    render json: groups
  end

  def create
    group = Group.create!(
      name: group_params[:name],
      membar_max_num: 10,
      topic_max_num: 100
    )

    group.group_members.create(
      user: current_user,
      role: GroupMember.roles[:owner],
      status: GroupMember.statuses[:join]
    )

    render json: group
  end

  def edit
  end

  private

  def group_params
    params.permit(
      :name
    )
  end
end
