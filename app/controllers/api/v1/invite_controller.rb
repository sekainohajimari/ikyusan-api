class Api::V1::InviteController < Api::V1::ApplicationController
  include GroupReferencer

  before_action :set_group, only: [:doing, :agree]
  before_action :referenceable?, only: [:doing, :agree]

  def doing
    invite = Invite.new(
      host_user: current_user,
      inviter_id: invite_params[:inviter_id]
    )
    @group.invites << invite
    @group.save!

    render json: { success: true }
  end

  def agree
    invite = @group.invites.inviting.find_by(host_user: current_user)
    invite.agree
    invite.save!

    render json: { success: true }
  end

  # TODO: 身内なのでいらないかも
  # def denial
  # end

  ##### private methods #####
  private
  def group_id
    params[:group_id]
  end

  def invite_params
    params.permit(
      :inviter_id
    )
  end
end
