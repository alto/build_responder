require 'spec_helper'
require_relative '../../../../apps/web/views/builds/bro'

describe Web::Views::Builds::Bro do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/builds/bro.html.erb') }
  let(:view)      { Web::Views::Builds::Bro.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
