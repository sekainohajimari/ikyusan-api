require 'rails_helper'

describe Api::V1::TwitterController, type: :request, autodoc: true do
  describe "POST /api/v1/twitter/tweet" do
    let!(:twitter_client) { double('twitter_client') }

    before do
      expect(twitter_client).to receive(:update).once
      allow_any_instance_of(Api::V1::TwitterController).to receive(:client).and_return(twitter_client)
    end

    context_user_authenticated do
      let(:params) { { message: 'hogehoge' } }

      it 'return 204' do
        is_expected.to eq 204
      end
    end
  end
end
