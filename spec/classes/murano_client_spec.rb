require 'spec_helper'

describe 'murano::client' do

  let :facts do
    { :osfamily => 'Debian' }
  end

  shared_examples_for 'murano-client' do
    it { is_expected.to contain_class('murano::client') }
    it { is_expected.to contain_package('python-muranoclient').with(
      :name => 'python-muranoclient',
    )}
  end

  it_configures 'murano-client'
end