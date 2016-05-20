require 'spec_helper'
require_relative '../../../../apps/web/controllers/xero/status'

describe Web::Controllers::Xero::Status do
  let(:action) { Web::Controllers::Xero::Status.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
