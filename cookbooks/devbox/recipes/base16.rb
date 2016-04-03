# gnome-terminal
username, groupname, home_dir = user_vars

repo = 'https://github.com/chriskempson/base16-xresources'
destination = "#{home_dir}/dev/base16/xresources"

directory destination do
  user username
  group groupname
  recursive true
end

git destination do
  repository repo
end

remote_file "#{home_dir}/.Xresources" do 
  source "file://#{destination}/#{node['devbox']['base16']['xresources']}"
  owner 'root'
  group 'root'
  mode 0755
end