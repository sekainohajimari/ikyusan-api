class Api::V1::IdeaController < Api::V1::ApplicationController
  include GroupReferencer

  before_action :set_group, only: [:index, :create, :destroy]
  before_action :referenceable?, only: [:index, :create, :destroy]
  before_action :set_ideas, only: [:index, :create, :destroy]

  def index
    render json: @ideas, root: 'ideas'
  end

  def create
    idea = @ideas.create!(
      post_user: current_user,
      content: idea_params[:content]
    )

    render json: idea, root: 'idea'
  end

  def destroy
    @ideas.where(post_user: current_user).find(params[:id]).destroy!

    render json: @ideas, root: 'ideas'
  end

  ##### private methods #####
  private
  def group_id
    params[:group_id]
  end

  def set_ideas
    @ideas = @group.topics.find(params[:topic_id]).ideas
  end

  def idea_params
    params.permit(
      :content
    )
  end
end
