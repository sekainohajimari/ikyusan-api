require 'rails_helper'

describe 'Group resource', type: :request do
  describe "GET /api/v1/g" do
    context_user_authenticated do
      it { should == 200 }
    end
  end
end
