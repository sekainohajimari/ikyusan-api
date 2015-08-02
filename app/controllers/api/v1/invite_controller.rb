class Api::V1::InviteController < Api::V1::ApplicationController
  include GroupReferencer

  before_action :set_group, only: [:doing, :agree, :denial]
  before_action :referenceable?, only: [:doing, :agree]
  before_action :set_inviting_invite, only: [:agree, :denial]

  def doing
    invite_user_profile = Profile.find_by(display_id: invite_params[:inviter_id])
    if invite_user_profile.blank?
      raise Error::ApiError.new("#{invite_params[:inviter_id]}は存在しないIDです", 400)
    end

    invite = @group.invites.create!(
      host_user: current_user,
      invite_user: invite_user_profile.user
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
    set_group unless @group

    @inviting_invite = @group.invites.inviting.find_by(invite_user: current_user)
  end
end
