class Api::V1::InviteController < Api::V1::ApplicationController
  include GroupReferencer

  before_action :set_group, only: [:doing, :agree, :denial]
  before_action :referenceable?, only: [:doing, :agree]
  before_action :set_inviting_invite, only: [:agree, :denial]

  def doing
    invite = @group.invites.create!(
      host_user: current_user,
      inviter_id: invite_params[:inviter_id]
    )

    render json: invite, root: 'invite', status: :created
  end

  def agree
    @inviting_invite.agree!

    head :no_content
  end

  def denial
    @inviting_invite.denial!

    head :no_content
  end

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

  def set_inviting_invite
    @inviting_invite = @group.invites.inviting.find_by(invite_user: current_user)
  end
end
