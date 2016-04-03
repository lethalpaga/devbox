describe command('rvm use 2.2.3') do
  let(:sudo_options) { '-u kitchen_user -i' }
  its(:exit_status) { is_expected.to eq 0 }
end