class Api::HogeController < ApplicationController

  # /hoge.json
  def index
    render json: User.first
  end
end
