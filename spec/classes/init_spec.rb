require 'spec_helper'
describe 'installatron' do

  context 'with defaults for all parameters' do
    it { should contain_class('installatron') }
  end
end
