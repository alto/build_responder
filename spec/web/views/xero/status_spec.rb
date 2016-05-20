require 'spec_helper'
require_relative '../../../../apps/web/views/xero/status'

describe Web::Views::Xero::Status do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/xero/status.html.erb') }
  let(:view)      { Web::Views::Xero::Status.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
