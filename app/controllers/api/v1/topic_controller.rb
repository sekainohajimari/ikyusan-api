class Api::V1::TopicController < ApplicationController
  include GroupReferencer

  before_action :require_login, only: [:index, :create, :edit]
  before_action :set_group, only: [:index, :edit]
  before_action :referenceable?, only: [:index, :create, :edit]

  def index
    topics = @group.topics

    render json: topics
  end

  def create
  end

  def edit
  end

  ##### private methods #####
  private

  def group_id
    params[:group_id]
  end
end
