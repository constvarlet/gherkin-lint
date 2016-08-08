require 'spec_helper'
require 'gherkin/lint/rules/feature_description'

describe Gherkin::Lint::Rules::FeatureDescription do
  it 'creates warning objects' do
    warnings = []
    gherkin_document = {feature: {location: {line: 2}}}
    subject.lint(gherkin_document, 'foo.feature', warnings)
    expect(warnings).to eq([{
      path: 'foo.feature',
      location: {line: 3},
      rule: 'feature_description',
      description: "A Feature should have a description"
    }])
  end
end
