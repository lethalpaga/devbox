username, groupname, home_dir = user_vars

package 'fish'

execute 'install_omf' do
  command 'curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish'
  user username
end

omf_dir = "#{user_home}/.config/omf" 
directory omf_dir do
  user username
  group groupname
end

template "#{omf_dir}/bundle" do
  source "fish/omf/bundle"
  user username
  group groupname
end

template "#{omf_dir}/theme" do
  source "fish/omf/theme"
  user username
  group groupname
end


