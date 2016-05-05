task 'packer' do
  sh 'packer build packer/devbox.json'
end

task 'chef' do
  env = ENV['DEVBOX_ENV']
  fail 'Please set DEVBOX_ENV' unless env
  sh 'berks vendor  _build/cookbooks'
  sh "sudo -E chef-solo -c chef/solo.rb -j chef/node.json -E #{env}"
end
