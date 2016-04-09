include_recipe 'golang::default'

username, groupname, home_dir = user_vars

golang_dir = File.join home_dir, 'dev', 'golang'

link '/usr/local/bin/go' do
  to '/usr/local/go/bin/go'
end

# Create worksapce
directory golang_dir do
  user username
  group groupname
end

directory "#{golang_dir}/bin" do
  user username
  group groupname
end

directory "#{golang_dir}/src" do
  user username
  group groupname
end

directory "#{golang_dir}/pkg" do
  user username
  group groupname
end

# Set the environment to use the workspace
file '/etc/profile.d/golang.sh' do
  action :delete
end

template "#{home_dir}/.config/fish/golang.fish" do
  source 'golang/golang.fish'
  user username
  group groupname
end

# Install the vim plugin
vim_config_git 'https://github.com/fatih/vim-go'