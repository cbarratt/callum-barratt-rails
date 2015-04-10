class WithingsConnector
  require 'withings'

  attr_reader :user

  def initialize
    Withings.consumer_secret = '54258bf34e2167c1f0834405bddf579c16c1b4bfc1931d8e6780c30f65934'
    Withings.consumer_key = 'c4e7107931fe12e408de4760f87ff2195dfe30224983f553f2e47c1c182f'
    oauth_token = 'd8fb891450e777302528d3c6fbec27ffbfc554b91859dd8856bd76183f673'
    oauth_token_secret = 'c567008e65958b365e671e706cc3584f4149e8596f67811bdeb418c9b439e8'
    user_id = '1732917'
    @user = Withings::User.authenticate(user_id, oauth_token, oauth_token_secret)
  end
end
