class Api::V1::IdeaController < ApplicationController
  include GroupReferencer

  before_action :require_login, only: [:index, :create, :edit]
  before_action :set_group, only: [:index, :edit]
  before_action :referenceable?, only: [:index, :create, :edit]
  before_action :set_ideas, only: [:index]

  def index
    render json: @ideas
  end

  def create
    # @ideas.create!(
    #   post_user
    # )
  end

  def delete
  end

  ##### private methods #####
  private

  def group_id
    params[:group_id]
  end

  def set_ideas
    @ideas = @group.topics.find(params[:topic_id]).ideas
  end

  # def idea_params
  #   params.permit(
  #
  #   )
  # end
end
