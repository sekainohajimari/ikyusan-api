module RequestMacros
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def context_user_authenticated(*user_traits, &block)
      context('with authentication') do
        let(:current_user) { create(:user, :twitter) }
        let(:profile) { create(:profile, user: current_user) }
        let(:access_token) { create(:access_token, :ios, user: current_user) }

        before do
          headers["Authorization"] = "Token token=\"#{access_token.token}\""
          profile
        end
      end.class_eval &block
    end
  end
end
