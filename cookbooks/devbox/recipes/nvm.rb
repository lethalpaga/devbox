username, groupname, home_dir = user_vars

# install nvm
#include_recipe 'nvm'

# install node.js v0.10.5
nvm_install 'v4.4.3' do
  from_source false
  alias_as_default true
  action :create

  user_install true
  user username
  group groupname
end

# Install fish bindings
template "#{home_dir}/.config/fish/functions/nvm.fish" do
  source 'fish/functions/nvm.fish'
end
