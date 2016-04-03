package 'awesome'

username, groupname, home_dir = user_vars

config_path = "/home/#{username}/.config/awesome"

directory config_path do
  user username
  group groupname
  recursive true
end

# Main config file
template "#{config_path}/rc.lua" do
  source 'awesome/rc.lua'
  user username
  group groupname
end

# Theme
theme_path = "#{config_path}/themes/#{node['awesome']['theme']}/theme.lua"

directory File.dirname(theme_path) do
  user username
  group groupname
  recursive true
end
 
template theme_path do
  source 'awesome/theme.lua'
  user username
  group groupname
end

# Misc config
directory "#{config_path}/debian" do
  user username
  group groupname
end

template "#{config_path}/debian/menu.lua" do
  user username
  group groupname
  source 'awesome/debian/menu.lua'
end  
