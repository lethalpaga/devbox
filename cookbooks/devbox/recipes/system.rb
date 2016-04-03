package 'fish'

username = node['devbox']['user']
groupname = node['devbox']['group']
home_dir = "/home/#{username}"

group groupname

user username do
  shell '/usr/bin/fish'
  group groupname
  home home_dir
  manage_home true
end

directory "#{home_dir}/.config"do
  user username
  group groupname
end

package 'firefox'
package 'gnome-terminal'