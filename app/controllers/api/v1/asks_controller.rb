class Api::V1::AsksController < Api::V1::ApplicationController
  def rand
    limit = asks_params[:limit].to_i
    if limit == 0 || limit > 5
      raise Error::ApiError.new('Request parameter invalid', 400)
    end

    render json: Ask.rand(limit), root: 'asks'
  end

  private

  def asks_params
    params.permit(
      :limit
    )
  end
end
