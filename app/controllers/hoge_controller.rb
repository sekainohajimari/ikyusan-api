class HogeController < ApplicationController
  def index
    render json: { id: 1, name: 'hoge' }
  end
end
