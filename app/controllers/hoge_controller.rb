class HogeController < ApplicationController

  # /hoge.json
  def index
    @hoge = OpenStruct.new(id: 1, name: 'hoge')
    p @hoge
  end
end
