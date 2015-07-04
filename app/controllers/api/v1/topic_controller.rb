class Api::V1::TopicController < Api::V1::ApplicationController
  include GroupReferencer

  before_action :set_group, only: [:index, :create, :edit]
  before_action :referenceable?, only: [:index, :create, :edit]
  before_action :set_topic, only: [:edit]

  def index
    render json: @group.topics, root: 'topics'
  end

  def create
    topic = @group.topics.create!(
      build_user: current_user,
      name: topic_params[:name],
      anonymity: topic_params[:anonymity].present? ? topic_params[:anonymity] : false
    )
    render json: topic, root: 'topic', status: :created
  end

  def edit
    @topic.update!(
      name: topic_params[:name]
    )

    render json: @topic, root: 'topic'
  end

  ##### private methods #####
  private
  def group_id
    topic_params[:group_id]
  end

  def topic_params
    params.permit(
      :group_id,
      :name,
      :anonymity
    )
  end

  def set_topic
    @topic = @group.topics.find(params[:id])
  end
end
