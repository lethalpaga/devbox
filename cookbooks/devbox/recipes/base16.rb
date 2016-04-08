# gnome-terminal
username, groupname, home_dir = user_vars

repo = 'https://github.com/chriskempson/base16-xresources'
destination = "#{home_dir}/dev/base16/xresources"

directory destination do
  user username
  group groupname
  recursive true
end

xresources_dir = "#{home_dir}/.Xresources.d"
directory xresources_dir do
  user username
  group groupname
end

git destination do
  repository repo
end

# Main Xresources
template "#{home_dir}/.Xresources" do
  user username
  group groupname
  source 'Xresources/.Xresources'
end

# Additional Xresources
remote_file "#{xresources_dir}/color_theme" do
  source "file://#{destination}/#{node['devbox']['base16']['xresources']}"
  owner username
  group groupname
  mode 0755
end

template "#{xresources_dir}/rxvt" do
  source 'Xresources/rxvt'
  user username
  group groupname
end
