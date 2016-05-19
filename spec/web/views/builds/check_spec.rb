require 'spec_helper'
require_relative '../../../../apps/web/views/builds/check'

describe Web::Views::Builds::Check do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/builds/check.html.erb') }
  let(:view)      { Web::Views::Builds::Check.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
