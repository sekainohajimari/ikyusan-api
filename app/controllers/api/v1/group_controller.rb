class Api::V1::GroupController < ApplicationController
  before_action :require_login, only: [:index, :create, :edit]
  before_action :set_group, only: [:edit]
  before_action :editable?, only: [:edit]

  def index
    groups = GroupMember.includes(:group).where(user_id: current_user.id)

    render json: groups
  end

  def create
    ActiveRecord::Base.transaction do
      @group = Group.create!(
        name: group_params[:name]
      )

      @group.group_members.create!(
        user: current_user,
        role: GroupMember.roles[:owner],
        status: GroupMember.statuses[:join]
      )
    end

    render json: @group
  end

  def edit
    @group.update!(
      name: group_params[:name]
    )

    render json: @group
  end

  ##### private methods #####
  private

  def group_params
    params.permit(
      :name
    )
  end

  def set_group
    @group = Group.find(params[:id])
  end

  def editable?
    raise "No Editable" unless @group.editable?(user_id: current_user.id)
  end
end
