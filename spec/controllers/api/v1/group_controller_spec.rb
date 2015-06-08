require 'rails_helper'

describe 'Group resource', type: :request do
  describe "GET /api/v1/g" do
    context "with Authorization header" do
      before do
        headers["Authorization"] = "Token token=\"12345\""
      end

      it { should == 200 }
    end
  end
end
