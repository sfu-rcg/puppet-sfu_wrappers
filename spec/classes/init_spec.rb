require 'spec_helper'
describe 'sfu_wrapper' do

  context 'with defaults for all parameters' do
    it { should contain_class('sfu_wrapper') }
  end
end
