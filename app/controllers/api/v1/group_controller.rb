class Api::V1::GroupController < Api::V1::ApplicationController
  include GroupReferencer

  before_action :set_group, only: [:edit]
  before_action :referenceable?, only: [:edit, :detail]

  def index
    groups = Group.includes(:group_members).where(group_members: { user_id: current_user.id })

    render json: groups, root: 'groups', additional: true
  end

  def create
    @group = Group.regist(name: group_params[:name], user: current_user, color_id: group_params[:color_id])

    render json: @group, status: :created
  end

  def edit
    @group.update!(
      name: group_params[:name],
      color_id: group_params[:color_id]
    )

    render json: @group
  end

  def detail
    group =
      Group.includes(invites: [invite_user: :profile], group_members: [user: :profile]).find_by(id: group_id)

    render json: group, serializer: GroupDetailSerializer
  end

  ##### private methods #####
  private
  def group_params
    params.permit(
      :name,
      :color_id
    )
  end

  def group_id
    params[:id]
  end
end
