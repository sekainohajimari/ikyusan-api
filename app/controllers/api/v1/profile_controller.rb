class Api::V1::ProfileController < ApplicationController
  def index
    render json: current_user.profile
  end

  def edit
  end
end
