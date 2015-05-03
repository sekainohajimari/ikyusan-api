class Api::V1::GroupController < ApplicationController
  def index
    groups = GroupMember.includes(:group).where(user_id: current_user.id)

    render json: groups
  end

  def create
  end

  def edit
  end
end
