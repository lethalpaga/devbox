describe user('kitchen_user') do
  it { is_expected.to exist }
  it { is_expected.to have_login_shell '/usr/bin/fish' }
end

describe file('/etc/init/rc-sysinit.conf') do
  its(:content) { is_expected.to match /RUNLEVEL=5/}
end

describe file('/home/kitchen_user/.Xresources') do
  it { is_expected.to exist }
end

describe command('awesome --version') do
  its(:exit_status) { is_expected.to eq 0 }
end

describe command('x-terminal-emulator --version') do
  its(:exit_status) { is_expected.to eq 1 }
  its(:stderr) { is_expected.to match /rxvt-unicode/ }
end

describe command('vim --version') do
  its(:exit_status) { is_expected.to eq 0 }
end

describe command('gvim --version') do
  its(:exit_status) { is_expected.to eq 0 }
end

describe command('git --version') do
  its(:exit_status) { is_expected.to eq 0 }
end

describe command('firefox --version') do
  its(:exit_status) { is_expected.to eq 0 }
end