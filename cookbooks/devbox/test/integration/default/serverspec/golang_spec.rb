describe command('go version') do
  its(:exit_status) { is_expected.to eq 0 }
  its(:stdout) { is_expected.to match /go1.5/ }
end