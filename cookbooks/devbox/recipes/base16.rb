# gnome-terminal
username, groupname, home_dir = user_vars

repo = 'https://github.com/chriskempson/base16-gnome-terminal'
destination = "#{home_dir}/dev/base16/gnome-terminal"

directory destination do
  user username
  group groupname
  recursive true
end

git destination do
  repository repo
end

execute 'base16-gnome-terminal' do
  command "#{destination}/base16-default.dark.sh"
end

execute 'base16-gnome-terminal-set-default-profile' do
  command "gconftool --set --type 'string' '/apps/gnome-terminal/global/default_profile' -- 'base-16-default-dark'"
  user username
end