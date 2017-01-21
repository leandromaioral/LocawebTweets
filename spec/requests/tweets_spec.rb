require 'rails_helper'

RSpec.describe '/' do
  describe 'get /' do
    before { get '/' }
    subject { response }

    it { is_expected.to have_http_status :ok }
  end
end
