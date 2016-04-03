require 'spec_helper'

describe file('/home/kitchen_user/.config/awesome/rc.lua') do
  it { is_expected.to exist }
end

describe command('awesome --check') do
  its(:exit_status) { is_expected.to eq 0 }
end