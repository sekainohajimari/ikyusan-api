class Api::V1::GroupController < Api::V1::ApplicationController
  include GroupReferencer

  before_action :set_group, only: [:update, :destroy, :escape]
  before_action :referenceable?, only: [:update, :detail]

  def index
    groups =
      Group.includes(:group_members)
      .where(group_members: { user_id: current_user.id }).merge(GroupMember.active)

    render json: groups, root: 'groups', additional: true
  end

  def create
    @group = Group.regist(name: group_params[:name], user: current_user, color_code_id: group_params[:color_code_id])

    render json: @group, status: :created
  end

  def update
    @group.update_with_color!(
      params: {
        name: group_params[:name]
      },
      color_code_id: group_params[:color_code_id]
    )

    render json: @group
  end

  def detail
    group =
      Group.includes(invites: [invite_user: :profile], group_members: [user: :profile]).find_by(id: group_id)

    render json: group, serializer: GroupDetailSerializer
  end

  def destroy
    unless @group.owner?(current_user)
      raise Error::ApiError.new('グループを削除できるのはオーナーのみです', 400)
    end
    @group.destroy!

    head :no_content
  end

  def escape
    member = @group.member(current_user)
    if member.blank?
      raise Error::ApiError.new("#{current_user.display_name}さんは脱退対象ではありません", 400)
    end
    member.withdrawal!

    head :no_content
  end

  ##### private methods #####
  private
  def group_params
    params.permit(
      :name,
      :color_code_id
    )
  end

  def group_id
    params[:id]
  end
end
