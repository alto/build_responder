require 'spec_helper'
require_relative '../../../../apps/web/controllers/builds/check'

describe Web::Controllers::Builds::Check do
  let(:action) { Web::Controllers::Builds::Check.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
