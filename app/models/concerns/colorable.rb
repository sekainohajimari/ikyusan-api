module Colorable
  extend ActiveSupport::Concern

  included do
    has_one :color, as: :colorable
  end
end
