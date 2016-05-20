require 'spec_helper'
require_relative '../../../../apps/web/controllers/builds/bro'

describe Web::Controllers::Builds::Bro do
  let(:action) { Web::Controllers::Builds::Bro.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
