class Api::V1::LikeController < Api::V1::ApplicationController
  include GroupReferencer

  before_action :set_group, only: [:index, :doing]
  before_action :referenceable?, only: [:index, :doing]
  before_action :set_idea, only: [:index, :doing]

  def index
    render json: @idea.likes, root: 'likes'
  end

  def doing
    like = Like.create_or_update_by!(
      idea_id: idea_params[:idea_id],
      like_user: current_user,
      num: idea_params[:num].to_i
    )

    render json: like, root: 'like'
  end

  ##### private methods #####
  private
  def group_id
    params[:group_id]
  end

  def set_idea
    @idea = @group.ideas.find(params[:idea_id])
  end

  def idea_params
    params.permit(
      :idea_id,
      :num
    )
  end
end
